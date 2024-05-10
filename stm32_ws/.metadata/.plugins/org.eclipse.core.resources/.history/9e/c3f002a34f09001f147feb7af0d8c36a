################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usbCommunication/utilities/period.c \
../usbCommunication/utilities/soft_timer.c 

OBJS += \
./usbCommunication/utilities/period.o \
./usbCommunication/utilities/soft_timer.o 

C_DEPS += \
./usbCommunication/utilities/period.d \
./usbCommunication/utilities/soft_timer.d 


# Each subdirectory must supply rules for building sources it contributes
usbCommunication/utilities/%.o usbCommunication/utilities/%.su usbCommunication/utilities/%.cyclo: ../usbCommunication/utilities/%.c usbCommunication/utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../usbCommunication/application -I../usbCommunication/utilities -I../usbCommunication/algorithm -I../usbCommunication/support -I../usbCommunication/boards -I../usbCommunication/controller -I../usbCommunication/devices -I../usbCommunication/modules -I../usbCommunication/object -I../usbCommunication/test -I../usbCommunication/ulog -I../usbCommunication/protocol -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-usbCommunication-2f-utilities

clean-usbCommunication-2f-utilities:
	-$(RM) ./usbCommunication/utilities/period.cyclo ./usbCommunication/utilities/period.d ./usbCommunication/utilities/period.o ./usbCommunication/utilities/period.su ./usbCommunication/utilities/soft_timer.cyclo ./usbCommunication/utilities/soft_timer.d ./usbCommunication/utilities/soft_timer.o ./usbCommunication/utilities/soft_timer.su

.PHONY: clean-usbCommunication-2f-utilities

