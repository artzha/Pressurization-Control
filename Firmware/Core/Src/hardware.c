#include "hardware.h"

void initAdcs(SPI_HandleTypeDef* hspix, GPIO_MAX11131_Pinfo *adc_pins) {
    adc_pins[0].MAX11131_CS_PORT       = adc0_cs_GPIO_Port;
    adc_pins[0].MAX11131_EOC_PORT      = adc0_eoc_GPIO_Port;
    adc_pins[0].MAX11131_CNVST_PORT    = adc0_cnvst_GPIO_Port;
    adc_pins[0].MAX11131_CS_ADDR       = adc0_cs_Pin;
    adc_pins[0].MAX11131_EOC_ADDR      = adc0_eoc_Pin;
    adc_pins[0].MAX11131_CNVST_ADDR    = adc0_cnvst_Pin;
    adc_pins[1].MAX11131_CS_PORT       = adc1_cs_GPIO_Port;
    adc_pins[1].MAX11131_EOC_PORT      = adc1_eoc_GPIO_Port;
    adc_pins[1].MAX11131_CNVST_PORT    = adc1_cnvst_GPIO_Port;
    adc_pins[1].MAX11131_CS_ADDR       = adc1_cs_Pin;
    adc_pins[1].MAX11131_EOC_ADDR      = adc1_eoc_Pin;
    adc_pins[1].MAX11131_CNVST_ADDR    = adc1_cnvst_Pin;
    adc_pins[2].MAX11131_CS_PORT       = adc2_cs_GPIO_Port;
    adc_pins[2].MAX11131_EOC_PORT      = adc2_eoc_GPIO_Port;
    adc_pins[2].MAX11131_CNVST_PORT    = adc2_cnvst_GPIO_Port;
    adc_pins[2].MAX11131_CS_ADDR       = adc2_cs_Pin;
    adc_pins[2].MAX11131_EOC_ADDR      = adc2_eoc_Pin;
    adc_pins[2].MAX11131_CNVST_ADDR    = adc2_cnvst_Pin;
    init_adc(hspix, &adc_pins[0]);
    init_adc(hspix, &adc_pins[1]);
    init_adc(hspix, &adc_pins[2]);
}

void computeStepperRamp(Stepper_Ramping* stepper) {
    double p = (double) stepper->p;
    double m = 0;
    if ( p < stepper->ps) { // decceleration phase
        p = stepper->ps;
        m = stepper->R;
    } else if (p > stepper->p1) { // acceleration phase
        p = stepper->p1;
        m = -stepper->R;
    }

    stepper->p = p*(1+m*p*p); // compute new delay period
}

void changeStepperPeriod(TIM_HandleTypeDef *htimx, Stepper_Ramping* stepper) {
    uint16_t new_period = (uint16_t)(stepper->p*100000);// convert period from s to 10*us

    // Expected range of new_period <100 (period of 100 gives stepper rate of 1 ms)
    HAL_TIM_Base_Stop_IT(htimx);
    // htimx->Instance =  no need to change instance
    htimx->Init.Prescaler = 15999;
    htimx->Init.CounterMode = TIM_COUNTERMODE_UP;
    htimx->Init.Period = new_period;
    htimx->Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
    htimx->Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
    HAL_TIM_Base_Init(htimx);

    HAL_TIM_Base_Start_IT(htimx);
}

