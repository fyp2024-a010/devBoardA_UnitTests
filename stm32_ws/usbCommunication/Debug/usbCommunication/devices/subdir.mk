################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usbCommunication/devices/dbus.c \
../usbCommunication/devices/detect.c \
../usbCommunication/devices/device.c \
../usbCommunication/devices/motor.c 

OBJS += \
./usbCommunication/devices/dbus.o \
./usbCommunication/devices/detect.o \
./usbCommunication/devices/device.o \
./usbCommunication/devices/motor.o 

C_DEPS += \
./usbCommunication/devices/dbus.d \
./usbCommunication/devices/detect.d \
./usbCommunication/devices/device.d \
./usbCommunication/devices/motor.d 


# Each subdirectory must supply rules for building sources it contributes
usbCommunication/devices/%.o usbCommunication/devices/%.su usbCommunication/devices/%.cyclo: ../usbCommunication/devices/%.c usbCommunication/devices/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../usbCommunication/application -I../usbCommunication/utilities -I../usbCommunication/algorithm -I../usbCommunication/support -I../usbCommunication/boards -I../usbCommunication/controller -I../usbCommunication/devices -I../usbCommunication/modules -I../usbCommunication/object -I../usbCommunication/test -I../usbCommunication/ulog -I../usbCommunication/protocol -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-usbCommunication-2f-devices

clean-usbCommunication-2f-devices:
	-$(RM) ./usbCommunication/devices/dbus.cyclo ./usbCommunication/devices/dbus.d ./usbCommunication/devices/dbus.o ./usbCommunication/devices/dbus.su ./usbCommunication/devices/detect.cyclo ./usbCommunication/devices/detect.d ./usbCommunication/devices/detect.o ./usbCommunication/devices/detect.su ./usbCommunication/devices/device.cyclo ./usbCommunication/devices/device.d ./usbCommunication/devices/device.o ./usbCommunication/devices/device.su ./usbCommunication/devices/motor.cyclo ./usbCommunication/devices/motor.d ./usbCommunication/devices/motor.o ./usbCommunication/devices/motor.su

.PHONY: clean-usbCommunication-2f-devices

