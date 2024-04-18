################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../motorsTest/algorithm/pid.c \
../motorsTest/algorithm/skidsteer.c 

OBJS += \
./motorsTest/algorithm/pid.o \
./motorsTest/algorithm/skidsteer.o 

C_DEPS += \
./motorsTest/algorithm/pid.d \
./motorsTest/algorithm/skidsteer.d 


# Each subdirectory must supply rules for building sources it contributes
motorsTest/algorithm/%.o motorsTest/algorithm/%.su motorsTest/algorithm/%.cyclo: ../motorsTest/algorithm/%.c motorsTest/algorithm/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../motorsTest/application -I../motorsTest/algorithm -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-motorsTest-2f-algorithm

clean-motorsTest-2f-algorithm:
	-$(RM) ./motorsTest/algorithm/pid.cyclo ./motorsTest/algorithm/pid.d ./motorsTest/algorithm/pid.o ./motorsTest/algorithm/pid.su ./motorsTest/algorithm/skidsteer.cyclo ./motorsTest/algorithm/skidsteer.d ./motorsTest/algorithm/skidsteer.o ./motorsTest/algorithm/skidsteer.su

.PHONY: clean-motorsTest-2f-algorithm

