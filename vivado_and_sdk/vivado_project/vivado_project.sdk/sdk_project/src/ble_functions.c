#include "ble_functions.h"


PmodBLE ble_device;        // structure of bluetooth communication and its
                            //informations
SysUart uart_device;        // structure of uart communication by system.


/*
 * Procedure that starts the bluetooth communication.
 */
void starting_ble_communication ()
{
    // calls the bluetooth system, setting it up.
    BLE_Begin (
        &ble_device,
        XPAR_PMODBLE_0_S_AXI_GPIO_BASEADDR,
        XPAR_PMODBLE_0_S_AXI_UART_BASEADDR,
        BLE_UART_AXI_CLOCK_FREQ,
    BAUD_RATE
    );
}


void send_ble (char messenge)
{
    u8 buffer [1];

    // prepares buffer with question command
    buffer[0] = messenge;

    // sends the messenge question
    BLE_SendData(&ble_device, buffer, 1);
}



char send_and_wait_confirmation_ble (char messenge)
{
    u8 buffer [1], status;
    XTmrCtr TimerCounter;                 // Struct to count the time
    u32 time = 0,
            pulse_duration;                // Time counting
    const u16 DeviceID = 0;                // Id of time device

    // prepares buffer with question command
    buffer[0] = messenge;

    // use a time count to not wait so long for the answer
    status = XTmrCtr_Initialize(&TimerCounter, DeviceID);
    // If failure, end the application
    if (status != SUCCESS)
        return FAILURE;

    // sends the messenge question
    BLE_SendData(&ble_device, buffer, 1);

    // Calcules the pulse width by its time
    XTmrCtr_Start(&TimerCounter, TIMER_COUNTER_0);

    // change the buffer to trash
    buffer[0] = 'g';

    do {
    	time = XTmrCtr_GetValue(&TimerCounter, TIMER_COUNTER_0);

		// Calcules the pulse duration by the formula below
		pulse_duration = (time) / CLOCKS_PER_SECOND;

		if (DEBUG) xil_printf("Waiting BLE connection      %c      \r", buffer[0]);
		if (pulse_duration > WAIT_ANSWER_TIME)
			return DEVICE_OFF;

		BLE_RecvData(&ble_device, buffer, 1);
    } while (buffer[0] != '1') ;

    // Stops the pulse calculation
    XTmrCtr_Stop(&TimerCounter, TIMER_COUNTER_0);

    if (buffer[0] == '1')
        return DEVICE_ON;
    else
        return DEVICE_OFF;
}


char send_and_wait_response_ble (char messenge)
{
    u8 buffer [1];

    // prepares buffer with question command
    buffer[0] = messenge;

    // sends the messenge question
    BLE_SendData(&ble_device, buffer, 1);

    // waits the response
    BLE_RecvData(&ble_device, buffer, 1);

    // returns it
    return buffer[0];
}



char send_distance_ble (float *distance)
{
    u8 buffer [3];
    int i;
    char status;

    // we will send distances values
    status = send_and_wait_confirmation_ble ('d');
    if (status == DEVICE_OFF) return XST_FAILURE;

    // and we will send QUANT_SENSORS values
    status = send_and_wait_confirmation_ble ((char) QUANT_SENSORS + 48);
    if (status == DEVICE_OFF) return XST_FAILURE;


    for (i = 0; i < QUANT_SENSORS; i++) {
    	xil_printf("%d\n", (int) distance[i]);

        // prepares buffer with question command
        sprintf((char *) buffer, "%03d", (int) distance[i]);

        // sends the messenge question
        BLE_SendData(&ble_device, buffer, 3);

        xil_printf("Sending distances");

        send_ble (',');
    }

    return XST_SUCCESS;
}


/*
 * Procedure that verifies if the device bluetooth still connected.
 * @return boolean.
 */
char is_ble_connected (XGpio * gpio_led, u8 * reg_leds)
{
    char status;
    status = send_and_wait_confirmation_ble('?');

    if (status == DEVICE_OFF)
    	leds(gpio_led, 2, 0, reg_leds);
    else
    	leds(gpio_led, 2, 1, reg_leds);

    return status;
}
