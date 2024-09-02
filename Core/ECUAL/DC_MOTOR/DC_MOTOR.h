/*
 * File: DC_MOTOR.h
 * Driver Name: [[ DC MOTOR ]]
 * SW Layer:   ECUAL
 * Created on: Jun 28, 2020
 * Ver: 1.0
 * Author:     Khaled Magdy
 * -------------------------------------------
 * For More Information, Tutorials, etc.
 * Visit Website: www.DeepBlueMbedded.com
 *
 */

#ifndef DC_MOTOR_H_
#define DC_MOTOR_H_

#define HAL_TIM_MODULE_ENABLED

#include "stm32g4xx_hal.h"

// DC Motor Rotation Directions
#define DIR_CW    0
#define DIR_CCW   1

// DC Motor sleep mode

// DC Motor stop mode
#define COAST 0
#define BREAK 1

// DC Motor PWM Properties
#define DC_MOTOR_PWM_RES  10
#define DC_MOTOR_F_PWM    500

// The Number OF DC MOTORs To Be Used In The Project
#define DC_MOTOR_UNITS  1

typedef struct
{

	TIM_TypeDef*   TIM_Instance;
	uint32_t       PWM_TIM_CH1;
	uint32_t       PWM_TIM_CH2;
	uint16_t       TIM_CLK_MHz;
	uint32_t       PWM_FREQ_Hz;
	uint8_t        PWM_RES_BITS;

}DC_MOTOR_CfgType;

typedef struct {
	  uint8_t dir;
	  uint16_t speed;
	  uint8_t stop_mode;
  }motor_parameters;


/*-----[ Prototypes For All Functions ]-----*/


void DC_MOTOR_Init(uint8_t au8_MOTOR_Instance, motor_parameters *motor);
void DC_MOTOR_Set_Speed(uint8_t au8_MOTOR_Instance, motor_parameters *motor);
void DC_MOTOR_Set_Dir(uint8_t au8_MOTOR_Instance,  TIM_HandleTypeDef *htim, motor_parameters *motor);
void DC_MOTOR_Stop(uint8_t au8_MOTOR_Instance,  TIM_HandleTypeDef *htim, motor_parameters *motor);
uint32_t DC_MOTOR_Get_MaxFreq(uint8_t au8_MOTOR_Instance);


#endif /* DC_MOTOR_H_ */
