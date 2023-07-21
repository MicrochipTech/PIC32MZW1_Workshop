/*******************************************************************************
  Application to Demo custom HTTP


  File Name
    custom_http_app.c

  Summary
    Application to Demo custom HTTP

  Description
    This file defines the interface to communicate to HTTP webpage.

 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (C) 2020-2022 released Microchip Technology Inc.  All rights reserved.

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

#include "configuration.h"
#include "definitions.h"
#include "system/wifi/sys_wifi.h"
#if defined(TCPIP_STACK_USE_HTTP_SERVER)
#include "tcpip/tcpip.h"
#include "tcpip/src/common/helpers.h"
#include "../../driver/wifi/pic32mzw1/include/wdrv_pic32mzw_bssfind.h"

/****************************************************************************
  Section:
    Definitions
 ****************************************************************************/
#define HTTP_APP_IPV4_ADDRESS_BUFFER_SIZE 20

/****************************************************************************
  Section:
    Function Prototypes
 ****************************************************************************/
static HTTP_IO_RESULT HTTPPostConfig_wifi(HTTP_CONN_HANDLE connHandle);

/****************************************************************************
  Section:
    Variables
 ****************************************************************************/
 
static uint8_t s_buf_ipv4addr[HTTP_APP_IPV4_ADDRESS_BUFFER_SIZE];

static SYS_WIFI_CONFIG wifiConfig;
#define CONVERT_TO_NUMBER(a) (a-'0')
#define CONVERT_TO_ASCII(a) (a+'0')
int8_t g_u8BssCount = -2;
uint8_t s_scanResultIsValid = 0;


// Stick status message variable.  See lastSuccess for details.
static bool lastFailure = false;

uint8_t g_networkType;
#define WF_NETWORK_TYPE_INFRASTRUCTURE 0
#define WF_NETWORK_TYPE_ADHOC 1
#define WF_NETWORK_TYPE_P2P 2
#define WF_NETWORK_TYPE_SOFT_AP 3

#define WF_ASSERT(condition, msg) WDRV_ASSERT(condition, msg)

static inline uint8_t Findstring_lenth(uint8_t *ptr)
{
    uint8_t len=0;
    for(;*ptr != '&';ptr++,len++);
    return len;
}

#define SYS_WIFI_MAX_SCAN_AP    16
WDRV_PIC32MZW_BSS_INFO g_asScanBssInfo[SYS_WIFI_MAX_SCAN_AP];
WDRV_PIC32MZW_BSS_INFO g_sTempScanBssInfo;

bool APP_ScanHandler (DRV_HANDLE handle, uint8_t index, uint8_t ofTotal, WDRV_PIC32MZW_BSS_INFO *pBSSInfo)
{
    if (0 == ofTotal) 
    {
        SYS_CONSOLE_MESSAGE("No AP Found... Rescan\r\n");
    } 
    else 
    {
        g_u8BssCount = 0;
        if (index == 1)
        {
            memset(g_asScanBssInfo, 0, sizeof(g_asScanBssInfo));
            SYS_CONSOLE_PRINT("Scan Results: # %02d\r\n", ofTotal);
        }
        memcpy(&g_asScanBssInfo[index - 1], pBSSInfo, sizeof(WDRV_PIC32MZW_BSS_INFO));
        SYS_CONSOLE_PRINT("[%02d] %s %x:%x:%x:%x:%x:%x\r\n", index, pBSSInfo->ctx.ssid.name, 
                pBSSInfo->ctx.bssid.addr[0], pBSSInfo->ctx.bssid.addr[1], pBSSInfo->ctx.bssid.addr[2], 
                pBSSInfo->ctx.bssid.addr[3], pBSSInfo->ctx.bssid.addr[4], pBSSInfo->ctx.bssid.addr[5]);
        if(ofTotal == index)
        {
            g_u8BssCount = ofTotal;
            memcpy(&g_sTempScanBssInfo, &g_asScanBssInfo[0], sizeof(g_sTempScanBssInfo));
            s_scanResultIsValid = 1;
        }
    }
    // return true to receive further results; otherwise return false if desired
    return true;
}

/****************************************************************************
  Section:
    GET Form Handlers
 ****************************************************************************/

/****************************************************************************
  Function:
    HTTP_IO_RESULT TCPIP_HTTP_GetExecute(HTTP_CONN_HANDLE connHandle)

  Internal:
    See documentation in the TCP/IP Stack APIs or http.h for details.
 ****************************************************************************/
