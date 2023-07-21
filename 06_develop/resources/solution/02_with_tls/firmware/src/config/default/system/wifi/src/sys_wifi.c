/*******************************************************************************
  Wi-Fi System Service Implementation

  File Name:
    sys_wifi.c

  Summary:
    Source code for the Wi-Fi system service implementation.

  Description:
    This file contains the source code for the Wi-Fi system service
    implementation.
 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (C) 2020-2021 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
//DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stdlib.h>
#include "definitions.h"
#include "wdrv_pic32mzw_client_api.h"
#include "tcpip_manager_control.h"
#include "system/wifi/sys_wifi.h"
#include "configuration.h"
#include "system/wifiprov/sys_wifiprov.h"


// *****************************************************************************
// *****************************************************************************
// Section: Type Definitions
// *****************************************************************************
// *****************************************************************************

typedef struct 
{
    /* The WiFi service current status */
    SYS_WIFI_STATUS wifiSrvcStatus;
    
    /* Wi-Fi Service handle */
    DRV_HANDLE wifiSrvcDrvHdl;
    
    /* Wi-Fi Service Auth Context */
    WDRV_PIC32MZW_AUTH_CONTEXT wifiSrvcAuthCtx;
    
    /* Wi-Fi Service BSS Context */
    WDRV_PIC32MZW_BSS_CONTEXT wifiSrvcBssCtx;

} SYS_WIFI_OBJ; /* Wi-Fi System Service Object */

/* Wi-Fi STA Mode, maximum auto connect retry */
#define MAX_AUTO_CONNECT_RETRY                5
typedef struct 
{
    /* Assoc Handle associated with the station */
    WDRV_PIC32MZW_ASSOC_HANDLE wifiSrvcAssocHandle;
    
    /* STA connection info update to App */
    bool wifiSrvcSTAConnUpdate;
    
    /* Station Info shared with the App */
    SYS_WIFI_STA_APP_INFO wifiSrvcStaAppInfo;
    
} SYS_WIFI_STA_CONNECTION_INFO;

// *****************************************************************************
// *****************************************************************************
// Section: Global Data
// *****************************************************************************
// *****************************************************************************

/* Wi-Fi Scan user SSID linked list */
static WDRV_PIC32MZW_SSID_LIST userSsidLinkedList[SYS_WIFI_SCAN_MAX_SSID_COUNT];

/* Local copy of user SSIDs */
static char g_scanSsidListString[(SYS_WIFI_SCAN_MAX_SSID_COUNT*WDRV_PIC32MZW_MAX_SSID_LEN)+SYS_WIFI_SCAN_MAX_SSID_COUNT];

/* Wi-Fi  Service SSID Scan Configuration Structure */
static    SYS_WIFI_SCAN_CONFIG  g_wifiSrvcScanConfig;

/* Storing Wi-Fi Service Callbacks */
static    SYS_WIFI_CALLBACK     g_wifiSrvcCallBack[SYS_WIFI_MAX_CBS];

/* Wi-Fi Service Object */
static    SYS_WIFI_OBJ          g_wifiSrvcObj = {SYS_WIFI_STATUS_NONE,0};

/* Wi-Fi Driver ASSOC Handle */
static WDRV_PIC32MZW_ASSOC_HANDLE g_wifiSrvcDrvAssocHdl = WDRV_PIC32MZW_ASSOC_HANDLE_INVALID;


#define SYS_WIFI_MAX_STA_SUPPORTED  WDRV_PIC32MZW_NUM_ASSOCS
static SYS_WIFI_STA_CONNECTION_INFO g_wifiSrvcStaConnInfo[SYS_WIFI_MAX_STA_SUPPORTED];


/* Wi-Fi DHCP handler */
static    TCPIP_DHCP_HANDLE     g_wifiSrvcDhcpHdl = NULL;

/* Wi-Fi STA Mode, Auto connect retry count */
static    uint32_t              g_wifiSrvcAutoConnectRetry = 0;


/* Wi-Fi  Service Configuration Structure */
static    SYS_WIFI_CONFIG       g_wifiSrvcConfig;

/* Wi-Fi Service cookie */
static    void *                g_wifiSrvcCookie ;

/* Wi-Fi Service init enable wait status */
static    bool                  g_wifiSrvcInit = false;

/* Cookie for Wi-Fi Provision */
static    char                  g_wifiSrvcProvCookieVal = 100;

/* Wi-Fi Provision Service Object */
static    SYS_MODULE_OBJ        g_wifiSrvcProvObj;

/* RegDomain set status */
bool      g_isRegDomainSetReq = false;

/* Semaphore for Critical Section */
static    OSAL_SEM_HANDLE_TYPE  g_wifiSrvcSemaphore;
// *****************************************************************************

// *****************************************************************************

static uint8_t SYS_WIFI_DisConnect(void);
static SYS_WIFI_RESULT SYS_WIFI_ConnectReq(void);
static SYS_WIFI_RESULT SYS_WIFI_SetScan(void);
static void SYS_WIFI_ScanHandler (DRV_HANDLE handle, uint8_t index, uint8_t ofTotal, WDRV_PIC32MZW_BSS_INFO *pBSSInfo);
static uint8_t SYS_WIFI_APDisconnectSTA(uint8_t *macAddr);

static void  SYS_WIFI_WIFIPROVCallBack(uint32_t event, void * data,void *cookie);


// *****************************************************************************
// *****************************************************************************
// Section: Local Functions
// *****************************************************************************
// *****************************************************************************

static void SYS_WIFI_InitWifiScanInfoDefault(void)
{
    SYS_WIFI_SCAN_CONFIG  scanConfig;
    memset(&scanConfig, 0, sizeof(scanConfig));
    
    scanConfig.channel          = SYS_WIFI_SCAN_CHANNEL;
    scanConfig.mode             = SYS_WIFI_SCAN_MODE;
    scanConfig.pSsidList        = SYS_WIFI_SCAN_SSID_LIST;
    scanConfig.delimChar        = SYS_WIFI_SCAN_SSID_DELIM_CHAR;
    scanConfig.chan24Mask       = SYS_WIFI_SCAN_CHANNEL24_MASK;
    scanConfig.numSlots         = SYS_WIFI_SCAN_NUM_SLOTS;
    scanConfig.activeSlotTime   = SYS_WIFI_SCAN_ACTIVE_SLOT_TIME;
    scanConfig.passiveSlotTime  = SYS_WIFI_SCAN_PASSIVE_SLOT_TIME;
    scanConfig.numProbes        = SYS_WIFI_SCAN_NUM_PROBES;
    scanConfig.matchMode        = SYS_WIFI_SCAN_MATCH_MODE;
    scanConfig.pNotifyCallback  = SYS_WIFI_ScanHandler;
    
    memcpy(&g_wifiSrvcScanConfig, &scanConfig, sizeof (g_wifiSrvcScanConfig));
}


static void SYS_WIFI_InitStaConnInfo(void)
{
    uint8_t idx = 0;

    for(idx = 0; idx < SYS_WIFI_MAX_STA_SUPPORTED; idx++)
    {
        g_wifiSrvcStaConnInfo[idx].wifiSrvcAssocHandle = WDRV_PIC32MZW_ASSOC_HANDLE_INVALID;
        g_wifiSrvcStaConnInfo[idx].wifiSrvcSTAConnUpdate = false;
        memset(&g_wifiSrvcStaConnInfo[idx].wifiSrvcStaAppInfo,0,sizeof(SYS_WIFI_STA_APP_INFO));
    }
}

static SYS_WIFI_STA_CONNECTION_INFO *SYS_WIFI_FindStaConnInfo(WDRV_PIC32MZW_ASSOC_HANDLE assocHandle)
{
    uint8_t idx = 0;
    for(idx = 0; idx < SYS_WIFI_MAX_STA_SUPPORTED; idx++)
    {
        if(g_wifiSrvcStaConnInfo[idx].wifiSrvcAssocHandle == assocHandle)
        {
            return &g_wifiSrvcStaConnInfo[idx];
        }
    }
    return NULL;
}

