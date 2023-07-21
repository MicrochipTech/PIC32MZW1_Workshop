/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_mqtt.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app_mqtt.h"

//added
#include "system/mqtt/sys_mqtt.h"
#include "app_sensor.h" // added to get the queueHandle and app_sensorData

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_MQTT_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_MQTT_DATA app_mqttData;

//added
static SYS_WIFI_CONFIG g_wifiConfig;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

int32_t MqttCallback(SYS_MQTT_EVENT_TYPE eEventType, void *data, uint16_t len, void* cookie)
{
    switch(eEventType)
    {
        case SYS_MQTT_EVENT_MSG_RCVD:
        {   
			SYS_MQTT_PublishConfig *psMsg = (SYS_MQTT_PublishConfig *)data;
            psMsg->message[psMsg->messageLength] = 0;
            psMsg->topicName[psMsg->topicLength] = 0;
            SYS_CONSOLE_PRINT("\n[app_mqtt] MqttCallback(): Msg received on Topic: %s ; Msg: %s\r\n", 
				psMsg->topicName, psMsg->message);
            
            // Check for the actuator topic in case of several topics subscribed (Subscribe Topic name in MHC must kept empty in this case)
            if (NULL != strstr((char*) psMsg->topicName, "pic32mz_w1/actuator"))
            {
                /* TODO: Parse the message received and control the on-board LEDs independently via the PLIB functions */
                if (NULL != strstr((char*) psMsg->message, "\"green_led\":{\"state\":1}"))
                {
                    LED_GREEN_On();
                    SYS_CONSOLE_PRINT("[app_mqtt] GREEN LED ON\r\n") ;
                }
                else if (NULL != strstr((char*) psMsg->message, "\"green_led\":{\"state\":0}"))
                {
                    LED_GREEN_Off();
                    SYS_CONSOLE_PRINT("[app_mqtt] GREEN LED OFF\r\n");
                }
                if (NULL != strstr((char*) psMsg->message, "\"red_led\":{\"state\":1}"))
                {
                    LED_RED_On();
                    SYS_CONSOLE_PRINT("[app_mqtt] RED LED ON\r\n");
                }
                else if (NULL != strstr((char*) psMsg->message, "\"red_led\":{\"state\":0}"))
                {
                    LED_RED_Off();
                    SYS_CONSOLE_PRINT("[app_mqtt] RED LED OFF\r\n");
                }
                
            }          
        }
        break;
        
        case SYS_MQTT_EVENT_MSG_DISCONNECTED:
        {
            SYS_CONSOLE_PRINT("\n[app_mqtt] MqttCallback(): MQTT Disconnected\r\n");
            app_mqttData.connected = false;
        }
        break;

        case SYS_MQTT_EVENT_MSG_CONNECTED:
        {
            SYS_CONSOLE_PRINT("\n[app_mqtt] MqttCallback(): MQTT Connected\r\n");
            app_mqttData.connected = true;
        }
        break;

        case SYS_MQTT_EVENT_MSG_SUBSCRIBED:
        {
            SYS_MQTT_SubscribeConfig *psMqttSubCfg = (SYS_MQTT_SubscribeConfig *)data;
            SYS_CONSOLE_PRINT("\n[app_mqtt] MqttCallback(): Subscribed to Topic '%s'\r\n", psMqttSubCfg->topicName);
        }
        break;

        case SYS_MQTT_EVENT_MSG_UNSUBSCRIBED:
        {
            SYS_MQTT_SubscribeConfig *psMqttSubCfg = (SYS_MQTT_SubscribeConfig *)data;
            SYS_CONSOLE_PRINT("\n[app_mqtt] MqttCallback(): UnSubscribed to Topic '%s'\r\n", psMqttSubCfg->topicName);                
        }
        break;

		case SYS_MQTT_EVENT_MSG_PUBLISHED:
		{
            SYS_CONSOLE_PRINT("\n[app_mqtt] MqttCallback(): Published Msg(%d) to Topic\r\n", app_mqttData.pubMsgCnt) ;
            app_mqttData.pubQueued = false ;    // ready to publish a new message
		}
		break;
        
        case SYS_MQTT_EVENT_MSG_CONNACK_TO:
		{
            SYS_CONSOLE_PRINT("\n[app_mqtt] MqttCallback(): Connack Timeout Happened\r\n");                
		}
		break;

        case SYS_MQTT_EVENT_MSG_SUBACK_TO: 
		{
            SYS_CONSOLE_PRINT("\n[app_mqtt] MqttCallback(): Suback Timeout Happened\r\n");                
		}
		break;

        case SYS_MQTT_EVENT_MSG_PUBACK_TO:
		{
            SYS_CONSOLE_PRINT("\n[app_mqtt] MqttCallback(): Puback Timeout Happened\r\n");                
            app_mqttData.pubQueued = false ;    // ready to publish a new message            
		}
		break;

        case SYS_MQTT_EVENT_MSG_UNSUBACK_TO: 
		{
            SYS_CONSOLE_PRINT("\n[app_mqtt] MqttCallback(): UnSuback Timeout Happened\r\n");                
		}
		break;

    }
    return SYS_MQTT_SUCCESS;
}