HTTP_IO_RESULT TCPIP_HTTP_GetExecute(HTTP_CONN_HANDLE connHandle)
{
    const uint8_t *ptr;
    const uint8_t *ptr1;
    uint16_t bssIdx;
    uint8_t filename[20];
    uint8_t *httpDataBuff;
    uint8_t bssIdxStr[2];

    // Load the file name.
    // Make sure uint8_t filename[] above is large enough for your longest name.
    SYS_FS_FileNameGet(TCPIP_HTTP_CurrentConnectionFileGet(connHandle), filename, 20);

    httpDataBuff = TCPIP_HTTP_CurrentConnectionDataBufferGet(connHandle);

    if(!memcmp(filename, "scan.cgi", 8))
    {
        ptr = TCPIP_HTTP_ArgGet(httpDataBuff, (const uint8_t *)"scan");
        ptr1 = TCPIP_HTTP_ArgGet(httpDataBuff, (const uint8_t *)"getBss");

        if ((ptr != NULL) && (ptr1 == NULL))
        {
            // scan request
            s_scanResultIsValid = 0;

            /*
             * Display pre-scan results if pre-scan results are available,
             * otherwise initiate a new scan.
             */
            SYS_WIFI_RESULT res;
            SYS_WIFI_STATUS wifiStatus;
            SYS_WIFI_SCAN_CONFIG scanConfig;

            wifiStatus = SYS_WIFI_GetStatus (sysObj.syswifi);
            if (wifiStatus > SYS_WIFI_STATUS_WDRV_OPEN_REQ)
            {                
                memset(&scanConfig, 0, sizeof(scanConfig));
                res = SYS_WIFI_CtrlMsg(sysObj.syswifi, SYS_WIFI_GETSCANCONFIG, &scanConfig, sizeof(SYS_WIFI_SCAN_CONFIG));
                if(SYS_WIFI_SUCCESS == res)
                {
                    //Received the wifiSrvcScanConfig data
                    char myAPlist[] = ""; // e.g. "myAP*OPENAP*Hello World!"
                    char delimiter  = '*';
                    scanConfig.channel         = 0;
                    scanConfig.mode            = SYS_WIFI_SCAN_MODE_ACTIVE;
                    scanConfig.pSsidList       = myAPlist;
                    scanConfig.delimChar       = delimiter;
                    scanConfig.pNotifyCallback = (void *)APP_ScanHandler;
                    scanConfig.matchMode       = WDRV_PIC32MZW_SCAN_MATCH_MODE_FIND_ALL;

                    SYS_CONSOLE_PRINT("\r\nStarting Custom Scan ...\r\n");

                    res = SYS_WIFI_CtrlMsg(sysObj.syswifi,SYS_WIFI_SCANREQ,&scanConfig,sizeof(SYS_WIFI_SCAN_CONFIG));                        
                    if(SYS_WIFI_SUCCESS != res)
                    {
                        SYS_CONSOLE_PRINT("Error Starting scan: %d\r\n", res);
                    }
                }
            }
        }
        else if ((ptr == NULL) && (ptr1 != NULL))
        {
            // getBss request
            // use the value to get the nth bss stored on chip
            s_scanResultIsValid = 0;
            
            if (g_u8BssCount > 0)
            {
                bssIdxStr[1] = *ptr1;
                bssIdxStr[0] = *(ptr1 + 1);
                bssIdx = hexatob(*(uint16_t *)bssIdxStr);
                memcpy(&g_sTempScanBssInfo, &g_asScanBssInfo[bssIdx], sizeof(g_sTempScanBssInfo));
                s_scanResultIsValid = 1;
            }
        }
        else
        {
            // impossible to get here
        }
    }
	
    return HTTP_IO_DONE;
}

/****************************************************************************
  Function:
    HTTP_IO_RESULT TCPIP_HTTP_PostExecute(HTTP_CONN_HANDLE connHandle)

  Internal:
    See documentation in the TCP/IP Stack APIs or http.h for details.
 ****************************************************************************/
HTTP_IO_RESULT TCPIP_HTTP_PostExecute(HTTP_CONN_HANDLE connHandle)
{
    // Resolve which function to use and pass along
    uint8_t filename[20];

    // Load the file name
    // Make sure uint8_t filename[] above is large enough for your longest name
    SYS_FS_FileNameGet(TCPIP_HTTP_CurrentConnectionFileGet(connHandle), filename, sizeof(filename));

    if(!memcmp(filename, "config.htm", 10))
    {
        return HTTPPostConfig_wifi(connHandle);
    }

    return HTTP_IO_DONE;
}
/****************************************************************************
  Section:
    Authorization Handlers
 ****************************************************************************/

/****************************************************************************
  Function:
    uint8_t TCPIP_HTTP_FileAuthenticate(HTTP_CONN_HANDLE connHandle, uint8_t *cFile)

  Internal:
    See documentation in the TCP/IP Stack APIs or http.h for details.
 ****************************************************************************/
uint8_t TCPIP_HTTP_FileAuthenticate(HTTP_CONN_HANDLE connHandle, uint8_t *cFile)
{
    return 0x80; // No authentication required.
}
/****************************************************************************
  Function:
    uint8_t TCPIP_HTTP_UserAuthenticate(uint8_t *cUser, uint8_t *cPass)

  Internal:
    See documentation in the TCP/IP Stack APIs or http.h for details.
 ****************************************************************************/