void turn_stepper_motor(TIM_HandleTypeDef *htimx, uint8_t motor_num, int8_t direction, uint8_t step_stage) {
    // A+
    // B+
    // A-
    // B-
    // For VNH7070AS chip, INA = clockwise, INB = counterclockwise
    // reset all gpio logic before changing step
    // Note: this only works for motor 0 currently 1 is CW, -1 is CCW
	GPIO_TypeDef * mtrx_portA0 = motor_num ? mtr1_inA0_GPIO_Port : mtr0_inA0_GPIO_Port;
	GPIO_TypeDef * mtrx_portA1 = motor_num ? mtr1_inA1_GPIO_Port : mtr0_inA1_GPIO_Port;
	GPIO_TypeDef * mtrx_portB0 = motor_num ? mtr1_inB0_GPIO_Port : mtr0_inB0_GPIO_Port;
	GPIO_TypeDef * mtrx_portB1 = motor_num ? mtr1_inB1_GPIO_Port : mtr0_inB1_GPIO_Port;
	uint16_t mtrx_pinA0 = motor_num ? mtr1_inA0_Pin : mtr0_inA0_Pin;
	uint16_t mtrx_pinA1 = motor_num ? mtr1_inA1_Pin : mtr0_inA1_Pin;
	uint16_t mtrx_pinB0 = motor_num ? mtr1_inB0_Pin : mtr0_inB0_Pin;
	uint16_t mtrx_pinB1 = motor_num ? mtr1_inB1_Pin : mtr0_inB1_Pin;
	uint32_t pwm_channela = TIM_CHANNEL_1;
	uint32_t pwm_channelb = TIM_CHANNEL_2;

    // reset all motor logic inputs low and speed to 0
    HAL_TIM_PWM_Stop(htimx, pwm_channela);
    HAL_TIM_PWM_Stop(htimx, pwm_channelb);
    // stepper motor channels
    if (direction == 1 || direction == 0) { // default cw state
        switch(step_stage) { // TODO figure out steps tmrw
                case 0: {   // A0 high B0 low
                	HAL_GPIO_WritePin(mtrx_portB1, mtrx_pinB1, GPIO_PIN_RESET);
                    HAL_GPIO_WritePin(mtrx_portA0, mtrx_pinA0, GPIO_PIN_SET);
                    HAL_GPIO_WritePin(mtrx_portB0, mtrx_pinB0, GPIO_PIN_SET);
                    break;
                } case 1: {
                	HAL_GPIO_WritePin(mtrx_portA0, mtrx_pinA0, GPIO_PIN_RESET);
                    HAL_GPIO_WritePin(mtrx_portB0, mtrx_pinB0, GPIO_PIN_SET);
                    HAL_GPIO_WritePin(mtrx_portA1, mtrx_pinA1, GPIO_PIN_SET);
                    break;
                } case 2: {
                	HAL_GPIO_WritePin(mtrx_portB0, mtrx_pinB0, GPIO_PIN_RESET);
                    HAL_GPIO_WritePin(mtrx_portA1, mtrx_pinA1, GPIO_PIN_SET);
                    HAL_GPIO_WritePin(mtrx_portB1, mtrx_pinB1, GPIO_PIN_SET);
                    break;  // swap which input is high/low for for negative polarity
                } case 3: {
                	HAL_GPIO_WritePin(mtrx_portA1, mtrx_pinA1, GPIO_PIN_RESET);
                    HAL_GPIO_WritePin(mtrx_portB1, mtrx_pinB1, GPIO_PIN_SET);
                    HAL_GPIO_WritePin(mtrx_portA0, mtrx_pinA0, GPIO_PIN_SET);
                    break;
                }
            }
    } else {
        switch(step_stage) {
            case 0: {   // A0 high B0 low
            	HAL_GPIO_WritePin(mtrx_portB0, mtrx_pinB1, GPIO_PIN_RESET);
                HAL_GPIO_WritePin(mtrx_portA0, mtrx_pinA0, GPIO_PIN_SET);
                HAL_GPIO_WritePin(mtrx_portB1, mtrx_pinB1, GPIO_PIN_SET);
                break;
            } case 1: {
            	HAL_GPIO_WritePin(mtrx_portA0, mtrx_pinA0, GPIO_PIN_RESET);
                HAL_GPIO_WritePin(mtrx_portB1, mtrx_pinB1, GPIO_PIN_SET);
                HAL_GPIO_WritePin(mtrx_portA1, mtrx_pinA1, GPIO_PIN_SET);
                break;
            } case 2: {
            	HAL_GPIO_WritePin(mtrx_portB1, mtrx_pinB1, GPIO_PIN_RESET);
                HAL_GPIO_WritePin(mtrx_portA1, mtrx_pinA1, GPIO_PIN_SET);
                HAL_GPIO_WritePin(mtrx_portB0, mtrx_pinB0, GPIO_PIN_SET);
                break;  // swap which input is high/low for for negative polarity
            } case 3: {
            	HAL_GPIO_WritePin(mtrx_portA1, mtrx_pinA1, GPIO_PIN_RESET);
                HAL_GPIO_WritePin(mtrx_portB0, mtrx_pinB0, GPIO_PIN_SET);
                HAL_GPIO_WritePin(mtrx_portA0, mtrx_pinA0, GPIO_PIN_SET);
                break;
            }
        }
    }
    HAL_TIM_PWM_Start(htimx, pwm_channela); // start pwm on channels 1 and 2 for stepper
    HAL_TIM_PWM_Start(htimx, pwm_channelb);
}