static SYS_WIFI_RESULT SYS_WIFI_RemoveStaConnInfo(WDRV_PIC32MZW_ASSOC_HANDLE assocHandle)
{
    uint8_t idx = 0;
    for(idx = 0; idx < SYS_WIFI_MAX_STA_SUPPORTED; idx++)
    {
        if(g_wifiSrvcStaConnInfo[idx].wifiSrvcAssocHandle == assocHandle)
        {
            g_wifiSrvcStaConnInfo[idx].wifiSrvcAssocHandle = WDRV_PIC32MZW_ASSOC_HANDLE_INVALID;
            return SYS_WIFI_SUCCESS;
        }
    }
    return SYS_WIFI_FAILURE;
}
static WDRV_PIC32MZW_ASSOC_HANDLE SYS_WIFI_StaConnAssocIdFromMAC(uint8_t *macAddr)
{
    uint8_t idx = 0;

    for(idx = 0; idx < SYS_WIFI_MAX_STA_SUPPORTED; idx++)
    {
        if(!memcmp(&g_wifiSrvcStaConnInfo[idx].wifiSrvcStaAppInfo.macAddr,macAddr,WDRV_PIC32MZW_MAC_ADDR_LEN))
        {
            return g_wifiSrvcStaConnInfo[idx].wifiSrvcAssocHandle;
        }
    }
    return WDRV_PIC32MZW_ASSOC_HANDLE_INVALID;
}
static uint8_t SYS_WIFI_StaConnIdx()
{
    uint8_t idx = 0;

    for(idx = 0; idx < SYS_WIFI_MAX_STA_SUPPORTED; idx++)
    {
        if(g_wifiSrvcStaConnInfo[idx].wifiSrvcSTAConnUpdate == true)
        {
            g_wifiSrvcStaConnInfo[idx].wifiSrvcSTAConnUpdate = false;
            return idx;
        }
    }
    return SYS_WIFI_OBJ_INVALID;
}

static inline void SYS_WIFI_CallBackFun
(
    uint32_t event, 
    void * data, void *cookie
) 
{
    uint8_t idx;
    
    for (idx = 0; idx < SYS_WIFI_MAX_CBS; idx++) 
    {
        if (g_wifiSrvcCallBack[idx]) 
        {  
            /* Call client register functions */
            (g_wifiSrvcCallBack[idx])(event, data, cookie);
        }
    }
}

static inline SYS_WIFI_RESULT SYS_WIFI_REGCB
(
    SYS_WIFI_CALLBACK callback
) 
{
    SYS_WIFI_RESULT ret = SYS_WIFI_FAILURE;
    uint8_t idx;
    
    for (idx = 0; idx < SYS_WIFI_MAX_CBS; idx++) 
    {
        if (!g_wifiSrvcCallBack[idx]) 
        {
            /* Copy the client function pointer */
            g_wifiSrvcCallBack[idx] = callback;
            ret = SYS_WIFI_SUCCESS;
            break;
        }
    }
    return ret;
}

 
static inline void SYS_WIFI_SetCookie
(
    void *cookie
) 
{
    g_wifiSrvcCookie = cookie;
}

static inline SYS_WIFI_MODE SYS_WIFI_GetMode(void)
{
    return g_wifiSrvcConfig.mode;
}

static inline bool SYS_WIFI_GetSaveConfig(void)
{
    return g_wifiSrvcConfig.saveConfig;
}

static inline uint8_t * SYS_WIFI_GetSSID(void)  
{
    if (SYS_WIFI_STA == SYS_WIFI_GetMode())
    {
        return g_wifiSrvcConfig.staConfig.ssid;
    }
    else
    {
        return g_wifiSrvcConfig.apConfig.ssid;
    }
}

static inline uint8_t SYS_WIFI_GetSSIDLen(void)  
{
    if (SYS_WIFI_STA == SYS_WIFI_GetMode())
    {
        return strlen((const char *)g_wifiSrvcConfig.staConfig.ssid);
    }
    else
    {
        return strlen((const char *)g_wifiSrvcConfig.apConfig.ssid);
    }
}

static inline uint8_t SYS_WIFI_GetChannel(void)
{
    if (SYS_WIFI_STA == SYS_WIFI_GetMode())
    {
        return g_wifiSrvcConfig.staConfig.channel;
    }
    else
    {
        return g_wifiSrvcConfig.apConfig.channel;
    }
}

static inline uint8_t SYS_WIFI_GetAuthType(void)
{
    if (SYS_WIFI_STA == SYS_WIFI_GetMode())
    {
        return g_wifiSrvcConfig.staConfig.authType;
    }
    else
    {
        return g_wifiSrvcConfig.apConfig.authType;
    }
}

static inline uint8_t *SYS_WIFI_GetPsk(void)
{
    if (SYS_WIFI_STA == SYS_WIFI_GetMode())
    {
        return g_wifiSrvcConfig.staConfig.psk;
    }
    else
    {
        return g_wifiSrvcConfig.apConfig.psk;
    }
}

static inline uint8_t SYS_WIFI_GetPskLen(void)
{
    if (SYS_WIFI_STA == SYS_WIFI_GetMode())
    {
        return strlen((const char *)g_wifiSrvcConfig.staConfig.psk);
    }
    else
    {
        return strlen((const char *)g_wifiSrvcConfig.apConfig.psk);
    }
}

static inline bool SYS_WIFI_GetSSIDVisibility(void)
{
    if (SYS_WIFI_AP == SYS_WIFI_GetMode())
    {
        return g_wifiSrvcConfig.apConfig.ssidVisibility;
    }
    else
    {
        return 0;
    }
}

static inline const char *SYS_WIFI_GetCountryCode(void)
{
    return (const char *) g_wifiSrvcConfig.countryCode;
}

static inline bool SYS_WIFI_GetAutoConnect(void)
{
    
    /* In AP mode, autoConnect is always enabled */
    if (SYS_WIFI_AP == SYS_WIFI_GetMode())
    {
        return true;
    } 
    else if (SYS_WIFI_STA == SYS_WIFI_GetMode())
    {
        return g_wifiSrvcConfig.staConfig.autoConnect;
    }
    else
    {
        return false;
    }

}

static inline void SYS_WIFI_SetTaskstatus
(
    SYS_WIFI_STATUS status
)
{
    g_wifiSrvcObj.wifiSrvcStatus = status;
}

static inline SYS_WIFI_STATUS SYS_WIFI_GetTaskstatus(void)
{
    return g_wifiSrvcObj.wifiSrvcStatus;
}

