/**
 ****************************************************************************************
 *
 * @file main.c
 *
 * @brief Battery level example
 *
 * Copyright (C) 2012-2019 Dialog Semiconductor.
 * This computer program includes Confidential, Proprietary Information
 * of Dialog Semiconductor. All Rights Reserved.
 *
 ****************************************************************************************
 */
 
//#define DEBUG_ON
 
#include <stdio.h>
#include "arch_system.h"
#include "user_periph_setup.h"
#include "gpio.h"
#ifdef DEBUG_ON
	#include "uart.h"
	#include "uart_utils.h"
#endif
#include "datasheet.h"
#if defined (__DA14531__)
#include "hw_otpc.h"
#include "syscntl.h"
#include "otp_hdr.h"
#include "otp_cs.h"
#include "arch.h"
#endif

//added
#include "adc.h"
#include "systick.h"
#include "adc_read.h"
#include "display.h"

#define SYSTICK_PERIOD_US   500000     // period for systick timer in us, so 500000 ticks = .5 second
#define SYSTICK_EXCEPTION   1           // generate systick exceptions
#define POT_THRESHOLD				0.5					//threshold for potentimeter, 0.5A value
#define POT_TIME						8

static float voltage, current, potentiometer;
static uint8_t systic_timer_done;

/**
 ****************************************************************************************
 * @brief SysTick ISR routine
 ****************************************************************************************
 */
static void systick_isr(void)
{
	systic_timer_done = 1;
}


/**
 ****************************************************************************************
 * @brief Main routine of the battery level example
 ****************************************************************************************
 */
int main (void)
{
	system_init();
	
	adc_channels_init();
	display_init();
	
	systick_register_callback(systick_isr);
	// Systick will be initialized to use a reference clock frequency of 1 MHz
	systick_start(SYSTICK_PERIOD_US, SYSTICK_EXCEPTION);

	#ifdef DEBUG_ON
		printf_string(UART, "\n\r\n\r");
		printf_string(UART, "*******************\n\r");
		printf_string(UART, "* Voltage read *\n\r");
		printf_string(UART, "*******************\n\r");
	#endif
	
	
	while(1)
	{
		static uint16_t timer_for_pot_value = POT_TIME;
		
		if(systic_timer_done)
		{
			adc_read_volt_curr(&voltage, &current, &potentiometer); 
			
			static float prev_pot_value;
			if((potentiometer > (prev_pot_value+POT_THRESHOLD) ||
			potentiometer < (prev_pot_value-POT_THRESHOLD) ) || timer_for_pot_value < POT_TIME){
					display_update(voltage, potentiometer);
					prev_pot_value = potentiometer;
					timer_for_pot_value --;
			}else {
				display_update(voltage, current);
				timer_for_pot_value = POT_TIME;
			}
			
			#ifdef DEBUG_ON
				char uart_buffer [10];
				sprintf(uart_buffer, "OUT 0_0: %.1f V\n\r", voltage/100);
				printf_string(UART, uart_buffer);
				sprintf(uart_buffer, "OUT 0_3: %.1f A\n\r", current/100);
				printf_string(UART, uart_buffer);
			#endif
			
			systic_timer_done = 0;
		}
	}
}