uint8_t TCPIP_HTTP_UserAuthenticate(HTTP_CONN_HANDLE connHandle, uint8_t *cUser, uint8_t *cPass)
{
    return 0x00;            // Provided user/pass is invalid
}
/*******************************************************************************
  Function:
    static HTTP_IO_RESULT HTTPPostConfig_wifi(HTTP_CONN_HANDLE connHandle)

  Summary:
    Processes the Wi-Fi configuration form on config.htm

  Description:
    Accepts configuration parameters from the form, saves them to a
    temporary location in RAM and Provide to Wi-Fi service for updating configuration.

  Precondition:
    None

  Parameters:
    connHandle  - HTTP connection handle

  Return Values:
    HTTP_IO_DONE - all parameters have been processed
    HTTP_IO_NEED_DATA - data needed by this function has not yet arrived
 *******************************************************************************/

static HTTP_IO_RESULT HTTPPostConfig_wifi(HTTP_CONN_HANDLE connHandle)
{
    uint8_t httpDataBuff[256];
    uint16_t Index=0;
    uint32_t byteCount;
    TCP_SOCKET sktHTTP;
    uint8_t *httpScanNwDataBuff = 0;
    
    SYS_WIFI_CtrlMsg(sysObj.syswifi, SYS_WIFI_GETWIFICONFIG, &wifiConfig, sizeof(SYS_WIFI_CONFIG));
	
    byteCount = TCPIP_HTTP_CurrentConnectionByteCountGet(connHandle);
    sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    
    if(byteCount > TCPIP_TCP_GetIsReady(sktHTTP) + TCPIP_TCP_FifoRxFreeGet(sktHTTP))
        goto ConfigFailure;

    // Ensure that all data is waiting to be parsed.  If not, keep waiting for
    // all of it to arrive.
    if(TCPIP_TCP_GetIsReady(sktHTTP) < byteCount)
        return HTTP_IO_NEED_DATA;

    // In case the user used Static Wifi Configuration
    if(byteCount > 100)
    {
        // Read all browser POST data
        TCPIP_TCP_ArrayGet(sktHTTP,(uint8_t*)httpDataBuff,256);


        if(!strncmp((const char *)httpDataBuff+Index, (const char *)"devmode=",strlen("devmode=")))
        {
            Index += strlen("devmode=");
            wifiConfig.mode = CONVERT_TO_NUMBER(httpDataBuff[Index]);
        }
        Index += 2;

        if(!strncmp((char *)httpDataBuff+Index, (const char *)"saveconfig=",strlen("saveconfig=")))
        {
            Index += strlen("saveconfig=");
            wifiConfig.saveConfig = CONVERT_TO_NUMBER(httpDataBuff[Index]);        
        }
        Index += 2;

        if(!strncmp((char *)httpDataBuff+Index, (const char *)"countrycode=",strlen("countrycode=")))
        {
            uint8_t country_code ;
            Index += strlen("countrycode=");
            country_code = CONVERT_TO_NUMBER(httpDataBuff[Index]);
            switch(country_code)
            {
                case 0: //GEN
                {
                    strcpy((char *)wifiConfig.countryCode,(const char *)"GEN");
                    break;
                }
                case 1: //USA
                {
                    strcpy((char *)wifiConfig.countryCode,(const char *)"USA");
                    break;
                }
                case 2: //EMEA
                {
                    strcpy((char *)wifiConfig.countryCode,(const char *)"EMEA");
                    break;
                }
                case 3: //CUST1
                {
                    strcpy((char *)wifiConfig.countryCode,(const char *)"CUST1");
                    break;
                }
                case 4: //CUST2
                {
                    strcpy((char *)wifiConfig.countryCode,(const char *)"CUST2");
                    break;
                }
            }
         }
         Index += 2 ;

        if(!strncmp((char *)httpDataBuff+Index, (const char *)"stassid=",strlen("stassid=")))
        {

            uint8_t len ;
            Index += strlen("stassid=");
            len = Findstring_lenth(httpDataBuff+Index);
            strncpy((char *)wifiConfig.staConfig.ssid,(const char *)httpDataBuff+Index,len);
            wifiConfig.staConfig.ssid[len] ='\0';

            Index += len ;
        }
         Index += 1;

        if(!strncmp((char *)httpDataBuff+Index, (const char *)"stapwd=",strlen("stapwd=")))
        {
            uint8_t len ;
            Index += strlen("stapwd=");
            len = Findstring_lenth(httpDataBuff+Index);
            strncpy((char *)wifiConfig.staConfig.psk,(const char *)httpDataBuff+Index,len);
            wifiConfig.staConfig.psk[len] ='\0';

            Index += len ;
        }
         Index += 1;


        if(!strncmp((char *)httpDataBuff+Index, (const char *)"staauth=",strlen("staauth=")))
        {

            Index += strlen("staauth=");
            wifiConfig.staConfig.authType = CONVERT_TO_NUMBER(httpDataBuff[Index]);

        }
         Index += 2;

        if(!strncmp((char *)httpDataBuff+Index, (const char *)"stach=",strlen("stach=")))
        {

            Index += strlen("stach=");
            wifiConfig.staConfig.channel =CONVERT_TO_NUMBER(httpDataBuff[Index]);
        }
              Index += 2;
        if(!strncmp((char *)httpDataBuff+Index, (const char *)"staauto=",strlen("staauto=")))
        {

            Index += strlen("staauto=");
            wifiConfig.staConfig.autoConnect = CONVERT_TO_NUMBER(httpDataBuff[Index]);
        }
         Index += 2;
        if(!strncmp((char *)httpDataBuff+Index, (const char *)"apssid=",strlen("apssid=")))
        {
            uint8_t len ;
            Index += strlen("apssid=");
            len = Findstring_lenth(httpDataBuff+Index);
            strncpy((char *)wifiConfig.apConfig.ssid,(const char *)httpDataBuff+Index,len);
            wifiConfig.apConfig.ssid[len] ='\0';
            Index += len;
        }
         Index += 1;
        if(!strncmp((char *)httpDataBuff+Index, (const char *)"appwd=",strlen("appwd=")))
        {
            uint8_t len ;
            Index += strlen("appwd=");
            len = Findstring_lenth(httpDataBuff+Index);
            strncpy((char *)wifiConfig.apConfig.psk,(const char *)httpDataBuff+Index,len);
            wifiConfig.apConfig.psk[len] ='\0';
            Index += len;
        }
         Index += 1;

        if(!strncmp((char *)httpDataBuff+Index, (const char *)"apauth=",strlen("apauth=")))
        {

            Index += strlen("apauth=");
            wifiConfig.apConfig.authType = CONVERT_TO_NUMBER(httpDataBuff[Index]);

        }
         Index += 2;

        if(!strncmp((char *)httpDataBuff+Index, (const char *)"apch=",strlen("apch=")))
        {

            Index += strlen("apch=");
            wifiConfig.apConfig.channel =CONVERT_TO_NUMBER(httpDataBuff[Index]);    
        }
         Index += 2;

        if(!strncmp((char *)httpDataBuff+Index, (const char *)"ssidv=",strlen("ssidv=")))
        {

            Index += strlen("ssidv=");
            wifiConfig.apConfig.ssidVisibility = CONVERT_TO_NUMBER(httpDataBuff[Index]);
        }
        SYS_WIFI_CtrlMsg(sysObj.syswifi, SYS_WIFI_CONNECT, &wifiConfig, sizeof(SYS_WIFI_CONFIG));
        return HTTP_IO_DONE;                
    }
    
    httpScanNwDataBuff = TCPIP_HTTP_CurrentConnectionDataBufferGet(connHandle);
    // Read all browser POST data.
    while(TCPIP_HTTP_CurrentConnectionByteCountGet(connHandle))
    {
        // Read a form field name.
        if(TCPIP_HTTP_PostNameRead(connHandle, httpScanNwDataBuff, 6) != HTTP_READ_OK)
            goto ConfigFailure;

        // Read a form field value.
        if(TCPIP_HTTP_PostValueRead(connHandle, httpScanNwDataBuff + 6, TCPIP_HTTP_MAX_DATA_LEN - 6 - 2) != HTTP_READ_OK)
            goto ConfigFailure;
        
        // Parse the value that was read.
        if(!strcmp((char *)httpScanNwDataBuff, (const char *)"wlan"))
        { // Get the wlan mode: Ad-Hoc or Infrastructure.
            char mode[6];
            if (strlen((char *)(httpScanNwDataBuff + 6)) > 5) /* Sanity check. */
                goto ConfigFailure;

            memcpy(mode, (void *)(httpScanNwDataBuff + 6), strlen((char *)(httpScanNwDataBuff + 6)));
            mode[strlen((char *)(httpScanNwDataBuff + 6))] = 0; /* Terminate string. */
            if(!strcmp((char *)mode, (const char *)"infra"))
            {
                g_networkType = WF_NETWORK_TYPE_INFRASTRUCTURE;
            }
            else
            {
                // Mode type no good. :-(
                SYS_CONSOLE_MESSAGE((const char *)"\r\nUnknown mode type on www! ");
                goto ConfigFailure;
            }
        }
        else if(!strcmp((char *)httpScanNwDataBuff, "ssid"))
        { 
            // Get new ssid and make sure it is valid.
            if(strlen((char *)(httpScanNwDataBuff + 6)) < 33u)
            {
                memcpy(wifiConfig.staConfig.ssid, (void *)(httpScanNwDataBuff + 6), strlen((char *)(httpScanNwDataBuff + 6)));
                wifiConfig.staConfig.ssid[strlen((char *)(httpScanNwDataBuff + 6))] = 0; /* Terminate string. */                
            }
            else
            {
                goto ConfigFailure; // Invalid SSID... :-(
            }
        }
        else if(!strcmp((char *)httpScanNwDataBuff, (const char *)"sec"))
        {
            char security_type[20]; // Read security type.

            memcpy(security_type, (void *)(httpScanNwDataBuff + 6), strlen((char *)(httpScanNwDataBuff + 6)));
            security_type[strlen((char *)(httpScanNwDataBuff + 6))] = 0; /* Terminate string. */

            if (!strcmp((char *)security_type, (const char *)"no"))
            {
                wifiConfig.staConfig.authType = SYS_WIFI_OPEN;
            }
            else if(!strcmp((char *)security_type, (const char *)"wpa1"))
            {
                wifiConfig.staConfig.authType = SYS_WIFI_WPAWPA2MIXED;
            }
            else if(!strcmp((char *)security_type, (const char *)"wpa2"))
            {
                wifiConfig.staConfig.authType = SYS_WIFI_WPA2;
            }
            else if(!strcmp((char *)security_type, (const char *)"wpa"))
            {
                wifiConfig.staConfig.authType = SYS_WIFI_WPAWPA2MIXED;
            }
            else
            { // Security type no good. :-(
                SYS_CONSOLE_MESSAGE("\r\nUnknown key type on www\r\n");
                goto ConfigFailure;
            }
        }
        else if(!strcmp((char *)httpScanNwDataBuff, (const char *)"key"))
        { // Read new key material.
            memcpy(wifiConfig.staConfig.psk, (void *)(httpScanNwDataBuff + 6), strlen((char *)(httpScanNwDataBuff + 6)));
            wifiConfig.staConfig.psk[strlen((char *)(httpScanNwDataBuff + 6))] = 0;
        }
    }

    /* Check if WPA hasn't been selected with Ad-Hoc, if it has we choke! */
    if ((g_networkType == WF_NETWORK_TYPE_ADHOC) && (
        (wifiConfig.staConfig.authType == SYS_WIFI_WPAWPA2MIXED) ||
        (wifiConfig.staConfig.authType == SYS_WIFI_WPA2)))
        goto ConfigFailure;

    /*
     * All parsing complete!  If we have got to here all data has been validated and
     * We can handle what is necessary to start the reconfigure process of the Wi-Fi device.
     */

    wifiConfig.mode = SYS_WIFI_STA;
    strcpy((char *)wifiConfig.countryCode, "GEN");
    wifiConfig.saveConfig = 1;
    wifiConfig.staConfig.channel = 0;
    SYS_WIFI_CtrlMsg(sysObj.syswifi, SYS_WIFI_CONNECT, &wifiConfig, sizeof(SYS_WIFI_CONFIG));

    /* Set 1s delay before redirection, goal is to display the redirection web page. */

    return HTTP_IO_DONE;

    ConfigFailure:
        lastFailure = true;
        if(httpScanNwDataBuff)
        {
            strcpy((char *)httpScanNwDataBuff, "/error.htm");
        }
        TCPIP_HTTP_CurrentConnectionStatusSet(connHandle, HTTP_REDIRECT);
        return HTTP_IO_DONE;
}