static inline void SYS_WIFI_PrintWifiConfig(void)
{
    SYS_CONSOLE_MESSAGE("Wi-Fi Configuration:\r\n");
    SYS_CONSOLE_PRINT("\r\n mode=%d (0-STA,1-AP) saveConfig=%d \r\n ", g_wifiSrvcConfig.mode, g_wifiSrvcConfig.saveConfig);
    if (g_wifiSrvcConfig.mode == SYS_WIFI_STA) 
    {
        SYS_CONSOLE_PRINT("\r\n STA Configuration :\r\n channel=%d \r\n autoConnect=%d \r\n ssid=%s \r\n passphase=%s \r\n authentication type=%d (1-Open,2-WEP,3-Mixed mode(WPA/WPA2),4-WPA2,5-Mixed mode(WPA2/WPA3),6-WPA3)\r\n", g_wifiSrvcConfig.staConfig.channel, g_wifiSrvcConfig.staConfig.autoConnect, g_wifiSrvcConfig.staConfig.ssid, g_wifiSrvcConfig.staConfig.psk, g_wifiSrvcConfig.staConfig.authType);
    }
    if (g_wifiSrvcConfig.mode == SYS_WIFI_AP)
    {
        SYS_CONSOLE_PRINT("\r\n AP Configuration :\r\n channel=%d \r\n ssidVisibility=%d \r\n ssid=%s \r\n passphase=%s \r\n authentication type=%d (1-Open,2-WEP,3-Mixed mode(WPA/WPA2),4-WPA2,5-Mixed mode(WPA2/WPA3),6-WPA3) \r\n", g_wifiSrvcConfig.apConfig.channel, g_wifiSrvcConfig.apConfig.ssidVisibility, g_wifiSrvcConfig.apConfig.ssid, g_wifiSrvcConfig.apConfig.psk, g_wifiSrvcConfig.apConfig.authType);
    }

}
static inline void SYS_WIFI_PrintScanConfig(void)
{
    SYS_CONSOLE_MESSAGE("\r\nScan Configuration:\r\n");
    SYS_CONSOLE_PRINT("\r\n mode=%d (0-Passive,1-Active) \r\n Channel=%d (0=All)", g_wifiSrvcScanConfig.mode, g_wifiSrvcScanConfig.channel);
    SYS_CONSOLE_PRINT("\r\n Input SSID List=\"%s\" \r\n List Delimiter='%c' \r\n Channel Mask=0x%x \r\n Slots=%d \r\n Active Slot Time=%d \r\n Passive Slot Time=%d \r\n "
            "Probes=%d \r\n Match Mode=%d (0-StopOnFirst,1-FindAll) \r\n\r\n", g_wifiSrvcScanConfig.pSsidList, g_wifiSrvcScanConfig.delimChar, 
            g_wifiSrvcScanConfig.chan24Mask, g_wifiSrvcScanConfig.numSlots, g_wifiSrvcScanConfig.activeSlotTime, g_wifiSrvcScanConfig.passiveSlotTime, 
            g_wifiSrvcScanConfig.numProbes, g_wifiSrvcScanConfig.matchMode);
}
static void SYS_WIFI_WaitForConnSTAIP(uintptr_t context)
{
    TCPIP_NET_HANDLE netHdl = TCPIP_STACK_NetHandleGet("PIC32MZW1");
    TCPIP_DHCPS_LEASE_HANDLE dhcpsLease = 0;
    TCPIP_DHCPS_LEASE_ENTRY dhcpsLeaseEntry;

    do
    {
        dhcpsLease = TCPIP_DHCPS_LeaseEntryGet(netHdl, &dhcpsLeaseEntry, dhcpsLease);
        if (0 != dhcpsLease)
        {
            SYS_WIFI_STA_CONNECTION_INFO *staConnInfo = (SYS_WIFI_STA_CONNECTION_INFO *)context;
            if(0 == memcmp(&dhcpsLeaseEntry.hwAdd, staConnInfo->wifiSrvcStaAppInfo.macAddr, WDRV_PIC32MZW_MAC_ADDR_LEN))
            {               
                SYS_CONSOLE_PRINT("\r\nConnected STA IP:%d.%d.%d.%d \r\n", dhcpsLeaseEntry.ipAddress.v[0], dhcpsLeaseEntry.ipAddress.v[1], dhcpsLeaseEntry.ipAddress.v[2], dhcpsLeaseEntry.ipAddress.v[3]);
                staConnInfo->wifiSrvcStaAppInfo.ipAddr.Val = dhcpsLeaseEntry.ipAddress.Val;
                staConnInfo->wifiSrvcSTAConnUpdate = true; 
                SYS_WIFI_SetTaskstatus(SYS_WIFI_STATUS_WAIT_FOR_STA_IP);
                return;
            }
        }
    } while(0 != dhcpsLease);

    SYS_TIME_CallbackRegisterMS(SYS_WIFI_WaitForConnSTAIP, context, 500, SYS_TIME_SINGLE);
}
static void SYS_WIFI_APConnCallBack
(
    DRV_HANDLE handle, 
    WDRV_PIC32MZW_ASSOC_HANDLE assocHandle, 
    WDRV_PIC32MZW_CONN_STATE currentState
) 
{
    
    WDRV_PIC32MZW_MAC_ADDR   wifiSrvcStaConnMac;
    switch (currentState)
    {
        case WDRV_PIC32MZW_CONN_STATE_CONNECTED:
        {
            /* When STA connected to PIC32MZW1 AP, 
               Wi-Fi driver updates Connected event */
            if (WDRV_PIC32MZW_STATUS_OK == WDRV_PIC32MZW_AssocPeerAddressGet(assocHandle, &wifiSrvcStaConnMac)) 
            {
                uint8_t idx = 0;
                SYS_CONSOLE_PRINT("\r\nConnected STA MAC Address=%x:%x:%x:%x:%x:%x", wifiSrvcStaConnMac.addr[0], wifiSrvcStaConnMac.addr[1], wifiSrvcStaConnMac.addr[2], wifiSrvcStaConnMac.addr[3], wifiSrvcStaConnMac.addr[4], wifiSrvcStaConnMac.addr[5]);

                /* Store the connected STA Info in the STA Conn Array */
                for(idx = 0; idx < SYS_WIFI_MAX_STA_SUPPORTED; idx++)
                {
                    if(g_wifiSrvcStaConnInfo[idx].wifiSrvcAssocHandle == WDRV_PIC32MZW_ASSOC_HANDLE_INVALID)
                    {
                        g_wifiSrvcStaConnInfo[idx].wifiSrvcAssocHandle = assocHandle;
                        memcpy(&g_wifiSrvcStaConnInfo[idx].wifiSrvcStaAppInfo.macAddr, wifiSrvcStaConnMac.addr, WDRV_PIC32MZW_MAC_ADDR_LEN);
                        SYS_TIME_CallbackRegisterMS(SYS_WIFI_WaitForConnSTAIP, (uintptr_t)&g_wifiSrvcStaConnInfo[idx], 500, SYS_TIME_SINGLE);
                        break;
                    }
                }
            }
            break;
        }

        case WDRV_PIC32MZW_CONN_STATE_DISCONNECTED: 
        {
            /* When STA Disconnect from PIC32MZW1 AP, 
               Wi-Fi driver updates disconnect event */
            SYS_WIFI_STA_CONNECTION_INFO *psStaConnInfo = NULL;
            /* Updating Wi-Fi service Associate handle on receiving 
               driver disconnection event */

            /* Find the Sta Conn Info Entry */
            psStaConnInfo = SYS_WIFI_FindStaConnInfo(assocHandle);
            if(psStaConnInfo != NULL)
            {
                /* Update the application on receiving Disconnect event */
                SYS_WIFI_CallBackFun(SYS_WIFI_DISCONNECT, psStaConnInfo->wifiSrvcStaAppInfo.macAddr, g_wifiSrvcCookie);

                /* Remove the Sta Conn Info Entry */
                SYS_WIFI_RemoveStaConnInfo(assocHandle);
            }
            break;
        }

        default:
        {
            break;
        }

    }

}

static void SYS_WIFI_STAConnCallBack
(
    DRV_HANDLE handle, 
    WDRV_PIC32MZW_ASSOC_HANDLE assocHandle,
    WDRV_PIC32MZW_CONN_STATE currentState
) 
{
    switch (currentState) 
    {
        case WDRV_PIC32MZW_CONN_STATE_CONNECTED:
        {
            /* When HOMEAP connect to PIC32MZW1 STA, Wi-Fi driver updated connected event */
            /* Updating Wi-Fi service associate handle on receiving driver 
               connection event */
            g_wifiSrvcDrvAssocHdl = assocHandle;
            g_wifiSrvcAutoConnectRetry = 0;
            break;
        }

        case WDRV_PIC32MZW_CONN_STATE_FAILED:
        {
            /* When user provided HOMEAP configuration is not matching with near 
               by available HOMEAPs,Wi-Fi driver updated event Fail. */
            SYS_CONSOLE_PRINT(" Trying to connect to SSID : %s \r\n STA Connection failed. \r\n \r\n", SYS_WIFI_GetSSID());
            
            /* check user has enable the Auto connect feature in the STA
               mode,Auto connect Retry count is less then user configured 
               auto connect retry then request Wi-Fi driver for connection request */
            if ((true == SYS_WIFI_GetAutoConnect()) && (g_wifiSrvcAutoConnectRetry < MAX_AUTO_CONNECT_RETRY)) 
            {
                SYS_WIFI_SetTaskstatus(SYS_WIFI_STATUS_CONNECT_REQ);
                g_wifiSrvcAutoConnectRetry++;
            } 
            else if (g_wifiSrvcAutoConnectRetry == MAX_AUTO_CONNECT_RETRY) 
            {
                /* Auto connect Retry count is equal to Maximum connection attempt,
                   then set the Wi-Fi Service status to connection error and wait 
                   for user to re-configuration. */
                SYS_WIFI_SetTaskstatus(SYS_WIFI_STATUS_CONNECT_ERROR);
            }
            g_wifiSrvcDrvAssocHdl = WDRV_PIC32MZW_ASSOC_HANDLE_INVALID;
            break;
        }

        case WDRV_PIC32MZW_CONN_STATE_DISCONNECTED:
        {
            /* when PIC32MZW1 STA disconnected from connected HOMEAP,Wi-Fi driver 
               updated event disconnected. */
            SYS_CONSOLE_PRINT("STA DisConnected\r\n");
            if (true == SYS_WIFI_GetAutoConnect()) 
            {
                SYS_WIFI_SetTaskstatus(SYS_WIFI_STATUS_CONNECT_REQ);
            }

            /* Updating Wi-Fi service associate handle on receiving disconnection
               event */
            g_wifiSrvcDrvAssocHdl = WDRV_PIC32MZW_ASSOC_HANDLE_INVALID;

            /* Reset the Auto Connection retry to zero on receiving disconnect 
               event */
            g_wifiSrvcAutoConnectRetry = 0;
            break;
        }
        default:
        {
            break;
        }
    }       
}

/* Wi-Fi driver callback received on setting Regulatory domain */
static void SYS_WIFI_RegDomainCallback
(
    DRV_HANDLE handle, 
    uint8_t index, 
    uint8_t ofTotal, 
    bool isCurrent, 
    const WDRV_PIC32MZW_REGDOMAIN_INFO * const pRegDomInfo
) 
{
    if ((1 != index) || (1 != ofTotal) || (false == isCurrent) || (NULL == pRegDomInfo)) 
    {
        SYS_CONSOLE_MESSAGE("Regulatory domain set unsuccessful\r\n");
    }  
    if(!memcmp(pRegDomInfo,SYS_WIFI_GetCountryCode(),strlen((const char *)pRegDomInfo)))
    {
        g_isRegDomainSetReq = true;
    }

}

