
#ifndef SRC_DISTANCE_FUNCTIONS_H_
#define SRC_DISTANCE_FUNCTIONS_H_


#include "sleep.h"              // file to use the usleep f
#include "xtmrctr.h"            // Time count
#include "xil_types.h"          // file with types of vars
#include "xil_assert.h"         // file of asserts
#include "xstatus.h"            // Constants from Xilinx
#include "xgpio.h"              // AXI GPIO
#include "erros_msg.h"
#include "constants.h"
#include <math.h>
#include <string.h>

// Masks for bit operations
#define MASK_HCSR04             0b00001    // Mask to hcsr04 sensor
#define MASK_HCSR04_INPUT       0b00001    // Mask to hcsr04 sensor inputs only
#define MASK_HCSR04_OUTPUT      0b00010    // Mask to hcsr04 sensor outputs only

// Channels to devices of application
#define CHANNEL_HC_SR04         1          // Channel of this devices
#define CHANNEL_GPIO_00_to_19   1          // GPIO channel
#define CHANNEL_GPIO_26_to_41   2          // GPIO channel

#define NORMAL_SITUATION       '0'        // a code for a normal situation of user
#define WARNING_SITUATION      '1'        // a code for a warning situation of user
#define EMERGENCY_SITUATION     2          // clocks per mili second

#define MAX_DISTANCE_SENSOR     344
//#define MAX_PULSE               1850000
#define MAX_PULSE               2000000

#define TIMES_MEASURES          6


u32 request_pulse_hcsr04_sensor(XGpio * gpio_in);


void calcule_stats(float v[TIMES_MEASURES], float * avg, float * variance, float * sd);

/*
 * It manages the ultrasonic sensor. Gets the value and calcules the distance.
 * https://www.modmypi.com/blog/hc-sr04-ultrasonic-range-sensor-on-the-raspberry-pi
 *
 * @param XGpio *gpio_in: Gpio structure for use.
 * @param char channel: channel of GPIO.
 * @return distance in centimeters.
 */
float get_distance_sensor (XGpio *gpio_in);

/*
 * Procedure that measures the distance usint a average of times_measures times.
 * It returns a average of distance's read.
 *
 * @param: gpio_in: gpio structure.
 * @param: times_measures: times of numbers of average.
 * @return: average of distance measured.
 */
void measure_distance (XGpio *gpio_in, float * avg, char * pos_circle_vec, float * variance, float * sd);

#endif
