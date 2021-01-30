#include "main.h"
#include "pack_cmd_defines.h"
#include "hardware.h"
#include "globals.h"

extern UART_HandleTypeDef huart1; // for rs422 telem
extern TIM_HandleTypeDef htim6;     // for stepper motor period
extern TIM_HandleTypeDef htim10;  // for calculation period

void set_vlv(uint8_t* data, uint8_t* status) {
    uint32_t vlv_num = data[3]<<24|data[2]<<16|data[1]<<8|data[0];
    uint8_t state = data[4];
    setValve(vlv_num, state);
}

void send_telem_short(uint8_t* data, uint8_t* status) {
    // TODO: figure out what the fuck im putting here
}

void send_telem_all(uint8_t* data, uint8_t* status) {
    send_telem_packet(&huart1, NULL, telem_packet, -1);
}

void set_stepper_period(uint8_t* data, uint8_t* status) {
    // simply adjust the period of the timer for stepping motor
    uint8_t stepper_num = data[0];
    uint16_t period = data[2]<<8|data[1];

    HAL_TIM_Base_Stop_IT(&htim6);
    htim6.Instance = TIM10;
    htim6.Init.Prescaler = 15999;
    htim6.Init.CounterMode = TIM_COUNTERMODE_UP;
    htim6.Init.Period = period;
    htim6.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
    htim6.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
    HAL_TIM_Base_Init(&htim6);

    HAL_TIM_Base_Start_IT(&htim6);
}

void set_stepper_direction(uint8_t* data, uint8_t* status) {
    uint8_t stepper_num = data[0];
    int8_t dir = data[0];

    curDir = dir;
}

void set_kp(uint8_t* data, uint8_t* status) {
    uint8_t motor_num = data[0];
    double gain = (double)(data[2]<<8|data[1])/100.0;
    kp = gain;
}

void set_ki(uint8_t* data, uint8_t* status) {
    uint8_t motor_num = data[0];
    double gain = (double)(data[2]<<8|data[1])/100.0;
    ki = gain;
}

void set_kd(uint8_t* data, uint8_t* status) {
    uint8_t motor_num = data[0];
    double gain = (double)(data[2]<<8|data[1])/100.0;
    kd = gain;
}

void set_control_calc_period(uint8_t* data, uint8_t* status) {
    uint16_t time = data[1]<<8|data[0];
    // prescaler for control calcs (1 ms per timer count)
    // there time can be directly used in counter period
    HAL_TIM_Base_Stop_IT(&htim10);

    htim10.Instance = TIM10;
    htim10.Init.Prescaler = 15999;
    htim10.Init.CounterMode = TIM_COUNTERMODE_UP;
    htim10.Init.Period = time;
    htim10.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
    htim10.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
    HAL_TIM_Base_Init(&htim10);

    HAL_TIM_Base_Start_IT(&htim10);
}

void set_state(uint8_t* data, uint8_t* status) {
    uint8_t state = data[0];
    STATE = state;
}

void move_stepper_degrees(uint8_t* data, uint8_t* status) {
    // TODO: coordinate with josh to figure out how the fuck we can do this
}
