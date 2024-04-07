################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usbCommunication/utilities/ulog/ulog.c \
../usbCommunication/utilities/ulog/ulog_console.c 

OBJS += \
./usbCommunication/utilities/ulog/ulog.o \
./usbCommunication/utilities/ulog/ulog_console.o 

C_DEPS += \
./usbCommunication/utilities/ulog/ulog.d \
./usbCommunication/utilities/ulog/ulog_console.d 


# Each subdirectory must supply rules for building sources it contributes
usbCommunication/utilities/ulog/%.o usbCommunication/utilities/ulog/%.su usbCommunication/utilities/ulog/%.cyclo: ../usbCommunication/utilities/ulog/%.c usbCommunication/utilities/ulog/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../application/protocol -I../usbCommunication/application/protocol -I../usbCommunication/application -I../usbCommunication/components/objects -I../usbCommunication/components/support -I../usbCommunication/utilities/ulog -I../usbCommunication/utilities -I../usbCommunication/bsp/boards -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-usbCommunication-2f-utilities-2f-ulog

clean-usbCommunication-2f-utilities-2f-ulog:
	-$(RM) ./usbCommunication/utilities/ulog/ulog.cyclo ./usbCommunication/utilities/ulog/ulog.d ./usbCommunication/utilities/ulog/ulog.o ./usbCommunication/utilities/ulog/ulog.su ./usbCommunication/utilities/ulog/ulog_console.cyclo ./usbCommunication/utilities/ulog/ulog_console.d ./usbCommunication/utilities/ulog/ulog_console.o ./usbCommunication/utilities/ulog/ulog_console.su

.PHONY: clean-usbCommunication-2f-utilities-2f-ulog