/* Wi-Fi driver update the Scan result on callback*/
static void SYS_WIFI_ScanHandler
(
    DRV_HANDLE handle, 
    uint8_t index, 
    uint8_t ofTotal, 
    WDRV_PIC32MZW_BSS_INFO *pBSSInfo
) 
{
    if (0 == ofTotal) 
    {
        SYS_CONSOLE_MESSAGE("No AP Found Rescan\r\n");
    } 
    else 
    {
        if (1 == index) 
        {
            char cmdTxt[10];
            sprintf(cmdTxt, "SCAN#%02d", ofTotal);
            SYS_CONSOLE_PRINT("#%02d\r\n", ofTotal);
            SYS_CONSOLE_MESSAGE(">>#  RI  Sec  Recommend CH BSSID             SSID\r\n");
            SYS_CONSOLE_MESSAGE(">>#      Cap  Auth Type\r\n>>#\r\n");
        }
        SYS_CONSOLE_PRINT(">>%02d %d 0x%02x ", index, pBSSInfo->rssi, pBSSInfo->secCapabilities);
        switch (pBSSInfo->authTypeRecommended) 
        {
            case WDRV_PIC32MZW_AUTH_TYPE_OPEN:
            {
                SYS_CONSOLE_MESSAGE("OPEN     ");
                break;
            }

            case WDRV_PIC32MZW_AUTH_TYPE_WEP:
            {
                SYS_CONSOLE_MESSAGE("WEP      ");
                break;
            }

            case WDRV_PIC32MZW_AUTH_TYPE_WPAWPA2_PERSONAL:
            {
                SYS_CONSOLE_MESSAGE("WPA/2 PSK");
                break;
            }

            case WDRV_PIC32MZW_AUTH_TYPE_WPA2_PERSONAL:
            {
                SYS_CONSOLE_MESSAGE("WPA2 PSK ");
                break;
            }

            default:
            {
                SYS_CONSOLE_MESSAGE("Not Avail");
                break;
            }

        }
        SYS_CONSOLE_PRINT(" %02d %02X:%02X:%02X:%02X:%02X:%02X %s\r\n", pBSSInfo->ctx.channel,
                pBSSInfo->ctx.bssid.addr[0], pBSSInfo->ctx.bssid.addr[1], pBSSInfo->ctx.bssid.addr[2],
                pBSSInfo->ctx.bssid.addr[3], pBSSInfo->ctx.bssid.addr[4], pBSSInfo->ctx.bssid.addr[5],
                pBSSInfo->ctx.ssid.name);
    }
}

static void SYS_WIFI_TCPIP_DHCP_EventHandler
(
    TCPIP_NET_HANDLE hNet, 
    TCPIP_DHCP_EVENT_TYPE evType, 
    const void* param
) 
{
    IPV4_ADDR ipAddr;
    IPV4_ADDR gateWayAddr;
    bool provConnStatus = false;
    switch (evType) 
    {
        case DHCP_EVENT_BOUND:
        {

            /* TCP/IP Stack BOUND event indicates
               PIC32MZW1 has received the IP address from connected HOMEAP */
            ipAddr.Val = TCPIP_STACK_NetAddress(hNet);
            if (ipAddr.Val) 
            {
                gateWayAddr.Val = TCPIP_STACK_NetAddressGateway(hNet);
                SYS_CONSOLE_PRINT("IP address obtained = %d.%d.%d.%d \r\n",
                        ipAddr.v[0], ipAddr.v[1], ipAddr.v[2], ipAddr.v[3]);
                SYS_CONSOLE_PRINT("Gateway IP address = %d.%d.%d.%d \r\n",
                        gateWayAddr.v[0], gateWayAddr.v[1], gateWayAddr.v[2], gateWayAddr.v[3]);

                g_wifiSrvcConfig.staConfig.ipAddr.Val=ipAddr.Val;
                SYS_WIFI_SetTaskstatus(SYS_WIFI_STATUS_STA_IP_RECIEVED);
            }
            break;
        }

        case DHCP_EVENT_CONN_ESTABLISHED:
        {
            break;
        }

        case DHCP_EVENT_CONN_LOST:
        {

            /* Received the TCP/IP Stack Connection Lost event,
               PIC32MZW1 has lost IP address from connected HOMEAP */

            /* Update the application(client) on lost IP address */
            SYS_WIFI_CallBackFun(SYS_WIFI_DISCONNECT,NULL,g_wifiSrvcCookie);
            provConnStatus = false;

            /* Update the Wi-Fi provisioning service on lost IP Address, 
               The Wi-Fi provisioning service has to stop the TCP server socket.
               only applicable if user has enable TCP Socket configuration 
               from MHC */
            SYS_WIFIPROV_CtrlMsg(g_wifiSrvcProvObj,SYS_WIFIPROV_CONNECT,&provConnStatus,sizeof(bool));
            break;
        }

        default:
        {
            break;
        }
    }
}

static WDRV_PIC32MZW_SSID_LIST * SYS_WIFI_CreateSsidList(void)
{
    WDRV_PIC32MZW_SSID_LIST * result;
    char key[2] = {0};
    key[0] = g_wifiSrvcScanConfig.delimChar;
    char * pch;
    char * start;
    char * end;
    int len = 0;
    int idx = 0;
    if (g_wifiSrvcScanConfig.pSsidList)
    {
        memset(g_scanSsidListString, 0, sizeof(g_scanSsidListString));
        start = g_wifiSrvcScanConfig.pSsidList;
        end = start + strlen(start);
        pch = strpbrk (start, key);
        while ((start < end) && (idx < SYS_WIFI_SCAN_MAX_SSID_COUNT))
        {
            len = (int)(pch-start);
            if ((len > 1) && (len < WDRV_PIC32MZW_MAX_SSID_LEN))
            {
                memset(userSsidLinkedList[idx].ssid.name, 0, WDRV_PIC32MZW_MAX_SSID_LEN);
                userSsidLinkedList[idx].ssid.length = len;
                memcpy(userSsidLinkedList[idx].ssid.name, start, len);
                sprintf(g_scanSsidListString + strlen(g_scanSsidListString), "%.*s%c", len, start, g_wifiSrvcScanConfig.delimChar);
                userSsidLinkedList[idx].pNext = NULL;
                if (idx > 0)
                {
                    userSsidLinkedList[idx-1].pNext = &userSsidLinkedList[idx];
                }
                idx++;
            }
            start = pch+1;
            pch = strpbrk(start,key);
            if (pch == NULL)
            {
                pch = end;
            }
        }
    }
    
    if (idx > 0)
    {
        result = userSsidLinkedList;
        g_scanSsidListString[strlen(g_scanSsidListString)-1] = 0;
        g_wifiSrvcScanConfig.pSsidList = g_scanSsidListString;
    }
    else
    {
        result = NULL;
    }

    return result;
}

static SYS_WIFI_RESULT SYS_WIFI_SetScan (void)
{
    uint8_t ret = SYS_WIFI_FAILURE;
    
    if (false == WDRV_PIC32MZW_BSSFindInProgress(g_wifiSrvcObj.wifiSrvcDrvHdl))
    {
        WDRV_PIC32MZW_SSID_LIST * pSSIDList = NULL;

        pSSIDList = SYS_WIFI_CreateSsidList();

        SYS_WIFI_PrintScanConfig();

        if (SYS_WIFI_SCAN_MODE_ACTIVE != g_wifiSrvcScanConfig.mode)
        {
            pSSIDList = NULL;
        }
        
        if (g_wifiSrvcScanConfig.pNotifyCallback == NULL)
        {
            g_wifiSrvcScanConfig.pNotifyCallback = SYS_WIFI_ScanHandler;
        }

        if (WDRV_PIC32MZW_STATUS_OK == WDRV_PIC32MZW_BSSFindSetScanMatchMode(g_wifiSrvcObj.wifiSrvcDrvHdl, g_wifiSrvcScanConfig.matchMode))
        {
            if (WDRV_PIC32MZW_STATUS_OK == WDRV_PIC32MZW_BSSFindSetEnabledChannels24(g_wifiSrvcObj.wifiSrvcDrvHdl, g_wifiSrvcScanConfig.chan24Mask))
            {
                if (WDRV_PIC32MZW_STATUS_OK == WDRV_PIC32MZW_BSSFindSetScanParameters(g_wifiSrvcObj.wifiSrvcDrvHdl, g_wifiSrvcScanConfig.numSlots, g_wifiSrvcScanConfig.activeSlotTime, g_wifiSrvcScanConfig.passiveSlotTime, g_wifiSrvcScanConfig.numProbes))
                {
                    if (WDRV_PIC32MZW_STATUS_OK == WDRV_PIC32MZW_BSSFindFirst(g_wifiSrvcObj.wifiSrvcDrvHdl, g_wifiSrvcScanConfig.channel, g_wifiSrvcScanConfig.mode, pSSIDList, (WDRV_PIC32MZW_BSSFIND_NOTIFY_CALLBACK) g_wifiSrvcScanConfig.pNotifyCallback))   
                    {
                        ret = SYS_WIFI_SUCCESS ;
                    }
                }
            }
        }
    }
    return ret;
}

