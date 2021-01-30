#ifndef INC_HARDWARE_H_
#define INC_HARDWARE_H_

#include "main.h"
#include "MAX11131.h"
#include "comms.h"
#include "W25N01GV.h"
#include "globals.h"
#include "pack_telem_defines.h"
#include "pt_calibrations.h"

/* Calibration Constants */
// TODO: update cals, these are taken from the EC
#define ibatt_cal   0.00324707  // checked
#define ebatt_cal   0.00324707  // checked
#define ibus_cal    0.01418500
#define ept_cal     0.000806
#define evlv_cal    0.00324707  // checked
#define ivlv_cal    0.00322265  // checked
#define imtr_cal    0.00322265
#define epot_cal    0.00322265
#define e5v_cal     0.00161132  // checked
#define e3v_cal     0.00161132  // checked
#define i5v_cal     1.00000000  // checked
#define i3v_cal     1.00000000  // checked
#define tbrd_offset 600.000000
#define tbrd_slope  0.12400000

// wrapper files for interfacing with the firmware libraries

void turn_stepper_motor(TIM_HandleTypeDef *htimx, uint8_t motor_num, int8_t direction, uint8_t step_stage);

void computeStepperRamp(Stepper_Ramping* stepper);

void changeStepperPeriod(TIM_HandleTypeDef *htimx, Stepper_Ramping* stepper);

void setValve(uint32_t vlv_num, uint8_t state);

void initAdcs(SPI_HandleTypeDef* hspix, GPIO_MAX11131_Pinfo *adc_pins);

void readAdcs(SPI_HandleTypeDef* hspix, GPIO_MAX11131_Pinfo* adc_pins, uint16_t (*adc_counts)[16]);

void updatePeripherals(uint16_t (*adc_counts)[16]);

void send_telem_packet(UART_HandleTypeDef* huartx, CLB_Packet_Header* header, uint8_t* buffer, int16_t buffer_sz);

void save_telem_to_flash(W25N01GV_Flash* flash);

void send_telem_from_flash(W25N01GV_Flash* flash, UART_HandleTypeDef* huartx);

// Private Helper Functions

float vlvCountsToVolts(uint16_t counts);

float vlvCountsToAmps(uint16_t counts);

float ptCountsToVolts(uint16_t counts, uint8_t pt_num);

float mtrCountsToAmps(uint16_t counts);

float potCountsToVolts(uint16_t counts);

/**
 * @brief  Delays for amount of micro seconds
 * @param  micros: Number of microseconds for delay
 * @retval None
 */
static inline void DelayUs(uint32_t micros) {
#if !defined(STM32F0xx)
    uint32_t start = DWT->CYCCNT;

    /* Go to number of cycles for system */
    micros *= (HAL_RCC_GetHCLKFreq() / 1000000);

    /* Delay till end */
    while ((DWT->CYCCNT - start) < micros);
#else
    /* Go to clock cycles */
    micros *= (SystemCoreClock / 1000000) / 5;

    /* Wait till done */
    while (micros--);
#endif
}
#endif
