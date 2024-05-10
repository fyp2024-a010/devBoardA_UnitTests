################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usbCommunication/test/log_test.c \
../usbCommunication/test/test.c \
../usbCommunication/test/test_module.c 

OBJS += \
./usbCommunication/test/log_test.o \
./usbCommunication/test/test.o \
./usbCommunication/test/test_module.o 

C_DEPS += \
./usbCommunication/test/log_test.d \
./usbCommunication/test/test.d \
./usbCommunication/test/test_module.d 


# Each subdirectory must supply rules for building sources it contributes
usbCommunication/test/%.o usbCommunication/test/%.su usbCommunication/test/%.cyclo: ../usbCommunication/test/%.c usbCommunication/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../usbCommunication/application -I../usbCommunication/utilities -I../usbCommunication/algorithm -I../usbCommunication/support -I../usbCommunication/boards -I../usbCommunication/controller -I../usbCommunication/devices -I../usbCommunication/modules -I../usbCommunication/object -I../usbCommunication/test -I../usbCommunication/ulog -I../usbCommunication/protocol -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-usbCommunication-2f-test

clean-usbCommunication-2f-test:
	-$(RM) ./usbCommunication/test/log_test.cyclo ./usbCommunication/test/log_test.d ./usbCommunication/test/log_test.o ./usbCommunication/test/log_test.su ./usbCommunication/test/test.cyclo ./usbCommunication/test/test.d ./usbCommunication/test/test.o ./usbCommunication/test/test.su ./usbCommunication/test/test_module.cyclo ./usbCommunication/test/test_module.d ./usbCommunication/test/test_module.o ./usbCommunication/test/test_module.su

.PHONY: clean-usbCommunication-2f-test