/****************************************************************************
  Section:
    Dynamic Variable Callback Functions
 ****************************************************************************/

/****************************************************************************
  Function:
    void TCPIP_HTTP_Print_varname(void)

  Internal:
    See documentation in the TCP/IP Stack APIs or http.h for details.
 ****************************************************************************/
void TCPIP_HTTP_Print_hellomsg(HTTP_CONN_HANDLE connHandle)
{
    const uint8_t *ptr;
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);

    ptr = TCPIP_HTTP_ArgGet(TCPIP_HTTP_CurrentConnectionDataBufferGet(connHandle), (const uint8_t *)"name");
    // We omit checking for space because this is the only data being written
    if(ptr != NULL)
    {
        TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"Hello, ");
        TCPIP_TCP_StringPut(sktHTTP, ptr);
    }
}

void TCPIP_HTTP_Print_builddate(HTTP_CONN_HANDLE connHandle)
{
    TCP_SOCKET sktHTTP;
    sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);

    TCPIP_HTTP_CurrentConnectionCallbackPosSet(connHandle, 0x01);
    if(TCPIP_TCP_PutIsReady(sktHTTP) < strlen((const char *)__DATE__" "__TIME__))
        return;

    TCPIP_HTTP_CurrentConnectionCallbackPosSet(connHandle, 0x00);
    TCPIP_TCP_StringPut(sktHTTP, (const void *)__DATE__" "__TIME__);
}