static SYS_WIFI_RESULT SYS_WIFI_SetChannel(void)
{
    uint8_t ret = SYS_WIFI_FAILURE;
    uint8_t channel = SYS_WIFI_GetChannel();

    if (WDRV_PIC32MZW_STATUS_OK == WDRV_PIC32MZW_BSSCtxSetChannel(&g_wifiSrvcObj.wifiSrvcBssCtx, channel)) 
    {
        ret = SYS_WIFI_SUCCESS;
    }
    return ret;
}

static uint8_t SYS_WIFI_DisConnect(void)
{
    uint8_t ret = SYS_WIFI_FAILURE;

    if (WDRV_PIC32MZW_STATUS_OK == WDRV_PIC32MZW_BSSDisconnect(g_wifiSrvcObj.wifiSrvcDrvHdl)) 
    {
        ret = SYS_WIFI_SUCCESS;
    }
    return ret;
}

static uint8_t SYS_WIFI_APDisconnectSTA(uint8_t *macAddr)
{
    uint8_t ret = SYS_WIFI_FAILURE;

    WDRV_PIC32MZW_ASSOC_HANDLE staConnAssocHandle = SYS_WIFI_StaConnAssocIdFromMAC(macAddr);   
    if(WDRV_PIC32MZW_ASSOC_HANDLE_INVALID != staConnAssocHandle)
    {
        SYS_CONSOLE_PRINT("%s:%d staConnAssocHandle=%p\n",__FUNCTION__,__LINE__,staConnAssocHandle);
        if (WDRV_PIC32MZW_STATUS_OK == WDRV_PIC32MZW_AssocDisconnect(staConnAssocHandle))
        {
            return SYS_WIFI_SUCCESS;
        }
    }
    return ret;
}

static SYS_WIFI_RESULT SYS_WIFI_ConnectReq(void)
{
    SYS_WIFI_RESULT ret = SYS_WIFI_CONNECT_FAILURE;
    
    SYS_WIFI_MODE devMode = SYS_WIFI_GetMode();
    if (SYS_WIFI_STA == devMode) 
    {
        if (WDRV_PIC32MZW_STATUS_OK == WDRV_PIC32MZW_BSSConnect(g_wifiSrvcObj.wifiSrvcDrvHdl, &g_wifiSrvcObj.wifiSrvcBssCtx, &g_wifiSrvcObj.wifiSrvcAuthCtx, SYS_WIFI_STAConnCallBack)) 
        {
            ret = SYS_WIFI_SUCCESS;
        }
    } 
    else if (SYS_WIFI_AP == devMode)
    {
        if (WDRV_PIC32MZW_STATUS_OK == WDRV_PIC32MZW_APStart(g_wifiSrvcObj.wifiSrvcDrvHdl, &g_wifiSrvcObj.wifiSrvcBssCtx, &g_wifiSrvcObj.wifiSrvcAuthCtx, SYS_WIFI_APConnCallBack)) 
        {
            ret = SYS_WIFI_SUCCESS;        
        }
    }
    
    if (SYS_WIFI_CONNECT_FAILURE == ret) 
    {
       SYS_WIFI_SetTaskstatus(SYS_WIFI_STATUS_CONNECT_ERROR);	
    }
    return ret;
}

static SYS_WIFI_RESULT SYS_WIFI_SetSSID(void)
{
    SYS_WIFI_RESULT ret = SYS_WIFI_CONFIG_FAILURE;
    uint8_t * ssid = SYS_WIFI_GetSSID();
    uint8_t ssidLen = SYS_WIFI_GetSSIDLen();

    if (WDRV_PIC32MZW_STATUS_OK == WDRV_PIC32MZW_BSSCtxSetSSID(&g_wifiSrvcObj.wifiSrvcBssCtx, ssid, ssidLen)) 
    {
        if (SYS_WIFI_AP == SYS_WIFI_GetMode()) 
        {
            WDRV_PIC32MZW_BSSCtxSetSSIDVisibility(&g_wifiSrvcObj.wifiSrvcBssCtx, SYS_WIFI_GetSSIDVisibility());
        }
        ret = SYS_WIFI_SUCCESS;
    }
    return ret;
}

static SYS_WIFI_RESULT SYS_WIFI_ConfigReq(void)
{
    SYS_WIFI_RESULT ret = SYS_WIFI_SUCCESS;
    uint8_t authType = SYS_WIFI_GetAuthType();
    uint8_t * const pwd = SYS_WIFI_GetPsk();
    uint8_t pwdLen = SYS_WIFI_GetPskLen();

    if (SYS_WIFI_SUCCESS == SYS_WIFI_SetSSID()) 
    {
        switch (authType) 
        {
            case SYS_WIFI_OPEN:
            {
                if (WDRV_PIC32MZW_STATUS_OK != WDRV_PIC32MZW_AuthCtxSetOpen(&g_wifiSrvcObj.wifiSrvcAuthCtx)) 
                {
                    ret = SYS_WIFI_CONFIG_FAILURE;
                }
                break;
            }

            case SYS_WIFI_WPA2:
            {                
                if (WDRV_PIC32MZW_STATUS_OK != WDRV_PIC32MZW_AuthCtxSetPersonal(&g_wifiSrvcObj.wifiSrvcAuthCtx, pwd, pwdLen, WDRV_PIC32MZW_AUTH_TYPE_WPA2_PERSONAL)) 
                {
                    ret = SYS_WIFI_CONFIG_FAILURE;
                }
                break;
            }

            case SYS_WIFI_WPAWPA2MIXED:
            {
                if (WDRV_PIC32MZW_STATUS_OK != WDRV_PIC32MZW_AuthCtxSetPersonal(&g_wifiSrvcObj.wifiSrvcAuthCtx, pwd, pwdLen, WDRV_PIC32MZW_AUTH_TYPE_WPAWPA2_PERSONAL)) 
                {
                    ret = SYS_WIFI_CONFIG_FAILURE;
                }
                break;
            }
            case SYS_WIFI_WEP:
            {
               ret = SYS_WIFI_CONFIG_FAILURE; 
              /* Wi-Fi service doesn't support WEP */
                break;
            }

            default:
            {
                ret = SYS_WIFI_CONFIG_FAILURE;
            }
        }
    }

    if (SYS_WIFI_CONFIG_FAILURE == ret) 
    {
        SYS_CONSOLE_MESSAGE("Error:Enter valid Wi-Fi configuration\r\n");
        SYS_WIFI_SetTaskstatus(SYS_WIFI_STATUS_CONFIG_ERROR);
    }

    return ret;
}

static SYS_WIFI_RESULT SYS_WIFI_SetConfig
(
    SYS_WIFI_CONFIG *wifi_config, 
    SYS_WIFI_STATUS status
) 
{
    /* When user has enabled Save config option,request Wi-Fi provisioning service 
       to store the configuration before making the connection request to user */
    //if (true == SYS_WIFI_GetSaveConfig())
    if(wifi_config->saveConfig == true)
    {
        return SYS_WIFIPROV_CtrlMsg(g_wifiSrvcProvObj,SYS_WIFIPROV_SETCONFIG,wifi_config,sizeof(SYS_WIFI_CONFIG));
    } 
    else 
    {

        /*  When user has not enabled Save config option */
        SYS_WIFI_RESULT ret = SYS_WIFI_SUCCESS;

        /* Copy the user Wi-Fi configuration and make connection request */
        memcpy(&g_wifiSrvcConfig,wifi_config,sizeof(SYS_WIFI_CONFIG));
        SYS_WIFI_SetTaskstatus(status);
        return ret;
    }
}

