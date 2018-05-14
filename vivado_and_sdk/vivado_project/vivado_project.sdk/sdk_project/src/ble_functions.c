#include "ble_functions.h"

PmodBLE ble_device;        // structure of bluetooth communication and its
                            //informations
//SysUart uart_device;        // structure of uart communication by system.

void EnableCaches()
{
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_ICACHE
    Xil_ICacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_USE_DCACHE
    Xil_DCacheEnable();
#endif
#endif
}

void DisableCaches()
{
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_DCACHE
    Xil_DCacheDisable();
#endif
#ifdef XPAR_MICROBLAZE_USE_ICACHE
    Xil_ICacheDisable();
#endif
#endif
}


/*
 * Procedure that starts the bluetooth communication.
 */
void starting_ble_communication ()
{
	EnableCaches();
    // calls the bluetooth system, setting it up.
    BLE_Begin (
        &ble_device,
        XPAR_PMODBLE_0_S_AXI_GPIO_BASEADDR,
        XPAR_PMODBLE_0_S_AXI_UART_BASEADDR,
        BLE_UART_AXI_CLOCK_FREQ,
    BAUD_RATE
    );
}


char send_ble (char messenge)
{
    u8 buffer [1];

    // prepares buffer with question command
    buffer[0] = messenge;

    // sends the messenge question
    return BLE_SendData(&ble_device, buffer, 1);
}



char send_and_wait_confirmation_ble (char messenge)
{
    static u8 buffer [1], status;
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

    status = 0;
    do {
    	time = XTmrCtr_GetValue(&TimerCounter, TIMER_COUNTER_0);

        // Calcules the pulse duration by the formula below
        pulse_duration = (time) / CLOCKS_PER_SECOND;

        //if (DEBUG) xil_printf("Waiting BLE connection      %c      \r", buffer[0]);
        if (pulse_duration > WAIT_ANSWER_TIME)
            return DEVICE_OFF;

        status = BLE_RecvData(&ble_device, buffer, 1);
    } while (status != 1 || buffer[0] != '1') ;

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



char send_distance_ble (float *distance, float *variance, float *sd)
{
    const int TAM_BUFFER = 10;
    u8 buffer [TAM_BUFFER];
    int i;
    char status;

    // we will send distances values
    status = send_and_wait_confirmation_ble ('d');
    if (status == DEVICE_OFF) return XST_FAILURE;

    // and we will send QUANT_SENSORS values
    status = send_and_wait_confirmation_ble ((char) QUANT_SENSORS + 48);
    if (status == DEVICE_OFF) return XST_FAILURE;

    status = 0;
    xil_printf("\n");
    for (i = 0; i < QUANT_SENSORS; i++) {
    	if (status < i) status = i;

    	xil_printf("\rS%d:%d - Dist:%d  V:%d  SD:%d        ", i, status, (int) distance[i], (int) variance[i], (int) sd[i]);
        // prepares buffer with question command
        buffer[0] = '\0';
        sprintf((char *) buffer, "%03.01f", distance[i]);
        // sends the messenge question
        BLE_SendData(&ble_device, buffer, 6);

    	xil_printf("\rS%d:%d - Dist:%d  V:%d  SD:%d        ", i, status, (int) distance[i], (int) variance[i], (int) sd[i]);

        status = send_ble ('e');
        if (status != 1) return XST_FAILURE;
        
        //xil_printf("\n\rVariance: %d\n\r", (int) variance[i]);

        // prepares buffer with question command
        buffer[0] = '\0';
        sprintf((char *) buffer, "%05.01f", variance[i]);

        // sends the messenge question
        BLE_SendData(&ble_device, buffer, 8);

    	xil_printf("\rS%d:%d - Dist:%d  V:%d  SD:%d        ", i, status, (int) distance[i], (int) variance[i], (int) sd[i]);

        status = send_ble ('e');
        if (status != 1) return XST_FAILURE;

        // prepares buffer with question comman
        buffer[0] = '\0';
        sprintf((char *) buffer, "%03.01f", sd[i]);

        // sends the messenge question
        BLE_SendData(&ble_device, buffer, 6);

    	xil_printf("\rS%d:%d - Dist:%d  V:%d  SD:%d        ", i, status, (int) distance[i], (int) variance[i], (int) sd[i]);

        status = send_ble (';');
        if (status != 1) return XST_FAILURE;

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
