################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usbCommunication/algorithm/madgwick_ahrs.c \
../usbCommunication/algorithm/mahony_ahrs.c \
../usbCommunication/algorithm/mecanum.c \
../usbCommunication/algorithm/pid.c \
../usbCommunication/algorithm/ramp.c 

OBJS += \
./usbCommunication/algorithm/madgwick_ahrs.o \
./usbCommunication/algorithm/mahony_ahrs.o \
./usbCommunication/algorithm/mecanum.o \
./usbCommunication/algorithm/pid.o \
./usbCommunication/algorithm/ramp.o 

C_DEPS += \
./usbCommunication/algorithm/madgwick_ahrs.d \
./usbCommunication/algorithm/mahony_ahrs.d \
./usbCommunication/algorithm/mecanum.d \
./usbCommunication/algorithm/pid.d \
./usbCommunication/algorithm/ramp.d 


# Each subdirectory must supply rules for building sources it contributes
usbCommunication/algorithm/%.o usbCommunication/algorithm/%.su usbCommunication/algorithm/%.cyclo: ../usbCommunication/algorithm/%.c usbCommunication/algorithm/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F427xx -c -I../Core/Inc -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../usbCommunication/application -I../usbCommunication/utilities -I../usbCommunication/algorithm -I../usbCommunication/support -I../usbCommunication/boards -I../usbCommunication/controller -I../usbCommunication/devices -I../usbCommunication/modules -I../usbCommunication/object -I../usbCommunication/test -I../usbCommunication/ulog -I../usbCommunication/protocol -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-usbCommunication-2f-algorithm

clean-usbCommunication-2f-algorithm:
	-$(RM) ./usbCommunication/algorithm/madgwick_ahrs.cyclo ./usbCommunication/algorithm/madgwick_ahrs.d ./usbCommunication/algorithm/madgwick_ahrs.o ./usbCommunication/algorithm/madgwick_ahrs.su ./usbCommunication/algorithm/mahony_ahrs.cyclo ./usbCommunication/algorithm/mahony_ahrs.d ./usbCommunication/algorithm/mahony_ahrs.o ./usbCommunication/algorithm/mahony_ahrs.su ./usbCommunication/algorithm/mecanum.cyclo ./usbCommunication/algorithm/mecanum.d ./usbCommunication/algorithm/mecanum.o ./usbCommunication/algorithm/mecanum.su ./usbCommunication/algorithm/pid.cyclo ./usbCommunication/algorithm/pid.d ./usbCommunication/algorithm/pid.o ./usbCommunication/algorithm/pid.su ./usbCommunication/algorithm/ramp.cyclo ./usbCommunication/algorithm/ramp.d ./usbCommunication/algorithm/ramp.o ./usbCommunication/algorithm/ramp.su

.PHONY: clean-usbCommunication-2f-algorithm