void TCPIP_HTTP_Print_version(HTTP_CONN_HANDLE connHandle)
{    
    SYS_WIFI_CtrlMsg(sysObj.syswifi, SYS_WIFI_GETWIFICONFIG, &wifiConfig, sizeof(SYS_WIFI_CONFIG));
    TCPIP_TCP_StringPut(TCPIP_HTTP_CurrentConnectionSocketGet(connHandle), (const void *)TCPIP_STACK_VERSION_STR);
}

void TCPIP_HTTP_Print_pot(HTTP_CONN_HANDLE connHandle)
{
    uint8_t AN0String[8];
    uint16_t ADval;


    ADval = (uint16_t)SYS_RANDOM_PseudoGet();
    uitoa(ADval, (uint8_t *)AN0String);
    TCPIP_TCP_StringPut(TCPIP_HTTP_CurrentConnectionSocketGet(connHandle), AN0String);
}

void TCPIP_HTTP_Print_apscan(HTTP_CONN_HANDLE connHandle)
{
    uint8_t AN0String[8];
    uint16_t ADval;

    ADval = (uint16_t)SYS_RANDOM_PseudoGet();
    uitoa(ADval, (uint8_t *)AN0String);
    TCPIP_TCP_StringPut(TCPIP_HTTP_CurrentConnectionSocketGet(connHandle), AN0String);
}

