
#ifndef SRC_BLE_FUNTIONS_H_
#define SRC_BLE_FUNTIONS_H_

#include "PmodBLE.h"            // Bluetooth library
#include "xuartlite.h"          // UART system library
#include "xtmrctr.h"            // Time count
#include "sleep.h"              // file to use the usleep f
#include "xil_types.h"          // file with types of vars
#include "xil_assert.h"         // file of asserts
#include "xstatus.h"            // Constants from Xilinx
#include "xgpio.h"              // AXI GPIO

#include "erros_msg.h"
#include "leds_switchs_functions.h"
#include "constants.h"

typedef XUartLite SysUart;

#define BAUD_RATE                 9600                             // baud rate of bluetooth communication
#define SysUart_Send              XUartLite_Send                   // Renaming the uart function send
#define SysUart_Recv              XUartLite_Recv                   // Renaming the uart function receive
#define SYS_UART_DEVICE_ID        XPAR_AXI_UARTLITE_0_DEVICE_ID    // Renaming a constant device id
#define BLE_UART_AXI_CLOCK_FREQ   XPAR_CPU_M_AXI_DP_FREQ_HZ        // Renaming a constant system

#define WAIT_ANSWER_TIME          2                               // Seconds

#define CM_IS_CONNECTED          '0'
#define CM_NORMAL_SITUATION      '1'
#define CM_WARNING_SITUATION     '2'

/*
 * Procedure that starts the bluetooth communication.
 */
void starting_ble_communication ();

void send_ble (char messenge);
char send_and_wait_confirmation_ble (char messenge);
char send_and_wait_response_ble (char messenge);
char send_distance_ble (float *distance, float *variance, float *sd);

char is_ble_connected (XGpio * gpio_led, u8 * reg_leds);

#endif
