/*******************************************************************************
  MPLAB Harmony Application Header File

  Company:
    Microchip Technology Inc.

  File Name:
    app_sensor.h

  Summary:
    This header file provides prototypes and definitions for the application.

  Description:
    This header file provides function prototypes and data type definitions for
    the application.  Some of these are required by the system (such as the
    "APP_SENSOR_Initialize" and "APP_SENSOR_Tasks" prototypes) and some of them are only used
    internally by the application (such as the "APP_SENSOR_STATES" definition).  Both
    are defined here for convenience.
*******************************************************************************/

#ifndef _APP_SENSOR_H
#define _APP_SENSOR_H

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "configuration.h"

//added
#include "FreeRTOS.h"
#include "queue.h"

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Type Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application states

  Summary:
    Application states enumeration

  Description:
    This enumeration defines the valid application states.  These states
    determine the behavior of the application at various times.
*/

typedef enum
{
    /* Application's state machine's initial state. */
    APP_SENSOR_STATE_INIT=0,
    APP_SENSOR_STATE_MONITOR_SWITCH,
    APP_SENSOR_STATE_READ_ADC
} APP_SENSOR_STATES;

//added
extern QueueHandle_t queueHandle;

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    Application strings and buffers are be defined outside this structure.
 */
    
typedef struct
{
    /* The application's current state */
    APP_SENSOR_STATES state;
    bool adcReady;          // Flag to inform when conversion is done
    uint16_t adcCount;      // Result of the AD conversion
    float temp;             // Temperature value
    bool switchStatus;      // SWITCH1_STATE_PRESSED or SWITCH1_STATE_RELEASED
    uint16_t switchCnt;     // button press counter
} APP_SENSOR_DATA;
extern APP_SENSOR_DATA app_sensorData; 

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Routines
// *****************************************************************************
// *****************************************************************************
/* These routines are called by drivers when certain events occur.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_SENSOR_Initialize ( void )

  Summary:
     MPLAB Harmony application initialization routine.

  Description:
    This function initializes the Harmony application.  It places the
    application in its initial state and prepares it to run so that its
    APP_SENSOR_Tasks function can be called.

  Precondition:
    All other system initialization routines should be called before calling
    this routine (in "SYS_Initialize").

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_SENSOR_Initialize();
    </code>

  Remarks:
    This routine must be called from the SYS_Initialize function.
*/

void APP_SENSOR_Initialize ( void );


/*******************************************************************************
  Function:
    void APP_SENSOR_Tasks ( void )

  Summary:
    MPLAB Harmony Demo application tasks function

  Description:
    This routine is the Harmony Demo application's tasks function.  It
    defines the application's state machine and core logic.

  Precondition:
    The system and application initialization ("SYS_Initialize") should be
    called before calling this.

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    APP_SENSOR_Tasks();
    </code>

  Remarks:
    This routine must be called from SYS_Tasks() routine.
 */

void APP_SENSOR_Tasks( void );

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif /* _APP_SENSOR_H */

/*******************************************************************************
 End of File
 */

