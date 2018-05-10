
#include "distance_functions.h"



u32 request_pulse_hcsr04_sensor(XGpio * gpio_in) {

    XTmrCtr TimerCounter;                 // Struct to count the time
    u8 status = 0;                        // Function's Status verification
    const u16 DeviceID = 0;               // Id of time device

    // Initialize the time structure
    status = XTmrCtr_Initialize(&TimerCounter, DeviceID);
    // If failure, end the application
    if (status != SUCCESS)
        return FAILURE;

    // Does the trigger on HC-SR04 trigg pin
    XGpio_DiscreteSet(gpio_in, CHANNEL_GPIO_00_to_19, MASK_HCSR04_OUTPUT);

    usleep(5);

    XGpio_DiscreteClear(gpio_in, CHANNEL_GPIO_00_to_19, MASK_HCSR04_OUTPUT);

    // Waits for the response of up edge
    while ((XGpio_DiscreteRead(gpio_in, CHANNEL_GPIO_00_to_19) & MASK_HCSR04_INPUT) == 0);

    XTmrCtr_Start(&TimerCounter, TIMER_COUNTER_0);

    // Waits the down edge, when tells the pulse ended and stop the timer
    while ((XGpio_DiscreteRead(gpio_in, CHANNEL_GPIO_00_to_19) & MASK_HCSR04_INPUT) != 0) {
    	// Geth the value of time measured

    	if (XTmrCtr_GetValue(&TimerCounter, TIMER_COUNTER_0) > MAX_PULSE)
    		return MAX_PULSE;
    }


    // Stops the pulse calculation
    XTmrCtr_Stop(&TimerCounter, TIMER_COUNTER_0);

    // Geth the value of time measured
    return XTmrCtr_GetValue(&TimerCounter, TIMER_COUNTER_0);
}

void calcule_stats(float v[TIMES_MEASURES], float * avg, float * variance, float * sd)
{
    float sum = 0;
    int i = 0;

    // Searches for the max and min values
    for (i = 0; i < TIMES_MEASURES; i++) {
        sum += v[i];
    }

    // Calcules the avg
    *avg = sum / (TIMES_MEASURES);

     // Variances
    for (i = 0; i < TIMES_MEASURES; i++) {
        *variance += (v[i] - *avg) * (v[i] - *avg);
    }

    *variance /= TIMES_MEASURES - 1;

    *sd = sqrt(*variance);
}


/*
 * Procedure that measures the distance usint a average of times_measures times.
 * It returns a average of distance's read.
 *
 * @param: gpio_in: gpio structure.
 * @param: times_measures: times of numbers of average.
 * @return: average of distance measured.
 */
void measure_distance (XGpio *gpio_in, float * dist, char * pos, float * avg, float * variance, float * sd)
{
    float avg_buffer = 0;
    int i = 0, turn, which_sensor = 0;

    for (i = 0; i < TIMES_MEASURES; i++) {
         dist[*pos + 0] = (request_pulse_hcsr04_sensor(gpio_in) / CLOCKS_PER_uSECOND) / 58.0;
         dist[*pos + 1] = (request_pulse_hcsr04_sensor(gpio_in) / CLOCKS_PER_uSECOND) / 58.0;
         dist[*pos + 2] = (request_pulse_hcsr04_sensor(gpio_in) / CLOCKS_PER_uSECOND) / 58.0;

         *pos += 3;
         if (*pos >= SIZE_CIRCLE_VET) 
             *pos = 0;
    }




    for (which_sensor = 0; which_sensor < QUANT_SENSORS; which_sensor++) {
    	turn = 0;
        do {
            switch(which_sensor) {
                case(0):
                    buffer[turn] = (request_pulse_hcsr04_sensor(gpio_in) / CLOCKS_PER_uSECOND) / 58.0;
                    break;
                case(1):
                    buffer[turn] = (request_pulse_hcsr04_sensor(gpio_in) / CLOCKS_PER_uSECOND) / 58.0;
                    break;
                case(2):
                    buffer[turn] = (request_pulse_hcsr04_sensor(gpio_in) / CLOCKS_PER_uSECOND) / 58.0;
                    break;
                default:
                    break;
            }

            if (buffer[turn] < MAX_DISTANCE_SENSOR) {
                turn++;
            }
        } while(turn < TIMES_MEASURES);

        calcule_stats(buffer, &avg_buffer, variance, sd);
        
        avg[which_sensor] = avg_buffer;

        if (DEBUG) xil_printf("----- AVG: %d cm\r\n|------", (int) avg[which_sensor]);
    }
}
