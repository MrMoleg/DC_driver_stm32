################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/MATH/MATH.c 

OBJS += \
./Core/MATH/MATH.o 

C_DEPS += \
./Core/MATH/MATH.d 


# Each subdirectory must supply rules for building sources it contributes
Core/MATH/%.o Core/MATH/%.su Core/MATH/%.cyclo: ../Core/MATH/%.c Core/MATH/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-MATH

clean-Core-2f-MATH:
	-$(RM) ./Core/MATH/MATH.cyclo ./Core/MATH/MATH.d ./Core/MATH/MATH.o ./Core/MATH/MATH.su

.PHONY: clean-Core-2f-MATH

