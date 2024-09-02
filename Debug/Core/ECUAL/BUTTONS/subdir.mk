################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/ECUAL/BUTTONS/BUTTONS.c \
../Core/ECUAL/BUTTONS/BUTTONS_cfg.c 

OBJS += \
./Core/ECUAL/BUTTONS/BUTTONS.o \
./Core/ECUAL/BUTTONS/BUTTONS_cfg.o 

C_DEPS += \
./Core/ECUAL/BUTTONS/BUTTONS.d \
./Core/ECUAL/BUTTONS/BUTTONS_cfg.d 


# Each subdirectory must supply rules for building sources it contributes
Core/ECUAL/BUTTONS/%.o Core/ECUAL/BUTTONS/%.su Core/ECUAL/BUTTONS/%.cyclo: ../Core/ECUAL/BUTTONS/%.c Core/ECUAL/BUTTONS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-ECUAL-2f-BUTTONS

clean-Core-2f-ECUAL-2f-BUTTONS:
	-$(RM) ./Core/ECUAL/BUTTONS/BUTTONS.cyclo ./Core/ECUAL/BUTTONS/BUTTONS.d ./Core/ECUAL/BUTTONS/BUTTONS.o ./Core/ECUAL/BUTTONS/BUTTONS.su ./Core/ECUAL/BUTTONS/BUTTONS_cfg.cyclo ./Core/ECUAL/BUTTONS/BUTTONS_cfg.d ./Core/ECUAL/BUTTONS/BUTTONS_cfg.o ./Core/ECUAL/BUTTONS/BUTTONS_cfg.su

.PHONY: clean-Core-2f-ECUAL-2f-BUTTONS

