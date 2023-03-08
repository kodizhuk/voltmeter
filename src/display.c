#include "display.h"
#include "timer0.h"
#include "timer0_2.h"

#define DISPLAY_MAX_VALUE	100

//#define DEBUG_ON
#ifdef DEBUG_ON
	#include "uart.h"
	#include "uart_utils.h"
	#include "user_periph_setup.h"
	#include <stdio.h>
#endif

#define RELOAD_100MS      500                     // reload value for 100ms
#define NO_PWM            0x0                       // PWM not used

//     msb       lsb
//bits dp, a ... g
uint8_t numbersToDisplay[] = {
		0x7E,  //  0
		0x30,  //  1
		0x6d,  //  2
		0x79,  //  3
		0x33,  //  4
		0x5b,  //  5
		0x5f,  //  6
		0x70,  //  7
		0x7f,  //  8
		0x73,  //  9
		0x77,  //  A
		0x1f,  //  B
		0x4e,  //  C
		0x3d,  //  D
		0x4f,  //  E
		0x47,  //  F
};


const uint8_t segments_outs[8][2] = {
	{PORT_SEGMENT, PIN_A},
	{PORT_SEGMENT, PIN_B},
	{PORT_SEGMENT, PIN_C},
	{PORT_SEGMENT, PIN_D},
	{PORT_SEGMENT, PIN_E},
	{PORT_SEGMENT, PIN_F},
	{PORT_SEGMENT, PIN_G},
	{PORT_SEGMENT, PIN_DP},
};

const uint8_t digits_outs[6][2]= {
	{PORT_DIG0, PIN_DIG0}, 
	{PORT_DIG1, PIN_DIG1},
	{PORT_DIG2, PIN_DIG2},
	{PORT_DIG3, PIN_DIG3},
	{PORT_DIG4, PIN_DIG4},
	{PORT_DIG5, PIN_DIG5},
};

static tim0_2_clk_div_config_t clk_div_config =
{
    .clk_div  = TIM0_2_CLK_DIV_8
};

uint8_t volt_curr_digits[6];
uint8_t dots[6] = {0, 1, 0, 0, 1, 0};		//turn on dot for 2 and 5 digit

/**
 ****************************************************************************************
 * @brief Timer0 general callback function
 *
 ****************************************************************************************
 */
static void timer0_general_callback_function(void)
{
	static uint8_t current_seg;
	static uint8_t current_num = 0;
	
	//display current number
	for(current_seg=0; current_seg<8; current_seg++ )
	{
		//enable segment accoring to the 7 seg logic
		uint8_t segment_enabled = numbersToDisplay[volt_curr_digits[current_num]] &  (1 << (6-current_seg));
		//display dot
		if(dots[current_num] && current_seg==7)
			segment_enabled = 1;
		
		if(segment_enabled)
			GPIO_SetActive((GPIO_PORT)segments_outs[current_seg][0], (GPIO_PIN)segments_outs[current_seg][1]);
			//GPIO_SetInactive((GPIO_PORT)segments_outs[current_seg][0], (GPIO_PIN)segments_outs[current_seg][1]);
		else
			GPIO_SetInactive((GPIO_PORT)segments_outs[current_seg][0], (GPIO_PIN)segments_outs[current_seg][1]);
			//GPIO_SetActive((GPIO_PORT)segments_outs[current_seg][0], (GPIO_PIN)segments_outs[current_seg][1]);
	}
	
	//previous digit off
	if(current_num == 0)
		GPIO_SetActive((GPIO_PORT)digits_outs[5][0], (GPIO_PIN)digits_outs[5][1]);
		//GPIO_SetInactive((GPIO_PORT)digits_outs[5][0], (GPIO_PIN)digits_outs[5][1]);
	else
		GPIO_SetActive((GPIO_PORT)digits_outs[current_num-1][0], (GPIO_PIN)digits_outs[current_num-1][1]);
		//GPIO_SetInactive((GPIO_PORT)digits_outs[current_num-1][0], (GPIO_PIN)digits_outs[current_num-1][1]);
	//next digit on
	GPIO_SetInactive((GPIO_PORT)digits_outs[current_num][0], (GPIO_PIN)digits_outs[current_num][1]);
	//GPIO_SetActive((GPIO_PORT)digits_outs[current_num][0], (GPIO_PIN)digits_outs[current_num][1]);
	
	current_num++;
	if(current_num >= 6)current_num = 0;
}


/**
 ****************************************************************************************
 * @brief Dynamic indication for 7seg display
 * 3 segments for voltage and 3 for current
 * TIMER_0 used for dynamic indication, systic?
 * the Display is in Common Anode configuration (common GND)
 * PINs 3_0..3_7 used for digits
 * PINs _ used for swithing the numbers
 ****************************************************************************************
 */
void display_init()
{
	//segments init, default off
	for(int i=0; i<8; i++)
		GPIO_ConfigurePin((GPIO_PORT)segments_outs[i][0], (GPIO_PIN)segments_outs[i][1], OUTPUT, PID_GPIO, false);
	
	for(int i=0;i<6; i++)
		GPIO_ConfigurePin((GPIO_PORT)digits_outs[i][0], (GPIO_PIN)digits_outs[i][1], OUTPUT, PID_GPIO, true);
	
	//timer init for dynamic indication
	timer0_stop();
	// register callback function for SWTIM_IRQn irq
	timer0_register_callback(timer0_general_callback_function);
	// Enable the Timer0/Timer2 input clock
  timer0_2_clk_enable();
	// Set the Timer0/Timer2 input clock division factor to 8, so 16 MHz / 8 = 2 MHz input clock
	timer0_2_clk_div_set(&clk_div_config);
	// clear PWM settings register to not generate PWM
	timer0_set_pwm_high_counter(NO_PWM);
	timer0_set_pwm_low_counter(NO_PWM);
	// Set timer with 2MHz source clock divided by 10 so Fclk = 2MHz/10 = 200kHz
	timer0_init(TIM0_CLK_FAST, PWM_MODE_ONE, TIM0_CLK_DIV_BY_10);
	// reload value for 100ms (T = 1/200kHz * RELOAD_100MS = 0,000005 * 20000 = 100ms)
	timer0_set_pwm_on_counter(RELOAD_100MS);
	// Enable SWTIM_IRQn irq
	timer0_enable_irq();
	// Start Timer0
	timer0_start();
}

void display_update(float num1, float num2)
{	
	//convert float value to 3 digit to display
	if(num1 > DISPLAY_MAX_VALUE && num1 < 0)num1 = 0;
	volt_curr_digits[0] = num1/10;
	volt_curr_digits[1] = (uint8_t)num1 - (volt_curr_digits[0]*10);
	volt_curr_digits[2] = (num1*10) - (volt_curr_digits[0]*100) - (volt_curr_digits[1]*10);

	if(num2 > DISPLAY_MAX_VALUE  && num2 < 0) num2 = 0;
	volt_curr_digits[3] = num2/10;
	volt_curr_digits[4] = (uint8_t)num2 - (volt_curr_digits[3]*10);
	volt_curr_digits[5] = (num2*10) - (volt_curr_digits[3]*100) - (volt_curr_digits[4]*10);
	
	#ifdef DEBUG_ON
		char uart_buffer[20];
		sprintf(uart_buffer, "Volt : %.1f V\n\r", voltage);
		printf_string(UART, uart_buffer);
		sprintf(uart_buffer, "Curr : %.1f A\n\r", current);
		printf_string(UART, uart_buffer);
	#endif
}