void TCPIP_HTTP_Print_startscan(HTTP_CONN_HANDLE connHandle)
{
    uint8_t AN0String[8];
    uint16_t ADval = 1;
    SYS_WIFI_RESULT res;

    SYS_WIFI_STATUS wifiStatus = SYS_WIFI_GetStatus (sysObj.syswifi);
    if (wifiStatus > SYS_WIFI_STATUS_WDRV_OPEN_REQ)
    {
        SYS_CONSOLE_PRINT("\r\nStarting Custom Scan ...\r\n");

        res = SYS_WIFI_CtrlMsg(sysObj.syswifi, SYS_WIFI_SCANREQ, NULL, 0);
        if(SYS_WIFI_SUCCESS != res)
        {
                SYS_CONSOLE_PRINT("Error Starting scan: %d\r\n", res);
        }
    }

    uitoa(ADval, (uint8_t *)AN0String);
    TCPIP_TCP_StringPut(TCPIP_HTTP_CurrentConnectionSocketGet(connHandle), AN0String);
}

void TCPIP_HTTP_Print_config_hostname(HTTP_CONN_HANDLE connHandle)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    TCPIP_TCP_StringPut(sktHTTP, (uint8_t *)TCPIP_STACK_NetBIOSName(TCPIP_TCP_SocketNetGet(sktHTTP)));
}

void TCPIP_HTTP_Print_config_ip(HTTP_CONN_HANDLE connHandle)
{
    IPV4_ADDR ipAddress;
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    TCPIP_NET_HANDLE netH = TCPIP_TCP_SocketNetGet(sktHTTP);

    ipAddress.Val = TCPIP_STACK_NetAddress(netH);
    if (TCPIP_Helper_IPAddressToString(&ipAddress, (char *)s_buf_ipv4addr, HTTP_APP_IPV4_ADDRESS_BUFFER_SIZE))
    {
        TCPIP_TCP_StringPut(sktHTTP, s_buf_ipv4addr);
    }
}

void TCPIP_HTTP_Print_config_gw(HTTP_CONN_HANDLE connHandle) // gateway
{
    IPV4_ADDR gwAddress;
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    TCPIP_NET_HANDLE netH = TCPIP_TCP_SocketNetGet(sktHTTP);

    gwAddress.Val = TCPIP_STACK_NetAddressGateway(netH);
    if (TCPIP_Helper_IPAddressToString(&gwAddress, (char *)s_buf_ipv4addr, HTTP_APP_IPV4_ADDRESS_BUFFER_SIZE))
    {
        TCPIP_TCP_StringPut(sktHTTP, s_buf_ipv4addr);
    }
}

void TCPIP_HTTP_Print_config_subnet(HTTP_CONN_HANDLE connHandle)
{
    IPV4_ADDR ipMask;
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    TCPIP_NET_HANDLE netH = TCPIP_TCP_SocketNetGet(sktHTTP);

    ipMask.Val = TCPIP_STACK_NetMask(netH);
    if (TCPIP_Helper_IPAddressToString(&ipMask, (char *)s_buf_ipv4addr, HTTP_APP_IPV4_ADDRESS_BUFFER_SIZE))
    {
        TCPIP_TCP_StringPut(sktHTTP, s_buf_ipv4addr);
    }
}

