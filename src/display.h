#ifndef DISPLAY

#define DISPLAY
#include "stdint.h"
#include "gpio.h"

//segments, J7 connector
// segA  - P2_2
// segB  - P2_4
// segC  - P2_0
// segD  - P2_6-
// segE  - P2_5-
// segF  - P2_3
// segG  - P2_1
// segDP - P2_7
#define PORT_SEGMENT GPIO_PORT_2
#define PIN_A GPIO_PIN_2
#define PIN_B GPIO_PIN_4
#define PIN_C GPIO_PIN_0
#define PIN_D GPIO_PIN_6
#define PIN_E GPIO_PIN_5
#define PIN_F GPIO_PIN_3
#define PIN_G GPIO_PIN_1
#define PIN_DP GPIO_PIN_7

//digits
// dig0 - P1_2
// dig1 - P1_1
// dig2 - P1_0
// dig3 - P1_3
// dig4 - P0_2
// dig5 - P0_4
#define PORT_DIG0 GPIO_PORT_1
#define PIN_DIG0 GPIO_PIN_2
#define PORT_DIG1 GPIO_PORT_1
#define PIN_DIG1 GPIO_PIN_1
#define PORT_DIG2 GPIO_PORT_1
#define PIN_DIG2 GPIO_PIN_0
#define PORT_DIG3 GPIO_PORT_1
#define PIN_DIG3 GPIO_PIN_3
#define PORT_DIG4 GPIO_PORT_0
#define PIN_DIG4 GPIO_PIN_2
#define PORT_DIG5 GPIO_PORT_0
#define PIN_DIG5 GPIO_PIN_4

void display_init(void);
void display_update(float num1, float num2);

#endif
