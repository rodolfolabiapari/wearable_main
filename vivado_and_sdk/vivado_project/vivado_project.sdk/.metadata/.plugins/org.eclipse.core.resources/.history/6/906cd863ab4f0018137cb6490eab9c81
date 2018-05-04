
#ifndef SRC_LEDS_SWITCHS_FUNCTIONS_H_
#define SRC_LEDS_SWITCHS_FUNCTIONS_H_

#include "sleep.h"              // file to use the usleep f
#include "xtmrctr.h"            // Time count
#include "xil_types.h"          // file with types of vars
#include "xil_assert.h"         // file of asserts
#include "xstatus.h"            // Constants from Xilinx
#include "xgpio.h"              // AXI GPIO
#include "erros_msg.h"


#define MASK_LEDS               0b00000    // Mask to leds
#define MASK_LED_1              0b00001    // Mask to leds, led 1 only
#define MASK_LED_2              0b00010    // Mask to leds, led 2 only
#define MASK_LED_3              0b00100    // Mask to leds, led 3 only
#define MASK_LED_4              0b01000    // Mask to leds, led 4 only
#define MASK_SWITCHS            0b01111    // Mask to switchs
#define MASK_SWITCH_ON_OFF      0b00001    // Mask to switch on off only


#define CHANNEL_GPIO_LED        1          // LEDs channel
#define CHANNEL_GPIO_SWITCH     2          // SWITCH channel


/*
 * Procedure that update the leds by register sent via parameters.
 * @param gpio_led: gpio structure.
 * @param reg_leds: register to be set on leds.
 */
void led_update (XGpio * gpio_led, u8 * reg_leds);

/*
 * Procedure that clears all leds from FPGA.
 */
void clear_all_leds (XGpio * gpio_led, u8 * reg_leds);

/*
 * Set the leds on board by action and bit positions
 *
 * This procedure changes the status of four leds. The leds are selected by
 * bit in leds var and the action is choosen by boolean action.
 *
 * @param Gpio structure;
 * @param leds: A bit number of leds to apply the action. The value 0b011 will
 * be done on two firsts leds
 * @param action: 0 clear; 1 set.
 */
void leds (XGpio * gpio_led, unsigned char leds, char action, u8 * reg_leds);

/*
 * Procedure that verify if the switch power button is active to start the
 * system.
 * @return is device on boolean.
 */
char is_device_on(XGpio * gpio_led_switch, u8 * reg_leds);

#endif
