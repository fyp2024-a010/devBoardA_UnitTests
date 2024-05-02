################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../protocolTest/application/blinky_task.c \
../protocolTest/application/init.c \
../protocolTest/application/protocolTest_task.c \
../protocolTest/application/protocol_task.c \
../protocolTest/application/timer_task.c 

OBJS += \
./protocolTest/application/blinky_task.o \
./protocolTest/application/init.o \
./protocolTest/application/protocolTest_task.o \
./protocolTest/application/protocol_task.o \
./protocolTest/application/timer_task.o 

C_DEPS += \
./protocolTest/application/blinky_task.d \
./protocolTest/application/init.d \
./protocolTest/application/protocolTest_task.d \
./protocolTest/application/protocol_task.d \
./protocolTest/application/timer_task.d 


# Each subdirectory must supply rules for building sources it contributes
protocolTest/application/%.o protocolTest/application/%.su protocolTest/application/%.cyclo: ../protocolTest/application/%.c protocolTest/application/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../protocolTest/application -I../protocolTest/components/object -I../protocolTest/usbVCP -I../protocolTest/application/protocol -I../protocolTest/utilities -I../protocolTest/components/support -I../protocolTest/utilities/ulog -I../protocolTest/components/usbVCP -I../protocolTest/bsp -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-protocolTest-2f-application

clean-protocolTest-2f-application:
	-$(RM) ./protocolTest/application/blinky_task.cyclo ./protocolTest/application/blinky_task.d ./protocolTest/application/blinky_task.o ./protocolTest/application/blinky_task.su ./protocolTest/application/init.cyclo ./protocolTest/application/init.d ./protocolTest/application/init.o ./protocolTest/application/init.su ./protocolTest/application/protocolTest_task.cyclo ./protocolTest/application/protocolTest_task.d ./protocolTest/application/protocolTest_task.o ./protocolTest/application/protocolTest_task.su ./protocolTest/application/protocol_task.cyclo ./protocolTest/application/protocol_task.d ./protocolTest/application/protocol_task.o ./protocolTest/application/protocol_task.su ./protocolTest/application/timer_task.cyclo ./protocolTest/application/timer_task.d ./protocolTest/application/timer_task.o ./protocolTest/application/timer_task.su

.PHONY: clean-protocolTest-2f-application

