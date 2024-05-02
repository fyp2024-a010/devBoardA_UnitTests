################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../protocolTest/utilities/ulog/ulog.c \
../protocolTest/utilities/ulog/ulog_console.c 

OBJS += \
./protocolTest/utilities/ulog/ulog.o \
./protocolTest/utilities/ulog/ulog_console.o 

C_DEPS += \
./protocolTest/utilities/ulog/ulog.d \
./protocolTest/utilities/ulog/ulog_console.d 


# Each subdirectory must supply rules for building sources it contributes
protocolTest/utilities/ulog/%.o protocolTest/utilities/ulog/%.su protocolTest/utilities/ulog/%.cyclo: ../protocolTest/utilities/ulog/%.c protocolTest/utilities/ulog/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../protocolTest/application -I../protocolTest/components/object -I../protocolTest/usbVCP -I../protocolTest/application/protocol -I../protocolTest/utilities -I../protocolTest/components/support -I../protocolTest/utilities/ulog -I../protocolTest/components/usbVCP -I../protocolTest/bsp -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-protocolTest-2f-utilities-2f-ulog

clean-protocolTest-2f-utilities-2f-ulog:
	-$(RM) ./protocolTest/utilities/ulog/ulog.cyclo ./protocolTest/utilities/ulog/ulog.d ./protocolTest/utilities/ulog/ulog.o ./protocolTest/utilities/ulog/ulog.su ./protocolTest/utilities/ulog/ulog_console.cyclo ./protocolTest/utilities/ulog/ulog_console.d ./protocolTest/utilities/ulog/ulog_console.o ./protocolTest/utilities/ulog/ulog_console.su

.PHONY: clean-protocolTest-2f-utilities-2f-ulog

