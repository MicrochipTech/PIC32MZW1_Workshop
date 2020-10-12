/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_sensor.c

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

#include "app_sensor.h"
// added
#include "definitions.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

QueueHandle_t queueHandle;

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_SENSOR_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_SENSOR_DATA app_sensorData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

// ADC End of Conversion Callback
void ADC_ResultHandler(ADCHS_CHANNEL_NUM channel, uintptr_t context) 
{
    app_sensorData.adcCount = ADCHS_ChannelResultGet(ADCHS_CH15);
    app_sensorData.adcReady = true;
}



// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_SENSOR_Initialize ( void )

  Remarks:
    See prototype in app_sensor.h.
 */

void APP_SENSOR_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_sensorData.state = APP_SENSOR_STATE_INIT;

    // Init. application thread data
    app_sensorData.adcCount = 0;
    app_sensorData.adcReady = false;
    app_sensorData.switchCnt = 0;
    app_sensorData.switchStatus = false;
    
}


/******************************************************************************
  Function:
    void APP_SENSOR_Tasks ( void )

  Remarks:
    See prototype in app_sensor.h.
 */

void APP_SENSOR_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( app_sensorData.state )
    {
        /* Application's initial state. */
        case APP_SENSOR_STATE_INIT:
        {
            /* TODO: Register callback function for ADCHS end of conversion interrupt of channel 15 */
            ADCHS_CallbackRegister(ADCHS_CH15, ADC_ResultHandler, (uintptr_t) NULL);
            
            
            /* TODO: Using PLIB, start timer 3 for ADC trigger */
            TMR3_Start();
            
            /* TODO: Create a queue of float to share temperature data with other task*/
            queueHandle = xQueueCreate(1, sizeof(float));
            if (queueHandle == NULL)
            {
                /* Handle error condition. Not sufficient memory to create Queue */
            }
            
                        
            
            /* TODO: move to the APP_SENSOR_STATE_MONITOR_SWITCH state */
            app_sensorData.state = APP_SENSOR_STATE_MONITOR_SWITCH;
            
            break;
        }
        case APP_SENSOR_STATE_MONITOR_SWITCH:
        {
            static uint8_t switchPressedCnt = 0;
            if (SWITCH1_Get() == SWITCH1_STATE_PRESSED)
            {
                switchPressedCnt++ ;
                if (switchPressedCnt == 2)
                {
                    app_sensorData.switchStatus = true;
                    app_sensorData.switchCnt++;
                    SYS_CONSOLE_PRINT("[app_sensor_thread] SW1 pressed (%d)\r\n", app_sensorData.switchCnt);
                }
                else if (switchPressedCnt == 100)
                {
                    app_sensorData.switchCnt = 0;
                    SYS_CONSOLE_PRINT("[app_sensor_thread] SW1 pressed (%d)\r\n", app_sensorData.switchCnt);
                }
            }
            else
            {
                switchPressedCnt = 0;
                app_sensorData.switchStatus = false;
            }
            /* TODO: move to the APP_SENSOR_STATE_READ_ADC state */
            app_sensorData.state = APP_SENSOR_STATE_READ_ADC;
        }
        case APP_SENSOR_STATE_READ_ADC:
        {    
            /* Average over APP_SENSOR_ADC_AVG_COUNT ADC samples */
            static uint32_t adcCountAccumulate = 0;
            static uint16_t adcAccumulateNum = 0;
            #define APP_SENSOR_ADC_AVG_COUNT 32
            if (app_sensorData.adcReady)
            {
                if (adcAccumulateNum <= APP_SENSOR_ADC_AVG_COUNT)
                {
                    adcCountAccumulate += app_sensorData.adcCount;
                    adcAccumulateNum++;
                } 
                else
                {
                    adcCountAccumulate = adcCountAccumulate / APP_SENSOR_ADC_AVG_COUNT;
                    // Ta = (Vout - V0) / Tc = (mVolts - 500) / 10.0
                    // Convert A/D sampling value to voltage in mV
                    // It can detect 0.3V in 4096 steps (12-bit ADC))
                    float mVolts = (float) adcCountAccumulate * 3300 / 4096.0;
                    // According to TC1047 datasheet, sensor out voltage V0 = 500mV @0°C and V0 = 750mV @+25°C
                    float ambientTemp = (mVolts - 500);
                    // Voltage slope output = Temp coeff. = 10mV/°C
                    ambientTemp /= 10.0;
                    // Store temperature in App data
                    app_sensorData.temp = ambientTemp;
                    /* Prepare for the next averaging cycle */
                    adcAccumulateNum = 0;
                    adcCountAccumulate = 0;
                    SYS_CONSOLE_PRINT("[app_sensor_thread] Temp=%0.1f\r\n", app_sensorData.temp);
                    
                    /* TODO: Use FreeRTOS queue to notify the MQTT task to publish the temperature value */
                    // Don't block if the queue is already full.
                    xQueueSend(queueHandle, &app_sensorData.temp, (TickType_t) 0);
                }
                app_sensorData.adcReady = false;
            }

            /* TODO: move to the APP_SENSOR_STATE_MONITOR_SWITCH state */
            app_sensorData.state = APP_SENSOR_STATE_MONITOR_SWITCH;
            break ;
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