static uint32_t SYS_WIFI_ExecuteBlock
(
    SYS_MODULE_OBJ object
) 
{
    SYS_STATUS                   tcpIpStat;
    static TCPIP_NET_HANDLE      netHdl;
    SYS_WIFI_OBJ *               wifiSrvcObj = (SYS_WIFI_OBJ *) object;
    uint8_t                      ret =  SYS_WIFIPROV_OBJ_INVALID;

    IPV4_ADDR                    apLastIp = {-1};
    IPV4_ADDR                    apIpAddr;
 
    if (&g_wifiSrvcObj == (SYS_WIFI_OBJ*) wifiSrvcObj)
    {    
        switch (wifiSrvcObj->wifiSrvcStatus) 
        {
            case SYS_WIFI_STATUS_INIT:
            { 
                if (OSAL_RESULT_TRUE == OSAL_SEM_Pend(&g_wifiSrvcSemaphore, OSAL_WAIT_FOREVER)) 
                {
                    /* When g_wifiSrvcInit set to true :
                        Case 1: When Wi-Fi provisioning service is enabled by user in the MHC, 
                               and when Wi-Fi Configuration read from NVM 
                               using Wi-Fi provisioning is valid  
                    
                        Case 2: When Wi-Fi provisioning service is disabled by user in the MHC, 
                               g_wifiSrvcInit set true by Wi-Fi service initialization */

                    if (true == g_wifiSrvcInit) 
                    {
                        if (SYS_STATUS_READY == WDRV_PIC32MZW_Status(sysObj.drvWifiPIC32MZW1)) 
                        {
                            wifiSrvcObj->wifiSrvcStatus = SYS_WIFI_STATUS_WDRV_OPEN_REQ;                
                        }
                    }
                    OSAL_SEM_Post(&g_wifiSrvcSemaphore);
                }
                break;
            }

            case SYS_WIFI_STATUS_WDRV_OPEN_REQ:
            {
                if (OSAL_RESULT_TRUE == OSAL_SEM_Pend(&g_wifiSrvcSemaphore, OSAL_WAIT_FOREVER)) 
                {
                    wifiSrvcObj->wifiSrvcDrvHdl = WDRV_PIC32MZW_Open(0, 0);
                    if (DRV_HANDLE_INVALID != wifiSrvcObj->wifiSrvcDrvHdl) 
                    {
                        if (WDRV_PIC32MZW_STATUS_OK == WDRV_PIC32MZW_RegDomainGet(wifiSrvcObj->wifiSrvcDrvHdl,WDRV_PIC32MZW_REGDOMAIN_SELECT_CURRENT,SYS_WIFI_RegDomainCallback))
                        {
                            SYS_WIFI_PrintWifiConfig();
                            wifiSrvcObj->wifiSrvcStatus = SYS_WIFI_STATUS_AUTOCONNECT_WAIT;
                        }
                    }
                    OSAL_SEM_Post(&g_wifiSrvcSemaphore);
                }
                break;
            }

            case SYS_WIFI_STATUS_AUTOCONNECT_WAIT:
            {
                if (OSAL_RESULT_TRUE == OSAL_SEM_Pend(&g_wifiSrvcSemaphore, OSAL_WAIT_FOREVER)) 
                {
                    /* When user has enabled the auto connect feature of the Wi-Fi service in MHC(STA mode).
                       or in AP mode, below condition will be always true */

                    if (true == SYS_WIFI_GetAutoConnect()) 
                    {
                        if(g_isRegDomainSetReq == true)
                        {

                            if (WDRV_PIC32MZW_STATUS_OK == WDRV_PIC32MZW_RegDomainSet(wifiSrvcObj->wifiSrvcDrvHdl, SYS_WIFI_GetCountryCode(), SYS_WIFI_RegDomainCallback)) 
                            {
                                
                                g_isRegDomainSetReq = false;
                            }
                        }
                        wifiSrvcObj->wifiSrvcStatus = SYS_WIFI_STATUS_TCPIP_WAIT_FOR_TCPIP_INIT;
                    }
                    OSAL_SEM_Post(&g_wifiSrvcSemaphore);
                }
                break;
            }

            case SYS_WIFI_STATUS_TCPIP_WAIT_FOR_TCPIP_INIT:
            {
                if (OSAL_RESULT_TRUE == OSAL_SEM_Pend(&g_wifiSrvcSemaphore, OSAL_WAIT_FOREVER)) 
                {
                    tcpIpStat = TCPIP_STACK_Status(sysObj.tcpip);
                    if (tcpIpStat < 0) 
                    {
                        SYS_CONSOLE_MESSAGE("  TCP/IP stack initialization failed!\r\n");
                        wifiSrvcObj->wifiSrvcStatus = SYS_WIFI_STATUS_TCPIP_ERROR;
                    } 
                    else if (tcpIpStat == SYS_STATUS_READY) 
                    {
                        /* PIC32MZW1 network handle*/
                        netHdl = TCPIP_STACK_NetHandleGet("PIC32MZW1");
                        /* STA Mode */
                        if (SYS_WIFI_STA == SYS_WIFI_GetMode()) 
                        {
                            if (true == TCPIP_DHCPS_IsEnabled(netHdl)) 
                            {
                                TCPIP_DHCPS_Disable(netHdl);
                            }
                            if ((true == TCPIP_DHCP_Enable(netHdl)) &&
                                (TCPIP_STACK_ADDRESS_SERVICE_DHCPC == TCPIP_STACK_AddressServiceSelect(_TCPIPStackHandleToNet(netHdl), TCPIP_NETWORK_CONFIG_DHCP_CLIENT_ON))) 
                            {
                                    g_wifiSrvcDhcpHdl = TCPIP_DHCP_HandlerRegister(netHdl, SYS_WIFI_TCPIP_DHCP_EventHandler, NULL);
                            }
                        } 
                        else if (SYS_WIFI_AP == SYS_WIFI_GetMode()) /*AP Mode*/
                        {
                            if (true == TCPIP_DHCP_IsEnabled(netHdl)) 
                            {
                                TCPIP_DHCP_Disable(netHdl);
                            }
                            TCPIP_DHCPS_Enable(netHdl); /*Enable DHCP Server in AP mode*/
                        }
                    }                
                    wifiSrvcObj->wifiSrvcStatus = SYS_WIFI_STATUS_CONNECT_REQ;
                    OSAL_SEM_Post(&g_wifiSrvcSemaphore);
                }
                break;
            }

            case SYS_WIFI_STATUS_CONNECT_REQ:
            {
                if (OSAL_RESULT_TRUE == OSAL_SEM_Pend(&g_wifiSrvcSemaphore, OSAL_WAIT_FOREVER)) 
                {
                    if (SYS_WIFI_SUCCESS == SYS_WIFI_SetChannel()) 
                    {
                        if (SYS_WIFI_SUCCESS == SYS_WIFI_ConfigReq()) 
                        {
						

                            if (SYS_WIFI_SUCCESS == SYS_WIFI_ConnectReq()) 
                            {
                                wifiSrvcObj->wifiSrvcStatus = (SYS_WIFI_STA == SYS_WIFI_GetMode()) ? SYS_WIFI_STATUS_TCPIP_READY : SYS_WIFI_STATUS_WAIT_FOR_AP_IP;
                            }
                        }
                    }
                    OSAL_SEM_Post(&g_wifiSrvcSemaphore);
                }
                break;
            }
            case SYS_WIFI_STATUS_STA_IP_RECIEVED:
            {
                WDRV_PIC32MZW_CHANNEL_ID channel;
                bool provConnStatus = false;
                 
                /* Update the application(client) on receiving IP address */
                SYS_WIFI_CallBackFun(SYS_WIFI_CONNECT, &g_wifiSrvcConfig.staConfig.ipAddr, g_wifiSrvcCookie);
                provConnStatus = true;

                /* Update the Wi-Fi provisioning service on receiving the IP Address, 
                   The Wi-Fi provisioning service has to start the TCP server socket
                   when IP address is assigned from HOMEAP to STA.only applicable 
                   if user has enable TCP Socket configuration from MHC */
                SYS_WIFIPROV_CtrlMsg(g_wifiSrvcProvObj,SYS_WIFIPROV_CONNECT,&provConnStatus,sizeof(bool));                
                WDRV_PIC32MZW_InfoOpChanGet(g_wifiSrvcObj.wifiSrvcDrvHdl,&channel);
                g_wifiSrvcConfig.staConfig.channel = (uint8_t )channel;
                
                if(g_wifiSrvcConfig.saveConfig == true)
                {
                  SYS_WIFIPROV_CtrlMsg(g_wifiSrvcProvObj,SYS_WIFIPROV_SETCONFIG,&g_wifiSrvcConfig,sizeof(SYS_WIFI_CONFIG));
                }
                wifiSrvcObj->wifiSrvcStatus = SYS_WIFI_STATUS_TCPIP_READY;
                break;
            }
            case SYS_WIFI_STATUS_CONNECT_ERROR:
            {
                if (g_wifiSrvcAutoConnectRetry == MAX_AUTO_CONNECT_RETRY)
                {
                    SYS_WIFI_CallBackFun(SYS_WIFI_AUTO_CONNECT_FAIL, NULL, g_wifiSrvcCookie); 
                    wifiSrvcObj->wifiSrvcStatus = SYS_WIFI_STATUS_CONFIG_ERROR;
                }
                break;
            }



            case SYS_WIFI_STATUS_WAIT_FOR_AP_IP:
            {
                apIpAddr.Val = TCPIP_STACK_NetAddress(netHdl);
                if (apLastIp.Val != apIpAddr.Val)
                {
                    if (OSAL_RESULT_TRUE == OSAL_SEM_Pend(&g_wifiSrvcSemaphore, OSAL_WAIT_FOREVER)) 
                    {
                        apLastIp.Val = apIpAddr.Val;
                        SYS_CONSOLE_MESSAGE(TCPIP_STACK_NetNameGet(netHdl));
                        SYS_CONSOLE_MESSAGE(" AP Mode IP Address: ");
                        SYS_CONSOLE_PRINT("%d.%d.%d.%d \r\n", apIpAddr.v[0], apIpAddr.v[1], apIpAddr.v[2], apIpAddr.v[3]);
                        wifiSrvcObj->wifiSrvcStatus = SYS_WIFI_STATUS_TCPIP_READY;
                        OSAL_SEM_Post(&g_wifiSrvcSemaphore);

                        /* In AP mode, Update AP mode start event to
                            Wi-Fi Provisioning service.Wi-Fi Provisioning
                            service has to open TCP server */
                        bool provConnStatus = true;
                        SYS_WIFIPROV_CtrlMsg(g_wifiSrvcProvObj, SYS_WIFIPROV_CONNECT, &provConnStatus, sizeof (bool));
                    }
                }
                break;
            }
            case SYS_WIFI_STATUS_WAIT_FOR_STA_IP:
            {
                uint8_t staConnIdx = SYS_WIFI_OBJ_INVALID;
                if (OSAL_RESULT_TRUE == OSAL_SEM_Pend(&g_wifiSrvcSemaphore, 
                                        OSAL_WAIT_FOREVER))
                {
                    staConnIdx = SYS_WIFI_StaConnIdx();
                    OSAL_SEM_Post(&g_wifiSrvcSemaphore);
                }    
                if(SYS_WIFI_OBJ_INVALID != staConnIdx)
                {
                    /* updates the application with received STA IP address*/
                    SYS_WIFI_CallBackFun(SYS_WIFI_CONNECT, 
                    &g_wifiSrvcStaConnInfo[staConnIdx].wifiSrvcStaAppInfo, 
                    g_wifiSrvcCookie);
                }
                else
                {
                    SYS_WIFI_SetTaskstatus(SYS_WIFI_STATUS_TCPIP_READY);
                }                   
                break;
            }
            case SYS_WIFI_STATUS_TCPIP_READY:
            {
                break;
            }

            case SYS_WIFI_STATUS_TCPIP_ERROR:
            {
                SYS_STATUS tcpIpStat;
                tcpIpStat = TCPIP_STACK_Status(sysObj.tcpip);
            
                if (tcpIpStat < 2) 
                {
                    wifiSrvcObj->wifiSrvcStatus = SYS_WIFI_STATUS_TCPIP_ERROR;
                } 
                else 
                {
                    wifiSrvcObj->wifiSrvcStatus = SYS_WIFI_STATUS_TCPIP_WAIT_FOR_TCPIP_INIT;
                }
                break;
            }

            default:
            {
                break;
            }
        }
        SYS_WIFIPROV_Tasks (g_wifiSrvcProvObj);
        ret = wifiSrvcObj->wifiSrvcStatus;
    }
    return ret;
}

