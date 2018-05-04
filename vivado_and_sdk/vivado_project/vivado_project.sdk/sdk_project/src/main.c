/*
 * Source of Wearable Application
 * Coded by: Fjara
 *
 *
 * Observations:
 * CHANNEL OF GPIO DEVICES: is always 1 or 2;
 * OUTPUT/INPUT OF GPIO:    output 0        and Input: 0xFFFFFFFF
 */

// Includes
#include "platform.h"           // Uart communication and caches
#include "xil_printf.h"         // To print in console
#include "xstatus.h"            // Constants for status of system
#include "xgpio.h"              // AXI GPIO
#include "xparameters.h"        // Information about AXI peripherals
#include "xil_cache.h"          // Cache Manager

#include "erros_msg.h"
#include "ble_functions.h"      // My bluetooth functions
#include "distance_functions.h" // My HC-SR04 functions
#include "leds_switchs_functions.h"

void clear_screen ()
{
   if (DEBUG) xil_printf("\e[1;1H\e[2J\r");
}


/*
 * Procedure that compare the current distance of user and the safety distance,
 * and return the situation that his are.
 *
 * @pa,≤ram current_distance: distance read via sensor;
 * @param safety_distance: a minimum distance to keep the user safe.
 * @return a constant that represents the user's situationn.
 */
char verify_safety_distance (float *current_distance, float safety_distance)
{
    int i = 0;

    for (i = 0; i < QUANT_SENSORS; i++) {
        // Verifies the situation that the user are
        if (current_distance[i] > safety_distance) {
            if (DEBUG) xil_printf("--- The user is safe\r\n|------");
        } else
        {
             if (DEBUG) xil_printf("--- The user is not safe\r\n|------");
             return WARNING_SITUATION;
        }
    }

    return NORMAL_SITUATION;
}


/*
 * Procedure that evaluate the situation sent via parameter and, after that,
 * sends a messenge to a device connected of a current situation of user.
 * This is required to the other device can warning the user, if needed.
 * @param situation: situation of user
 */
char evaluate_situation (char situation)
{
    // we will send the situation
    send_ble('s');

    xil_printf("Sending situation");

    if (situation == WARNING_SITUATION)
        // Sends messenger to device
        return send_and_wait_confirmation_ble('W');
    else
        // Sends messenger to device
        return send_and_wait_confirmation_ble('S');
}


/*
 * Main procedure
 * Procedure that organize all the system
 * @return status of executation
 */
int main (void)
{
    init_platform();
    // Variable declarations
    // GPIO structures;
    XGpio gpio_shield, gpio_led_switch;

    // States variables
    u8 status;
    float distance[QUANT_SENSORS], variance = 0, sd = 0, safety_distance = 30.0;
    // state that the user is
    char situation = 0;

    // Leds register
    u8 reg_leds = 0;

    // Initialize the GPIO devices.
    // Gets the information form the GPIO, SHIELD device
    status = XGpio_Initialize(&gpio_shield, XPAR_AXI_GPIO_SHIELD_DEVICE_ID);
    // If failure, end the application
    if (status != XST_SUCCESS) return XST_FAILURE;

    // Gets the information form the GPIO, LED_SWITCH device
    status = XGpio_Initialize(&gpio_led_switch, XPAR_AXI_GPIO_LED_SWITCH_DEVICE_ID);
    // If failure, end the application
    if (status != XST_SUCCESS) return XST_FAILURE;

    // Setting the first and second channel to Input
    XGpio_SetDataDirection(&gpio_shield, CHANNEL_GPIO_00_to_19, MASK_HCSR04);

    // Setting the first and second channel to Input
    XGpio_SetDataDirection(&gpio_led_switch, CHANNEL_GPIO_LED,  MASK_LEDS);
    XGpio_SetDataDirection(&gpio_led_switch, CHANNEL_GPIO_SWITCH, MASK_SWITCHS);

    starting_ble_communication();

    status = SUCCESS;

    while (is_device_on(&gpio_led_switch, &reg_leds) == DEVICE_OFF)
        if (DEBUG) xil_printf("Device is off. Use the SW0 to turn it on.   \r");

    if (DEBUG) xil_printf("DEBUG MODE ON\r\n");
    if (DEBUG) xil_printf("Starting the system!\r\n");


    while (is_device_on(&gpio_led_switch, &reg_leds) == DEVICE_ON) {

        while (is_ble_connected(&gpio_led_switch, &reg_leds) == DEVICE_OFF)
            if (DEBUG) xil_printf("BLE is not connected.                       \r");

        if (DEBUG) xil_printf("|--- Stating BLE communication\r\n|---");

        do {
            if (DEBUG) xil_printf(" Stating Processing\r\n|---");
            if (DEBUG) xil_printf("--- Getting the distance\r\n|------");

            // Gets the distance of HC-SR04
            measure_distance (&gpio_shield, distance, &variance, &sd);

            // Sends the distance of user to device connected
            status = send_distance_ble(distance);

            if (status == FAILURE) {
				if (DEBUG) xil_printf(" Ending processing -- ERROR SEND DISTANCE\r\n");
			}

            // Verifies the value received
            if (DEBUG) xil_printf(" Verifying the safety\r\n|------");
            situation = verify_safety_distance(distance, safety_distance);

            if (DEBUG) xil_printf(" Evaluating the situation\r\n|---");
            status = evaluate_situation(situation);

            if (status == FAILURE) {
                if (DEBUG) xil_printf(" Ending processing -- ERROR EVALUATE SITUATION\r\n");
                break;
            }
            else
                if (DEBUG) xil_printf(" Restating the evaluation\r\n");

            clear_screen();

            if (DEBUG) xil_printf("DEBUG MODE ON\r\n");
            if (DEBUG) xil_printf("Starting the system!\r\n");
            if (DEBUG) xil_printf("|--- Stating BLE communication\r\n|---");

        } while ((is_device_on(&gpio_led_switch, &reg_leds)
                || is_ble_connected(&gpio_led_switch, &reg_leds)
                ) == DEVICE_ON);

    }

    if (DEBUG) xil_printf("\r");

    cleanup_platform();

    if (status == XST_FAILURE || status == FAILURE) {
        if (DEBUG) xil_printf("Ending system (%d)! \r\n", XST_FAILURE);
        return XST_FAILURE;
    }

    if (DEBUG) xil_printf("Ending system (%d)! \r\n", XST_SUCCESS);
    return XST_SUCCESS;
}