void TCPIP_HTTP_Print_config_dns1(HTTP_CONN_HANDLE connHandle)
{
    IPV4_ADDR priDnsAddr;
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    TCPIP_NET_HANDLE netH = TCPIP_TCP_SocketNetGet(sktHTTP);

    priDnsAddr.Val = TCPIP_STACK_NetAddressDnsPrimary(netH);
    if (TCPIP_Helper_IPAddressToString(&priDnsAddr, (char *)s_buf_ipv4addr, HTTP_APP_IPV4_ADDRESS_BUFFER_SIZE))
    {
        TCPIP_TCP_StringPut(sktHTTP, s_buf_ipv4addr);
    }
}

void TCPIP_HTTP_Print_config_dns2(HTTP_CONN_HANDLE connHandle)
{
    IPV4_ADDR secondDnsAddr;
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    TCPIP_NET_HANDLE netH = TCPIP_TCP_SocketNetGet(sktHTTP);

    secondDnsAddr.Val = TCPIP_STACK_NetAddressDnsSecond(netH);
    if (TCPIP_Helper_IPAddressToString(&secondDnsAddr, (char *)s_buf_ipv4addr, HTTP_APP_IPV4_ADDRESS_BUFFER_SIZE))
    {
        TCPIP_TCP_StringPut(sktHTTP, s_buf_ipv4addr);
    }
}

void TCPIP_HTTP_Print_config_mac(HTTP_CONN_HANDLE connHandle)
{
    uint8_t i;
    TCP_SOCKET sktHTTP;
    TCPIP_NET_HANDLE hNet;
    const uint8_t *pMacAdd;

    sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);

    if(TCPIP_TCP_PutIsReady(sktHTTP) < 18u)
    {   // need 17 bytes to write a MAC
        TCPIP_HTTP_CurrentConnectionCallbackPosSet(connHandle, 0x01);
        return;
    }

    hNet = TCPIP_TCP_SocketNetGet(sktHTTP);
    pMacAdd = TCPIP_STACK_NetAddressMac(hNet);
    // Write each byte
    for(i = 0; i < 6u; ++i)
    {
        if(i)
            TCPIP_TCP_Put(sktHTTP, ':');
        TCPIP_TCP_Put(sktHTTP, btohexa_high(pMacAdd[i]));
        TCPIP_TCP_Put(sktHTTP, btohexa_low(pMacAdd[i]));
    }
    // Indicate that we're done
    TCPIP_HTTP_CurrentConnectionCallbackPosSet(connHandle, 0x00);
    return;
}

void TCPIP_HTTP_Print_config_devmode(HTTP_CONN_HANDLE connHandle,uint16_t val)
{
    
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    //TCPIP_TCP_Put(sktHTTP, CONVERT_TO_ASCII(wifiConfig.mode));
    if(val == wifiConfig.mode)
    {
        TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"SELECTED");
    }
}
void TCPIP_HTTP_Print_config_saveconfig(HTTP_CONN_HANDLE connHandle,uint16_t val)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    if(val == wifiConfig.saveConfig)
    {
        TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"SELECTED");
    }
}
void TCPIP_HTTP_Print_config_countrycode(HTTP_CONN_HANDLE connHandle,uint16_t val)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    switch(val)
    {
        case 0: //GEN
        {
            if(!strcmp((const char *)wifiConfig.countryCode,"GEN"))
            {
                TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"SELECTED");            
            }
            break; 
        }
        case 1:  //USA
        {
            if(!strcmp((const char *)wifiConfig.countryCode,"USA"))
            {
                TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"SELECTED");            
            }
            break;
        }
        case 2:  //EMEA
        {
            if(!strcmp((const char *)wifiConfig.countryCode,"EMEA"))
            {
                TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"SELECTED");            
            }
            break;
        }
        case 3:  //CUST1
        {
            if(!strcmp((const char *)wifiConfig.countryCode,"CUST1"))
            {
                TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"SELECTED");            
            }
            break;
        }
        case 4:  //CUST2
        {
            if(!strcmp((const char *)wifiConfig.countryCode,"CUST2"))
            {
                TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"SELECTED");            
            }
            break;
        }
    }
}
void TCPIP_HTTP_Print_config_stassid(HTTP_CONN_HANDLE connHandle)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)wifiConfig.staConfig.ssid);
}
void TCPIP_HTTP_Print_config_stapwd(HTTP_CONN_HANDLE connHandle)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    TCPIP_TCP_StringPut(sktHTTP,(const uint8_t *)wifiConfig.staConfig.psk);
}
void TCPIP_HTTP_Print_config_stachannel(HTTP_CONN_HANDLE connHandle)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    TCPIP_TCP_Put(sktHTTP,CONVERT_TO_ASCII(wifiConfig.staConfig.channel));
}
void TCPIP_HTTP_Print_config_autoconnect(HTTP_CONN_HANDLE connHandle,uint16_t val)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    if(val == wifiConfig.staConfig.autoConnect)
        TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"SELECTED");
}