void save_telem_to_flash(W25N01GV_Flash* flash) {
    // Prepare Telem Data For Flashing
    CLB_Packet_Header header;
    header.packet_type = 0; // default packet
    header.target_addr = 0; // computer
    header.priority = 1; // medium
    header.do_cobbs = 0; // disable flash
    header.timestamp= HAL_GetTick();
    init_data(NULL, -1, &header);   // pack all telem data
    uint8_t buffer_sz = 0;
    uint8_t* buffer = return_telem_buffer(&buffer_sz);

    // Write to Flash
    write_to_flash(flash, buffer, buffer_sz);
}

void send_telem_from_flash(W25N01GV_Flash* flash, UART_HandleTypeDef* huartx) {
	// Ensure flash is flushed
	finish_flash_write(flash);

	uint32_t page = 0;
	uint16_t end_page = flash->current_page+1;
	int16_t buffer_sz = 0;
	uint8_t read_buffer[W25N01GV_BYTES_PER_PAGE];  // W25N01GV_BYTES_PER_PAGE == 2048 == 2KB
	reset_flash_read_pointer(&flash);
	while (page < end_page) {
	    read_next_2KB_from_flash(flash, read_buffer);
	    // Data gets read into read_buffer, stuff and send telem
	    CLB_Packet_Header header;
		header.packet_type = 1; // flash packet
		header.target_addr = 0; // computer
		header.priority = 1; // medium
		header.do_cobbs = 0; // disable cobbs
		header.timestamp= HAL_GetTick();
		send_telem_packet(huartx, &header, read_buffer, W25N01GV_BYTES_PER_PAGE);
	}
	reset_flash_read_pointer(flash);
}

void send_telem_packet(UART_HandleTypeDef* huartx, CLB_Packet_Header* header, uint8_t* buffer, int16_t buffer_sz) {
    if (buffer_sz == -1) {
    	CLB_Packet_Header default_header;
    	default_header.packet_type = 0; // default packet
    	default_header.target_addr = 0; // computer
    	default_header.priority = 1; // medium
    	default_header.do_cobbs = 0; // disable cobbs
    	default_header.timestamp= HAL_GetTick();
        init_data(buffer, buffer_sz, &default_header);
    } else {
        // must configure buffer stream and packet header prior
		//init_data(buffer, buffer_sz, header);
    }

    // send telem data TODO: if error status returned
    send_data(huartx);
}

void readAdcs(SPI_HandleTypeDef* hspix, GPIO_MAX11131_Pinfo* adc_pins, uint16_t (*adc_counts)[16]) {
    for (int i = 0; i < 3; ++i) {
        read_adc(hspix, &adc_pins[i], adc_counts[i]);
    }
}

void setValve(uint32_t vlv_num, uint8_t state) {
    GPIO_PinState gpio_state = (state == 0) ? GPIO_PIN_RESET : GPIO_PIN_SET;
    uint32_t vlv_bit = 1<<vlv_num;
    uint32_t vlv_value = state<<vlv_num;
    switch(vlv_num) {
    case 0: {
        HAL_GPIO_WritePin(en_vlv0_GPIO_Port, en_vlv0_Pin, gpio_state);
        break;
    } case 1: {
        HAL_GPIO_WritePin(en_vlv1_GPIO_Port, en_vlv1_Pin, gpio_state);
        break;
    } case 2: {
        HAL_GPIO_WritePin(en_vlv2_GPIO_Port, en_vlv2_Pin, gpio_state);
        break;
    } case 3: {
        HAL_GPIO_WritePin(en_vlv3_GPIO_Port, en_vlv3_Pin, gpio_state);
        break;
    } case 4: {
        HAL_GPIO_WritePin(en_vlv4_GPIO_Port, en_vlv4_Pin, gpio_state);
        break;
    } case 5: {
        HAL_GPIO_WritePin(en_vlv5_GPIO_Port, en_vlv5_Pin, gpio_state);
        break;
    } case 6: {
        HAL_GPIO_WritePin(en_vlv6_GPIO_Port, en_vlv6_Pin, gpio_state);
        break;
    } case 7: {
        HAL_GPIO_WritePin(en_vlv7_GPIO_Port, en_vlv7_Pin, gpio_state);
        break;
    } case 8: {
        HAL_GPIO_WritePin(en_vlv8_GPIO_Port, en_vlv8_Pin, gpio_state);
        break;
    }
    }
    // set valves states variable
    valve_states &= ~vlv_bit;
    valve_states |= vlv_value;
}