static void PubTimerCallback(uintptr_t context)
{
    //SYS_CONSOLE_PRINT("[app_mqtt] Timer : Publishing data\r\n");
    app_mqttData.pubFlag = true;
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/
// Publish Periodic MQTT Message
void Publish_PeriodicMsg(void)
{
    // if MQTT is connected and service ready to publish
    if (app_mqttData.connected && !app_mqttData.pubQueued)
    {
        char message[32] = {0};
        SYS_MQTT_PublishTopicCfg sMqttTopicCfg;
        int32_t retVal = SYS_MQTT_FAILURE;
        static float temp = 0.0;
        
        /* All Params other than the message are initialized by the config provided in MHC*/
        strcpy(sMqttTopicCfg.topicName, SYS_MQTT_DEF_PUB_TOPIC_NAME);
        sMqttTopicCfg.topicLength = strlen(SYS_MQTT_DEF_PUB_TOPIC_NAME);
        sMqttTopicCfg.retain = SYS_MQTT_DEF_PUB_RETAIN;
        sMqttTopicCfg.qos = SYS_MQTT_DEF_PUB_QOS;

        /* TODO: Receive the shared temperature data from the queue */
        xQueueReceive(queueHandle, &temp, portMAX_DELAY);
        
        /* TODO: Format temperature value and switch status to message string */
        sprintf(message, "Temperature: %.1f, Button: %d", temp, app_sensorData.switchStatus);

        /* TODO: Publish the message */
        retVal = SYS_MQTT_Publish(app_mqttData.sysMqttHandle, &sMqttTopicCfg, message, sizeof(message));
        if(retVal != SYS_MQTT_SUCCESS)
        {
            SYS_CONSOLE_PRINT("\n[app_mqtt] Publish_PeriodicMsg(): Failed (%d)\r\n", retVal);
        }

        app_mqttData.pubMsgCnt++;
    }
}




// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_MQTT_Initialize ( void )

  Remarks:
    See prototype in app_mqtt.h.
 */

void APP_MQTT_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_mqttData.state = APP_MQTT_STATE_INIT;

    // Init. application thread data
    app_mqttData.sysMqttHandle = SYS_MODULE_OBJ_INVALID;
    app_mqttData.connected = false;
    app_mqttData.pubFlag = false;
    app_mqttData.pubMsgCnt = 0;
    app_mqttData.pubQueued = false;
}


/******************************************************************************
  Function:
    void APP_MQTT_Tasks ( void )

  Remarks:
    See prototype in app_mqtt.h.
 */

void APP_MQTT_Tasks ( void )
{
    /* Check the application's current state. */
    switch ( app_mqttData.state )
    {
        /* Application's initial state. */
        case APP_MQTT_STATE_INIT:
        {
            // poll here until getting Wi-Fi service initialized
            if(SYS_WIFI_CtrlMsg(sysObj.syswifi, SYS_WIFI_GETWIFICONFIG, &g_wifiConfig, sizeof(g_wifiConfig)) == SYS_WIFI_SUCCESS)
            {
                // Wi-Fi service initialized
                if (SYS_WIFI_STA == g_wifiConfig.mode)
                {
                    // Start as a STATION
                    SYS_CONSOLE_PRINT("[app_mqtt] %s(): Device mode = STA \r\n", __func__);
                    app_mqttData.state = APP_MQTT_STATE_MODE_STA;
                }
                else
                {
                    // Start as an AP
                    SYS_CONSOLE_PRINT("[app_mqtt] %s(): Device mode = AP \r\n", __func__);
                    app_mqttData.state = APP_MQTT_STATE_MODE_AP;                
                }
            }
            break;
        }
        case APP_MQTT_STATE_MODE_AP:
        {
            // stay here while provisioning is not complete
            break;
        }
        case APP_MQTT_STATE_MODE_STA:
        {
            /* TODO: Connect to configured MQTT Broker */
            app_mqttData.sysMqttHandle = SYS_MQTT_Connect(NULL, MqttCallback, NULL);
            
            /* TODO: Register a timer callback for publishing every 10 sec with the time system service */
            SYS_TIME_HANDLE handle = SYS_TIME_CallbackRegisterMS(PubTimerCallback, (uintptr_t) 0, 10000, SYS_TIME_PERIODIC) ;
            if (handle == SYS_TIME_HANDLE_INVALID)
            {
                SYS_CONSOLE_PRINT("[app_mqtt] Failed creating a timer for publish \r\n");
            }
            
            
            /* TODO: move to the APP_STATE_SERVICE_TASKS state */
            app_mqttData.state = APP_STATE_SERVICE_TASKS;
            
            break;
        }
        case APP_STATE_SERVICE_TASKS:
        {
            if (app_mqttData.pubFlag)
            {
                app_mqttData.pubFlag = false;
                Publish_PeriodicMsg();
            }
            /* TODO: Maintain the MQTT Service state machine running */
            SYS_MQTT_Task(app_mqttData.sysMqttHandle);
            
            break;
        }

        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
