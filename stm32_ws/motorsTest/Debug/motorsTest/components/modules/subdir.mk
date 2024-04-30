################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../motorsTest/components/modules/chassis.c \
../motorsTest/components/modules/motor_cluster.c 

OBJS += \
./motorsTest/components/modules/chassis.o \
./motorsTest/components/modules/motor_cluster.o 

C_DEPS += \
./motorsTest/components/modules/chassis.d \
./motorsTest/components/modules/motor_cluster.d 


# Each subdirectory must supply rules for building sources it contributes
motorsTest/components/modules/%.o motorsTest/components/modules/%.su motorsTest/components/modules/%.cyclo: ../motorsTest/components/modules/%.c motorsTest/components/modules/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../motorsTest/application -I../motorsTest/components/algorithm -I../motorsTest/components/controller -I../motorsTest/components/devices -I../motorsTest/components/object -I../motorsTest/components/support -I../motorsTest/utilities -I../motorsTest/utilities/ulog -I../motorsTest/bsp/boards -I../motorsTest/components/modules -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-motorsTest-2f-components-2f-modules

clean-motorsTest-2f-components-2f-modules:
	-$(RM) ./motorsTest/components/modules/chassis.cyclo ./motorsTest/components/modules/chassis.d ./motorsTest/components/modules/chassis.o ./motorsTest/components/modules/chassis.su ./motorsTest/components/modules/motor_cluster.cyclo ./motorsTest/components/modules/motor_cluster.d ./motorsTest/components/modules/motor_cluster.o ./motorsTest/components/modules/motor_cluster.su

.PHONY: clean-motorsTest-2f-components-2f-modules

