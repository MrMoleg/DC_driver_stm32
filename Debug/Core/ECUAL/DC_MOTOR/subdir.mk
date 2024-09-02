################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/ECUAL/DC_MOTOR/DC_MOTOR.c \
../Core/ECUAL/DC_MOTOR/DC_MOTOR_cfg.c 

OBJS += \
./Core/ECUAL/DC_MOTOR/DC_MOTOR.o \
./Core/ECUAL/DC_MOTOR/DC_MOTOR_cfg.o 

C_DEPS += \
./Core/ECUAL/DC_MOTOR/DC_MOTOR.d \
./Core/ECUAL/DC_MOTOR/DC_MOTOR_cfg.d 


# Each subdirectory must supply rules for building sources it contributes
Core/ECUAL/DC_MOTOR/%.o Core/ECUAL/DC_MOTOR/%.su Core/ECUAL/DC_MOTOR/%.cyclo: ../Core/ECUAL/DC_MOTOR/%.c Core/ECUAL/DC_MOTOR/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-ECUAL-2f-DC_MOTOR

clean-Core-2f-ECUAL-2f-DC_MOTOR:
	-$(RM) ./Core/ECUAL/DC_MOTOR/DC_MOTOR.cyclo ./Core/ECUAL/DC_MOTOR/DC_MOTOR.d ./Core/ECUAL/DC_MOTOR/DC_MOTOR.o ./Core/ECUAL/DC_MOTOR/DC_MOTOR.su ./Core/ECUAL/DC_MOTOR/DC_MOTOR_cfg.cyclo ./Core/ECUAL/DC_MOTOR/DC_MOTOR_cfg.d ./Core/ECUAL/DC_MOTOR/DC_MOTOR_cfg.o ./Core/ECUAL/DC_MOTOR/DC_MOTOR_cfg.su

.PHONY: clean-Core-2f-ECUAL-2f-DC_MOTOR