static void SYS_WIFI_WIFIPROVCallBack
(
    uint32_t event, 
    void * data, 
    void *cookie
) 
{
    char *wifiSrvcCookie = (void *) cookie;
    /* Validate client with verifying the cookie*/
    if (g_wifiSrvcProvCookieVal == *wifiSrvcCookie) 
    {
        switch (event) 
        {

            /* Wi-Fi Provisioning service has updated Wi-Fi configuration 
               with SETCONFIG event */
            case SYS_WIFIPROV_SETCONFIG:
            {
                SYS_WIFIPROV_CONFIG *wifiConfig = (SYS_WIFIPROV_CONFIG*) data;
                if ( (wifiConfig) && (false == g_wifiSrvcInit)) 
                {

                    /* Set g_wifiSrvcInit true, Wi-Fi Service can be started now 
                       after receiving configuration from Wi-Fi Provisioning 
                       service */
                    g_wifiSrvcInit = true;
                    memcpy(&g_wifiSrvcConfig, wifiConfig, sizeof(SYS_WIFIPROV_CONFIG));
                }
                else 
                {
                    if(memcmp(&g_wifiSrvcConfig,wifiConfig,sizeof(SYS_WIFIPROV_CONFIG)))
                    {
                        if ((SYS_WIFIPROV_STA == (SYS_WIFIPROV_MODE) SYS_WIFI_GetMode()) && (SYS_WIFIPROV_STA == wifiConfig->mode)) 
                        {

                            /* Copy received configuration into Wi-Fi service structure */
                            memcpy(&g_wifiSrvcConfig, wifiConfig, sizeof (SYS_WIFIPROV_CONFIG));

                            /* In STA mode, check PIC32MZW1 connection status to HOMEAP */
                            if (g_wifiSrvcDrvAssocHdl == WDRV_PIC32MZW_ASSOC_HANDLE_INVALID) 
                            {

                               /* When Auto connected is enable by user and 
                                  Auto connect retry has not reach to maximum limit 
                                  then make connection requested */
                                if ((true == SYS_WIFI_GetAutoConnect()) && (g_wifiSrvcAutoConnectRetry < MAX_AUTO_CONNECT_RETRY)) 
                                {
                                    /* Make a connection request */
                                    SYS_WIFI_SetTaskstatus(SYS_WIFI_STATUS_CONNECT_REQ);
                                    g_wifiSrvcAutoConnectRetry = 0;
                                }
                            } 
                            else 
                            {
                                /* In STA mode, PIC32MZW1 is already connected to HOMEAP,
                                   so disconnect before applying new received configuration */
                                SYS_WIFI_DisConnect();
                            }
                        } 
                        else 
                        {
                            SYS_CONSOLE_PRINT("## Switch WiFi Mode From %s To %s ##\r\n", \
                                           ((SYS_WIFIPROV_STA == (SYS_WIFIPROV_MODE) SYS_WIFI_GetMode()) ? "STA" : "AP"),\
                                           ((SYS_WIFIPROV_STA == wifiConfig->mode)?"STA":"AP"));
                            /* Copy received configuration into Wi-Fi service structure */
			    if (SYS_WIFIPROV_STA == (SYS_WIFIPROV_MODE) SYS_WIFI_GetMode())
                            {
                                SYS_WIFI_DisConnect();
                            }
                            if((SYS_WIFIPROV_STA == wifiConfig->mode) && (SYS_WIFIPROV_AP == (SYS_WIFIPROV_MODE) SYS_WIFI_GetMode()))
                            {
                                SYS_RESET_SoftwareReset();
                            } 
                            else
                            {
                                memcpy(&g_wifiSrvcConfig, wifiConfig, sizeof (SYS_WIFIPROV_CONFIG));
                                WDRV_PIC32MZW_Close(g_wifiSrvcObj.wifiSrvcDrvHdl);
                                SYS_WIFI_SetTaskstatus(SYS_WIFI_STATUS_INIT);
                            }
                        }
                        if (data) 
                        {

                            /* Update application(client), on receiving new 
                              Provisioning configuration */
                            SYS_WIFI_CallBackFun(SYS_WIFI_PROVCONFIG, data, g_wifiSrvcCookie);
                        }
                    }
                }
                break;
            }

            case SYS_WIFIPROV_GETCONFIG:
            {
                if (data) 
                {
                    SYS_WIFI_CallBackFun(SYS_WIFI_GETWIFICONFIG, data, g_wifiSrvcCookie);
                }
                break;
            }

            default:
            {
                break;
            }
        }
    }
}

// *****************************************************************************
// *****************************************************************************
// Section:  SYS WIFI Initialize Interface 
// *****************************************************************************
// *****************************************************************************
SYS_MODULE_OBJ SYS_WIFI_Initialize
(
    SYS_WIFI_CONFIG *config, 
    SYS_WIFI_CALLBACK callback, 
    void *cookie
) 
{

    if (SYS_WIFI_STATUS_NONE == SYS_WIFI_GetTaskstatus()) 
    {
        if (OSAL_SEM_Create(&g_wifiSrvcSemaphore, OSAL_SEM_TYPE_BINARY, 1, 1) != OSAL_RESULT_TRUE) 
        {
            SYS_CONSOLE_MESSAGE("Failed to Initialize Wi-Fi Service as Semaphore NOT created\r\n");
            return SYS_MODULE_OBJ_INVALID;
        }
        memset(g_wifiSrvcCallBack,0,sizeof(g_wifiSrvcCallBack));
        if (callback != NULL) 
        {
            SYS_WIFI_REGCB(callback);
        }
        WDRV_PIC32MZW_BSSCtxSetDefaults(&g_wifiSrvcObj.wifiSrvcBssCtx);
        WDRV_PIC32MZW_AuthCtxSetDefaults(&g_wifiSrvcObj.wifiSrvcAuthCtx);

        /* Set Wi-Fi service state to init */
        SYS_WIFI_SetTaskstatus(SYS_WIFI_STATUS_INIT);
        SYS_WIFI_SetCookie(cookie);
        SYS_WIFI_InitStaConnInfo();
        SYS_WIFI_InitWifiScanInfoDefault();

        /* User has enabled Wi-Fi provisioning service using MHC */
        g_wifiSrvcProvObj= SYS_WIFIPROV_Initialize ((SYS_WIFIPROV_CONFIG *)config,SYS_WIFI_WIFIPROVCallBack,&g_wifiSrvcProvCookieVal);
        return (SYS_MODULE_OBJ) &g_wifiSrvcObj;
    }
    return SYS_MODULE_OBJ_INVALID;
}

