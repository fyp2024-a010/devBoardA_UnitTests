################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usbCommunication/components/support/fifo.c \
../usbCommunication/components/support/mem_mang4.c \
../usbCommunication/components/support/mf_crc.c 

OBJS += \
./usbCommunication/components/support/fifo.o \
./usbCommunication/components/support/mem_mang4.o \
./usbCommunication/components/support/mf_crc.o 

C_DEPS += \
./usbCommunication/components/support/fifo.d \
./usbCommunication/components/support/mem_mang4.d \
./usbCommunication/components/support/mf_crc.d 


# Each subdirectory must supply rules for building sources it contributes
usbCommunication/components/support/%.o usbCommunication/components/support/%.su usbCommunication/components/support/%.cyclo: ../usbCommunication/components/support/%.c usbCommunication/components/support/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../application/protocol -I../usbCommunication/application/protocol -I../usbCommunication/application -I../usbCommunication/components/objects -I../usbCommunication/components/support -I../usbCommunication/utilities/ulog -I../usbCommunication/utilities -I../usbCommunication/bsp/boards -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-usbCommunication-2f-components-2f-support

clean-usbCommunication-2f-components-2f-support:
	-$(RM) ./usbCommunication/components/support/fifo.cyclo ./usbCommunication/components/support/fifo.d ./usbCommunication/components/support/fifo.o ./usbCommunication/components/support/fifo.su ./usbCommunication/components/support/mem_mang4.cyclo ./usbCommunication/components/support/mem_mang4.d ./usbCommunication/components/support/mem_mang4.o ./usbCommunication/components/support/mem_mang4.su ./usbCommunication/components/support/mf_crc.cyclo ./usbCommunication/components/support/mf_crc.d ./usbCommunication/components/support/mf_crc.o ./usbCommunication/components/support/mf_crc.su

.PHONY: clean-usbCommunication-2f-components-2f-support

