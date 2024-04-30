################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../motorsTest/components/support/fifo.c \
../motorsTest/components/support/mem_mang4.c \
../motorsTest/components/support/mf_crc.c 

OBJS += \
./motorsTest/components/support/fifo.o \
./motorsTest/components/support/mem_mang4.o \
./motorsTest/components/support/mf_crc.o 

C_DEPS += \
./motorsTest/components/support/fifo.d \
./motorsTest/components/support/mem_mang4.d \
./motorsTest/components/support/mf_crc.d 


# Each subdirectory must supply rules for building sources it contributes
motorsTest/components/support/%.o motorsTest/components/support/%.su motorsTest/components/support/%.cyclo: ../motorsTest/components/support/%.c motorsTest/components/support/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../motorsTest/application -I../motorsTest/components/algorithm -I../motorsTest/components/controller -I../motorsTest/components/devices -I../motorsTest/components/object -I../motorsTest/components/support -I../motorsTest/utilities -I../motorsTest/utilities/ulog -I../motorsTest/bsp/boards -I../motorsTest/components/modules -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-motorsTest-2f-components-2f-support

clean-motorsTest-2f-components-2f-support:
	-$(RM) ./motorsTest/components/support/fifo.cyclo ./motorsTest/components/support/fifo.d ./motorsTest/components/support/fifo.o ./motorsTest/components/support/fifo.su ./motorsTest/components/support/mem_mang4.cyclo ./motorsTest/components/support/mem_mang4.d ./motorsTest/components/support/mem_mang4.o ./motorsTest/components/support/mem_mang4.su ./motorsTest/components/support/mf_crc.cyclo ./motorsTest/components/support/mf_crc.d ./motorsTest/components/support/mf_crc.o ./motorsTest/components/support/mf_crc.su

.PHONY: clean-motorsTest-2f-components-2f-support