// *****************************************************************************
// *****************************************************************************
// Section:  SYS WIFI Deinitialize Interface 
// *****************************************************************************
// *****************************************************************************
SYS_WIFI_RESULT SYS_WIFI_Deinitialize
(
    SYS_MODULE_OBJ object
) 
{
    uint32_t ret = SYS_WIFI_OBJ_INVALID;
    
    if (&g_wifiSrvcObj == (SYS_WIFI_OBJ *) object) 
    {

        /* STA Mode Configuration */
        if (SYS_WIFI_STA == SYS_WIFI_GetMode()) 
        {
            /* Before Wi-Fi De-initialize service,
               Disconnected PIC32MZW1 STA from HOMEAP */
            SYS_WIFI_DisConnect();
            TCPIP_DHCP_HandlerDeRegister(g_wifiSrvcDhcpHdl);
        } 
        else if (SYS_WIFI_AP == SYS_WIFI_GetMode()) 
        {
            if (WDRV_PIC32MZW_STATUS_OK != WDRV_PIC32MZW_APStop(g_wifiSrvcObj.wifiSrvcDrvHdl)) 
            {
                SYS_CONSOLE_MESSAGE(" AP mode Stop Failed \n");
            }
        }
        WDRV_PIC32MZW_Close(g_wifiSrvcObj.wifiSrvcDrvHdl);
        g_wifiSrvcInit = false;
        memset(&g_wifiSrvcObj,0,sizeof(SYS_WIFI_OBJ));
        memset(g_wifiSrvcCallBack,0,sizeof(g_wifiSrvcCallBack));
        SYS_WIFI_SetTaskstatus(SYS_WIFI_STATUS_NONE);
        SYS_WIFIPROV_Deinitialize(g_wifiSrvcProvObj);
        if (OSAL_SEM_Delete(&g_wifiSrvcSemaphore) != OSAL_RESULT_TRUE) 
        {
            SYS_CONSOLE_MESSAGE("Failed to Delete Wi-Fi Service Semaphore \r\n");
        }
        ret = SYS_WIFI_SUCCESS;
    }
    return ret;
}

// *****************************************************************************
// *****************************************************************************
// Section:  SYS WiFi Get Status Interface
// *****************************************************************************
// *****************************************************************************
uint8_t SYS_WIFI_GetStatus
(
    SYS_MODULE_OBJ object
) 
{
    uint8_t ret = SYS_WIFI_OBJ_INVALID;
    
    if (OSAL_RESULT_TRUE == OSAL_SEM_Pend(&g_wifiSrvcSemaphore, OSAL_WAIT_FOREVER)) 
    {
        if (&g_wifiSrvcObj == (SYS_WIFI_OBJ *) object) 
        {
            /* Provide current status of Wi-Fi service to client */
            ret = ((SYS_WIFI_OBJ *) object)->wifiSrvcStatus;
        }
        OSAL_SEM_Post(&g_wifiSrvcSemaphore);
    }
    return ret;
}

// *****************************************************************************
// *****************************************************************************
// Section:  SYS WiFi Tasks Interface
// *****************************************************************************
// *****************************************************************************
uint8_t SYS_WIFI_Tasks
(
    SYS_MODULE_OBJ object
) 
{
    uint8_t ret = SYS_WIFI_OBJ_INVALID;

    if (&g_wifiSrvcObj == (SYS_WIFI_OBJ *) object) 
    {
        ret = SYS_WIFI_ExecuteBlock(object);
    }
    return ret;
}

// *****************************************************************************
// *****************************************************************************
// Section:  SYS WiFi Control Message Interface
// *****************************************************************************
// *****************************************************************************
SYS_WIFI_RESULT SYS_WIFI_CtrlMsg
(
    SYS_MODULE_OBJ object, 
    uint32_t event, 
    void *buffer, 
    uint32_t length
) 
{
    uint8_t ret = SYS_WIFI_OBJ_INVALID;

    if (OSAL_RESULT_TRUE == OSAL_SEM_Pend(&g_wifiSrvcSemaphore, OSAL_WAIT_FOREVER)) 
    {
        if (&g_wifiSrvcObj == (SYS_WIFI_OBJ *)object) 
        {
            switch (event) 
            {

                case SYS_WIFI_CONNECT:
                {
                    /* if service is already processing pending request from 
                       client then ignore new request */
                    if (SYS_WIFI_STATUS_CONNECT_REQ != g_wifiSrvcObj.wifiSrvcStatus) 
                    {
                        if ((buffer) && (length == sizeof (SYS_WIFI_CONFIG)))
                        {
                            SYS_WIFI_STATUS wifiStatus = ((SYS_WIFI_OBJ *)object)->wifiSrvcStatus;
                            if(wifiStatus >= SYS_WIFI_STATUS_CONNECT_REQ)
                            { 
                                wifiStatus = SYS_WIFI_STATUS_CONNECT_REQ; 
                            }
                            ret = SYS_WIFI_SetConfig((SYS_WIFI_CONFIG *) buffer, wifiStatus);
                        }
                    } 
                    else
                    {
                        /* Client is currently processing pending connection request */
                        ret = SYS_WIFI_CONNECT_FAILURE;
                    }
                    break;
                }

                case SYS_WIFI_REGCALLBACK:
                {
                    SYS_WIFI_CALLBACK g_wifiSrvcFunPtr = buffer;
                    if ((g_wifiSrvcFunPtr) && (length == sizeof(g_wifiSrvcFunPtr))) 
                    {
                        /* Register the client callback function */
                        ret = SYS_WIFI_REGCB(g_wifiSrvcFunPtr);
                    }
                    break;
                }

                case SYS_WIFI_DISCONNECT:
                {
                    if(g_wifiSrvcConfig.mode == SYS_WIFI_AP)
                    {
                        uint8_t *macAddr = (uint8_t *)buffer;                       
                        if(macAddr)
                        {
                            SYS_WIFI_APDisconnectSTA(macAddr);
                        }
                    }
                    else
                    {
                        g_wifiSrvcConfig.staConfig.autoConnect = 0;
                        /* Client has made disconnect request */
                        ret = SYS_WIFI_DisConnect();
                    }
                    break;
                }

                case SYS_WIFI_GETWIFICONFIG:
                {
                    if (true == g_wifiSrvcInit) 
                    {
                        if ((buffer) && (length == sizeof (SYS_WIFI_CONFIG))) 
                        {

                            /* Client has request Wi-Fi service configuration,
                               Copy Wi-Fi configuration into client structure */
                            memcpy(buffer, &g_wifiSrvcConfig, sizeof (g_wifiSrvcConfig));
                            ret = SYS_WIFI_SUCCESS;
                        }
                    } 
                    else
                    {

                        /* Wi-Fi service is not started */
                        ret = SYS_WIFI_SERVICE_UNINITIALIZE;
                    }
                    break;
                }

                case SYS_WIFI_GETSCANCONFIG:
                {
                    if ((buffer) && (length == sizeof (SYS_WIFI_SCAN_CONFIG))) 
                    {
                        /* Client has request Wi-Fi Scan configuration,
                        Copy Scan configuration into client structure */
                        memcpy(buffer, &g_wifiSrvcScanConfig, sizeof (g_wifiSrvcScanConfig));
                        ret = SYS_WIFI_SUCCESS;
                    }
                    else
                    {
                        ret = SYS_WIFI_FAILURE;
                    }
                    break;
                }

                case SYS_WIFI_SCANREQ:
                {
                    if ((buffer) && (length == sizeof (SYS_WIFI_SCAN_CONFIG))) 
                    {
                       /* Client has updated Wi-Fi Scan configuration,
                        Copy client structure into Scan configuration */
                        memcpy(&g_wifiSrvcScanConfig, buffer, sizeof (g_wifiSrvcScanConfig));
                    }
                    ret = SYS_WIFI_SetScan();
                    break;
                }

                case SYS_WIFI_GETDRVHANDLE:
                {
                    if ((buffer) && (length == sizeof (DRV_HANDLE))) 
                    {
                        /* Client has requested Wi-Fi driver handle,
                        Copy driver handle into client structure */
                        *(DRV_HANDLE *)buffer = g_wifiSrvcObj.wifiSrvcDrvHdl;
                        ret = SYS_WIFI_SUCCESS;
                    }
                    else
                    {
                        ret = SYS_WIFI_FAILURE;
                    }
                    break;
                }
                case SYS_WIFI_GETDRVASSOCHANDLE:
                {
                    if ((buffer) && (length == sizeof (WDRV_PIC32MZW_ASSOC_HANDLE))) 
                    {
                        /* Client has requested Assoc handle,
                        Copy Assoc handle into client structure */
                        *(WDRV_PIC32MZW_ASSOC_HANDLE *)buffer = g_wifiSrvcDrvAssocHdl;
                        ret = SYS_WIFI_SUCCESS;
                    }
                    else
                    {
                        ret = SYS_WIFI_FAILURE;
                    }
                    break;
                }
            }
        }
        OSAL_SEM_Post(&g_wifiSrvcSemaphore);
    }
    return ret;
}
/* *****************************************************************************
 End of File
 */
