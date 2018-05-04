#include "leds_switchs_functions.h"


/*
 * Procedure that update the leds by register sent via parameters.
 * @param gpio_led: gpio structure.
 * @param reg_leds: register to be set on leds.
 */
void led_update (XGpio * gpio_led, u8 * reg_leds)
{
    XGpio_DiscreteWrite(gpio_led, CHANNEL_GPIO_LED, *reg_leds);
}

/*
 * Procedure that clears all leds from FPGA.
 */
void clear_all_leds (XGpio * gpio_led, u8 * reg_leds)
{
    // changes the register
    *reg_leds = 0;
    // updates the register
    led_update(gpio_led, reg_leds);
}


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
void leds (XGpio * gpio_led, unsigned char leds, char action, u8 * reg_leds)
{
    // is it to turn on?
    if (action == 1) {
        // find the leds that will change its status and update its register
        if (leds & MASK_LED_1) *reg_leds |=  MASK_LED_1;
        if (leds & MASK_LED_2) *reg_leds |=  MASK_LED_2;
        if (leds & MASK_LED_3) *reg_leds |=  MASK_LED_3;
        if (leds & MASK_LED_4) *reg_leds |=  MASK_LED_4;
    // is it to turn off?
    } else {
        // find the leds that will change its status and update its register
        if (leds & MASK_LED_1) *reg_leds &= ~MASK_LED_1;
        if (leds & MASK_LED_2) *reg_leds &= ~MASK_LED_2;
        if (leds & MASK_LED_3) *reg_leds &= ~MASK_LED_3;
        if (leds & MASK_LED_4) *reg_leds &= ~MASK_LED_4;
    }

    // refresh the gpio by the new register of leds
    led_update(gpio_led, reg_leds);
}

/*
 * Procedure that verify if the switch power button is active to start the
 * system.
 * @return is device on boolean.
 */
char is_device_on(XGpio * gpio_switch, u8 * reg_leds)
{
    u8 reg;
    // reads the switch register
    reg = XGpio_DiscreteRead(gpio_switch, CHANNEL_GPIO_SWITCH);

    // verifies the switch power one.
    if (reg & MASK_SWITCH_ON_OFF) {
        // the device is turned on
    	leds(gpio_switch, 1, 1, reg_leds);
        return DEVICE_ON;
    }
    else {
    	leds(gpio_switch, 1, 0, reg_leds);
        // the device is turned off
        return DEVICE_OFF;
    }
}
