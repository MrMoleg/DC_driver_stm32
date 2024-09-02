################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/MATH/FIR/FIR.c 

OBJS += \
./Core/MATH/FIR/FIR.o 

C_DEPS += \
./Core/MATH/FIR/FIR.d 


# Each subdirectory must supply rules for building sources it contributes
Core/MATH/FIR/%.o Core/MATH/FIR/%.su Core/MATH/FIR/%.cyclo: ../Core/MATH/FIR/%.c Core/MATH/FIR/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-MATH-2f-FIR

clean-Core-2f-MATH-2f-FIR:
	-$(RM) ./Core/MATH/FIR/FIR.cyclo ./Core/MATH/FIR/FIR.d ./Core/MATH/FIR/FIR.o ./Core/MATH/FIR/FIR.su

.PHONY: clean-Core-2f-MATH-2f-FIR

