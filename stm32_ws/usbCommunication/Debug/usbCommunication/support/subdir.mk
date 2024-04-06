################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usbCommunication/support/fifo.c \
../usbCommunication/support/mem_mang4.c \
../usbCommunication/support/mf_crc.c 

OBJS += \
./usbCommunication/support/fifo.o \
./usbCommunication/support/mem_mang4.o \
./usbCommunication/support/mf_crc.o 

C_DEPS += \
./usbCommunication/support/fifo.d \
./usbCommunication/support/mem_mang4.d \
./usbCommunication/support/mf_crc.d 


# Each subdirectory must supply rules for building sources it contributes
usbCommunication/support/%.o usbCommunication/support/%.su usbCommunication/support/%.cyclo: ../usbCommunication/support/%.c usbCommunication/support/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../usbCommunication/application -I../usbCommunication/utilities -I../usbCommunication/algorithm -I../usbCommunication/support -I../usbCommunication/boards -I../usbCommunication/controller -I../usbCommunication/devices -I../usbCommunication/modules -I../usbCommunication/object -I../usbCommunication/test -I../usbCommunication/ulog -I../usbCommunication/protocol -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-usbCommunication-2f-support

clean-usbCommunication-2f-support:
	-$(RM) ./usbCommunication/support/fifo.cyclo ./usbCommunication/support/fifo.d ./usbCommunication/support/fifo.o ./usbCommunication/support/fifo.su ./usbCommunication/support/mem_mang4.cyclo ./usbCommunication/support/mem_mang4.d ./usbCommunication/support/mem_mang4.o ./usbCommunication/support/mem_mang4.su ./usbCommunication/support/mf_crc.cyclo ./usbCommunication/support/mf_crc.d ./usbCommunication/support/mf_crc.o ./usbCommunication/support/mf_crc.su

.PHONY: clean-usbCommunication-2f-support