void updatePeripherals(uint16_t (*adc_counts)[16]) {
    // Programmer defined, transfer adc readings to correct memory arrays based on schematic

    /* Load vlv voltages */
    ivlv[0] = vlvCountsToVolts(adc_counts[0][0]);
    ivlv[1] = vlvCountsToVolts(adc_counts[1][10]);
    ivlv[2] = vlvCountsToVolts(adc_counts[1][8]);
    ivlv[3] = vlvCountsToVolts(adc_counts[1][6]);
    ivlv[4] = vlvCountsToVolts(adc_counts[1][4]);
    ivlv[5] = vlvCountsToVolts(adc_counts[1][2]);
    ivlv[6] = vlvCountsToVolts(adc_counts[1][0]);
    ivlv[7] = vlvCountsToVolts(adc_counts[0][11]);
    ivlv[8] = vlvCountsToVolts(adc_counts[0][13]);

    /* Load vlv currents */
    evlv[0] = vlvCountsToAmps(adc_counts[0][1]);
    evlv[1] = vlvCountsToAmps(adc_counts[1][11]);
    evlv[2] = vlvCountsToAmps(adc_counts[1][9]);
    evlv[3] = vlvCountsToAmps(adc_counts[1][7]);
    evlv[4] = vlvCountsToAmps(adc_counts[1][5]);
    evlv[5] = vlvCountsToAmps(adc_counts[1][3]);
    evlv[6] = vlvCountsToAmps(adc_counts[1][1]);
    evlv[7] = vlvCountsToAmps(adc_counts[0][10]);
    evlv[8] = vlvCountsToAmps(adc_counts[0][12]);

    /* Load pressure transducer voltages */
    for (int8_t i = 7; i >= 2; --i) {
        uint8_t channel = 7-i;
        pressure[channel] = ptCountsToVolts(adc_counts[0][i], channel);
    }

    /* Load mtr currents */
    i_mtr_ab[0] = mtrCountsToAmps(adc_counts[2][5]);
    i_mtr_ab[1] = mtrCountsToAmps(adc_counts[2][4]);
    i_mtr_ab[2] = mtrCountsToAmps(adc_counts[2][0]);
    i_mtr_ab[3] = mtrCountsToAmps(adc_counts[2][1]);

    i_mtr[0]    = mtrCountsToAmps(adc_counts[2][2]);
    i_mtr[1]    = mtrCountsToAmps(adc_counts[2][3]);

    /* Load potentiometer voltages */
    for (int8_t i = 9; i >= 6; --i) {
        int8_t channel  = 9-i;
        epot[channel]   = potCountsToVolts(adc_counts[2][i]);
    }

    /* Load board currents and voltages */
    i_batt  = adc_counts[2][12]*ibatt_cal;
    e_batt  = adc_counts[2][13]*ebatt_cal;
    i3v     = adc_counts[2][10]*i3v_cal;
    e3v     = adc_counts[2][11]*e3v_cal;
    i5v     = adc_counts[0][8]*i5v_cal;
    e5v     = adc_counts[0][9]*e5v_cal;
}

float vlvCountsToVolts(uint16_t counts) {
    return counts*evlv_cal;
}

float vlvCountsToAmps(uint16_t counts) {
    return counts*ivlv_cal;
}

float ptCountsToVolts(uint16_t counts, uint8_t pt_num) {
    return counts*pt_slope[pt_num] + pt_offset[pt_num];
}

float mtrCountsToAmps(uint16_t counts) {
    return counts*imtr_cal;
}

float potCountsToVolts(uint16_t counts) {
    return counts*epot_cal;
}
