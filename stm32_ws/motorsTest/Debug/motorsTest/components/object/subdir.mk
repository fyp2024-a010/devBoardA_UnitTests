################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../motorsTest/components/object/object.c 

OBJS += \
./motorsTest/components/object/object.o 

C_DEPS += \
./motorsTest/components/object/object.d 


# Each subdirectory must supply rules for building sources it contributes
motorsTest/components/object/%.o motorsTest/components/object/%.su motorsTest/components/object/%.cyclo: ../motorsTest/components/object/%.c motorsTest/components/object/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../motorsTest/application -I../motorsTest/components/algorithm -I../motorsTest/components/controller -I../motorsTest/components/devices -I../motorsTest/components/object -I../motorsTest/components/support -I../motorsTest/utilities -I../motorsTest/utilities/ulog -I../motorsTest/bsp/boards -I../motorsTest/components/modules -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-motorsTest-2f-components-2f-object

clean-motorsTest-2f-components-2f-object:
	-$(RM) ./motorsTest/components/object/object.cyclo ./motorsTest/components/object/object.d ./motorsTest/components/object/object.o ./motorsTest/components/object/object.su

.PHONY: clean-motorsTest-2f-components-2f-object
