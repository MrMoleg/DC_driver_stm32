/*
 * File: DC_MOTOR.c
 * Driver Name: [[ DC MOTOR ]]
 * SW Layer:   ECUAL
 * Created on: Jun 28, 2020
 * Author:     Khaled Magdy
 * -------------------------------------------
 * For More Information, Tutorials, etc.
 * Visit Website: www.DeepBlueMbedded.com
 *
 */

#include "../DC_MOTOR/DC_MOTOR.h"
#include "../DC_MOTOR/DC_MOTOR_cfg.h"
#include "../../Inc/main.h"

void DC_MOTOR_Init(uint8_t au8_MOTOR_Instance, motor_parameters *motor)
{
	//htim.Instance = DC_MOTOR_CfgParam[au8_MOTOR_Instance].TIM_Instance;
	/* Write To The 2 Direction Control Pins */
	motor->dir = DIR_CCW;
	motor->speed = 0;
	motor->stop_mode =0;
	/* Write The Speed Value To The PWM CH DutyCycle Register */

}

void DC_MOTOR_Set_Speed(uint8_t au8_MOTOR_Instance, motor_parameters *motor)
{
	DC_MOTOR_CfgParam[au8_MOTOR_Instance].TIM_Instance->CCR1 = motor->speed;
	DC_MOTOR_CfgParam[au8_MOTOR_Instance].TIM_Instance->CCR2 = motor->speed;;

}

void DC_MOTOR_Set_Dir(uint8_t au8_MOTOR_Instance, TIM_HandleTypeDef *htim, motor_parameters *motor)
{

	/* Write To The 2 Direction Control Pins */
	if(motor->dir == DIR_CW)
	{
		HAL_TIM_PWM_Start(htim, DC_MOTOR_CfgParam[au8_MOTOR_Instance].PWM_TIM_CH2);
		HAL_TIM_PWM_Stop(htim, DC_MOTOR_CfgParam[au8_MOTOR_Instance].PWM_TIM_CH1);
	}
	else if(motor->dir == DIR_CCW)
	{
		HAL_TIM_PWM_Stop(htim, DC_MOTOR_CfgParam[au8_MOTOR_Instance].PWM_TIM_CH2);
		HAL_TIM_PWM_Start(htim, DC_MOTOR_CfgParam[au8_MOTOR_Instance].PWM_TIM_CH1);

	}
}

void DC_MOTOR_Stop(uint8_t au8_MOTOR_Instance,  TIM_HandleTypeDef *htim, motor_parameters *motor)
{
	/* Write To The 2 Direction Control Pins */


	if (motor->stop_mode == COAST){
		HAL_TIM_PWM_Stop(htim, DC_MOTOR_CfgParam[au8_MOTOR_Instance].PWM_TIM_CH2);
		HAL_TIM_PWM_Stop(htim, DC_MOTOR_CfgParam[au8_MOTOR_Instance].PWM_TIM_CH1);
		DC_MOTOR_CfgParam[au8_MOTOR_Instance].TIM_Instance->CCR1 = 0;
		DC_MOTOR_CfgParam[au8_MOTOR_Instance].TIM_Instance->CCR2 = 0;

	}
	if (motor->stop_mode == BREAK ){
		HAL_TIM_PWM_Start(htim, DC_MOTOR_CfgParam[au8_MOTOR_Instance].PWM_TIM_CH2);
		HAL_TIM_PWM_Start(htim, DC_MOTOR_CfgParam[au8_MOTOR_Instance].PWM_TIM_CH1);
		DC_MOTOR_CfgParam[au8_MOTOR_Instance].TIM_Instance->CCR1 = 200;
		DC_MOTOR_CfgParam[au8_MOTOR_Instance].TIM_Instance->CCR2 = 200;
	}
	/* Write ZERO To The PWM Ch DutyCycle Register */

}

uint32_t DC_MOTOR_Get_MaxFreq(uint8_t au8_MOTOR_Instance)
{
	uint32_t ARR_Value = 1;
    uint8_t i = 0;

	for(i=0; i<DC_MOTOR_CfgParam[au8_MOTOR_Instance].PWM_RES_BITS; i++)
	{
		ARR_Value *= 2;
	}
	return ((DC_MOTOR_CfgParam[au8_MOTOR_Instance].TIM_CLK_MHz*1000000)/ARR_Value);
}