void TCPIP_HTTP_Print_config_staauth(HTTP_CONN_HANDLE connHandle,uint16_t val)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    if(val == wifiConfig.staConfig.authType)
        TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"SELECTED");

}
void TCPIP_HTTP_Print_config_apssid(HTTP_CONN_HANDLE connHandle)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)wifiConfig.apConfig.ssid);

}

void TCPIP_HTTP_Print_config_appwd(HTTP_CONN_HANDLE connHandle)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)wifiConfig.apConfig.psk);
}
void TCPIP_HTTP_Print_config_apauth(HTTP_CONN_HANDLE connHandle,uint16_t val)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    if(val == wifiConfig.apConfig.authType)
        TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"SELECTED");
}
void TCPIP_HTTP_Print_config_apchannel(HTTP_CONN_HANDLE connHandle)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    TCPIP_TCP_Put(sktHTTP,CONVERT_TO_ASCII(wifiConfig.apConfig.channel));
}
void TCPIP_HTTP_Print_config_ssidv(HTTP_CONN_HANDLE connHandle,uint16_t val)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);
    if(val == wifiConfig.apConfig.ssidVisibility)
        TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"SELECTED");
}

void TCPIP_HTTP_Print_scan(HTTP_CONN_HANDLE connHandle)
{
    uint8_t scanInProgressString[4];
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);

    uitoa((uint16_t)false, scanInProgressString);
    TCPIP_TCP_StringPut(sktHTTP, scanInProgressString);
}

void TCPIP_HTTP_Print_bssCount(HTTP_CONN_HANDLE connHandle)
{
    uint8_t bssCountString[4];
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);

    if(g_u8BssCount > -1)
    {
        s_scanResultIsValid = 1;
    }
    else
        s_scanResultIsValid = 0;

    uitoa(g_u8BssCount, bssCountString);
    TCPIP_TCP_StringPut(sktHTTP, bssCountString);
}

void TCPIP_HTTP_Print_valid(HTTP_CONN_HANDLE connHandle)
{
    uint8_t s_scanResultIsValidString[4];
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);

    uitoa((uint8_t)s_scanResultIsValid, s_scanResultIsValidString);
    TCPIP_TCP_StringPut(sktHTTP, s_scanResultIsValidString);
}

void TCPIP_HTTP_Print_name(HTTP_CONN_HANDLE connHandle)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);

    if (s_scanResultIsValid)
    {
#if 0       
        if(g_sTempScanBssInfo.ctx.ssid.length == 0)
        {
            TCPIP_TCP_StringPut(sktHTTP, (uint8_t *)"Hidden Network");
        }
        else 
#endif            
            if(g_sTempScanBssInfo.ctx.ssid.length < 32)
                TCPIP_TCP_StringPut(sktHTTP, g_sTempScanBssInfo.ctx.ssid.name);
            else
            {
                uint8_t buf_tmp[33];
                int i;
                for(i = 0; i < 32; i++) buf_tmp[i] = g_sTempScanBssInfo.ctx.ssid.name[i];
                buf_tmp[32] = 0;
                TCPIP_TCP_StringPut(sktHTTP, buf_tmp);
            }
    }
    else
    {
        TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"0");
    }
}

void TCPIP_HTTP_Print_privacy(HTTP_CONN_HANDLE connHandle)
{
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);

    if (s_scanResultIsValid)
    {
        uint8_t secString[4];
        uint8_t security = g_sTempScanBssInfo.authTypeRecommended;

        uitoa(security, secString);
        TCPIP_TCP_StringPut(sktHTTP, secString);
    }
    else
    {
        TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"0");
    }
}

void TCPIP_HTTP_Print_wlan(HTTP_CONN_HANDLE connHandle)
{
    uint8_t bssTypeString[4];
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);

    if (s_scanResultIsValid)
    {
        uitoa(1, bssTypeString);
        TCPIP_TCP_StringPut(sktHTTP, bssTypeString);
    }
    else
    {
        TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"0");
    }
}

void TCPIP_HTTP_Print_strength(HTTP_CONN_HANDLE connHandle)
{
    uint8_t strVal;
    uint8_t strString[4];
    TCP_SOCKET sktHTTP = TCPIP_HTTP_CurrentConnectionSocketGet(connHandle);

    if (s_scanResultIsValid)
    {
        if (g_sTempScanBssInfo.rssi > -61)
        {
            strVal = 4;
        }
        else if (g_sTempScanBssInfo.rssi > -81)
        {
            strVal = 3;
        }
        else if (g_sTempScanBssInfo.rssi > -101)
        {
            strVal = 2;
        }
        else
        {
            strVal = 1;
        }
        uitoa(strVal, strString);
        TCPIP_TCP_StringPut(sktHTTP, strString);
    }
    else
    {
        TCPIP_TCP_StringPut(sktHTTP, (const uint8_t *)"0");
    }
}

#endif // #if defined(TCPIP_STACK_USE_HTTP_SERVER)
