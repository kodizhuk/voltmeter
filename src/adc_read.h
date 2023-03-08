#ifndef ADC_READ

#define ADC_READ
#include "stdint.h"

void adc_channels_init(void);
void adc_read_volt_curr(float *voltage, float *current, float *curr_ctrl);

#endif
