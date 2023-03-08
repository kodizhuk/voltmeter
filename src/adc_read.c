#include "adc.h"
#include "adc_read.h"
#include "gpio.h"

/*
*	ADC channels: P0_0, P0_1, P0_2, P0_3
*/

void adc_channels_init()
{
	//disable pull-down resistor
	GPIO_SetPinFunction(GPIO_PORT_0, GPIO_PIN_0, INPUT, PID_ADC);
	GPIO_SetPinFunction(GPIO_PORT_0, GPIO_PIN_1, INPUT, PID_ADC);
	GPIO_SetPinFunction(GPIO_PORT_0, GPIO_PIN_3, INPUT, PID_ADC);
	
	//init ADC
	adc_config_t cfg =
	{
			.mode  = ADC_INPUT_MODE_SINGLE_ENDED,
			.input = ADC_INPUT_SE_P0_0,
			.sign  = false,
			.attn  = true
	};
	adc_init(&cfg);
	adc_offset_calibrate(ADC_INPUT_MODE_SINGLE_ENDED);
	/* adc is 10-bit value
	*  1024 bits - 3.6V
	* 3.6/1024 = 3.51mV per bit
	*/
}

void adc_read_volt_curr(float *voltage, float *current, float *curr_ctrl)
{	
	static uint16_t adc_value;
	
	/*voltage IN
	* 60V max, divider coef Vout/Vin = 
	* 60V/3 = 20
	* 1024/3.6 = 284.4
	* 0.54V - 0V ADC shift
	*/
	adc_set_se_input(ADC_INPUT_SE_P0_1);
	adc_value = adc_get_sample();
	*voltage = 60-((((float)adc_value/284)+0.02) * 21.12);
		
	/*current IN
	* 8V max, divider coef Vout/Vin = 
	*	7V is for max current 20A
	* 22.5/3 = 7.5
	* 1024/3.6 = 284.4
	* 
	*/
	adc_set_se_input(ADC_INPUT_SE_P0_0);
	adc_value = adc_get_sample();
	*current = (3.6-(((float)adc_value/284) +1.43)) *11.6;

	
	/* potentiometer 
	*  5V max, divider coef Vout/Vin = 0.6
	*  5V is for max current 22.5A
	*  22.5/5 = 4.5
	*  5/3 = 1.66
	*  1024/3.6 = 284.4
	*  4.5*1.66 = 7.5
	*/
	adc_set_se_input(ADC_INPUT_SE_P0_3);
	adc_value = adc_get_sample();
	*curr_ctrl = ((float)adc_value /284)  * 7.5;
}
