################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../motorsTest/components/utilities/ulog/ulog.c \
../motorsTest/components/utilities/ulog/ulog_console.c 

OBJS += \
./motorsTest/components/utilities/ulog/ulog.o \
./motorsTest/components/utilities/ulog/ulog_console.o 

C_DEPS += \
./motorsTest/components/utilities/ulog/ulog.d \
./motorsTest/components/utilities/ulog/ulog_console.d 


# Each subdirectory must supply rules for building sources it contributes
motorsTest/components/utilities/ulog/%.o motorsTest/components/utilities/ulog/%.su motorsTest/components/utilities/ulog/%.cyclo: ../motorsTest/components/utilities/ulog/%.c motorsTest/components/utilities/ulog/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../motorsTest/application -I../motorsTest/algorithm -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-motorsTest-2f-components-2f-utilities-2f-ulog

clean-motorsTest-2f-components-2f-utilities-2f-ulog:
	-$(RM) ./motorsTest/components/utilities/ulog/ulog.cyclo ./motorsTest/components/utilities/ulog/ulog.d ./motorsTest/components/utilities/ulog/ulog.o ./motorsTest/components/utilities/ulog/ulog.su ./motorsTest/components/utilities/ulog/ulog_console.cyclo ./motorsTest/components/utilities/ulog/ulog_console.d ./motorsTest/components/utilities/ulog/ulog_console.o ./motorsTest/components/utilities/ulog/ulog_console.su

.PHONY: clean-motorsTest-2f-components-2f-utilities-2f-ulog

