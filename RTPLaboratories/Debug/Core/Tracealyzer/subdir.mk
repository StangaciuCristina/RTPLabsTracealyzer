################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Tracealyzer/SEGGER_RTT.c \
../Core/Tracealyzer/trcAssert.c \
../Core/Tracealyzer/trcCounter.c \
../Core/Tracealyzer/trcDependency.c \
../Core/Tracealyzer/trcDiagnostics.c \
../Core/Tracealyzer/trcEntryTable.c \
../Core/Tracealyzer/trcError.c \
../Core/Tracealyzer/trcEvent.c \
../Core/Tracealyzer/trcEventBuffer.c \
../Core/Tracealyzer/trcExtension.c \
../Core/Tracealyzer/trcHardwarePort.c \
../Core/Tracealyzer/trcHeap.c \
../Core/Tracealyzer/trcISR.c \
../Core/Tracealyzer/trcInternalEventBuffer.c \
../Core/Tracealyzer/trcInterval.c \
../Core/Tracealyzer/trcKernelPort.c \
../Core/Tracealyzer/trcMultiCoreEventBuffer.c \
../Core/Tracealyzer/trcObject.c \
../Core/Tracealyzer/trcPrint.c \
../Core/Tracealyzer/trcRunnable.c \
../Core/Tracealyzer/trcSnapshotRecorder.c \
../Core/Tracealyzer/trcStackMonitor.c \
../Core/Tracealyzer/trcStateMachine.c \
../Core/Tracealyzer/trcStaticBuffer.c \
../Core/Tracealyzer/trcStreamPort.c \
../Core/Tracealyzer/trcStreamingRecorder.c \
../Core/Tracealyzer/trcString.c \
../Core/Tracealyzer/trcTask.c \
../Core/Tracealyzer/trcTimestamp.c 

OBJS += \
./Core/Tracealyzer/SEGGER_RTT.o \
./Core/Tracealyzer/trcAssert.o \
./Core/Tracealyzer/trcCounter.o \
./Core/Tracealyzer/trcDependency.o \
./Core/Tracealyzer/trcDiagnostics.o \
./Core/Tracealyzer/trcEntryTable.o \
./Core/Tracealyzer/trcError.o \
./Core/Tracealyzer/trcEvent.o \
./Core/Tracealyzer/trcEventBuffer.o \
./Core/Tracealyzer/trcExtension.o \
./Core/Tracealyzer/trcHardwarePort.o \
./Core/Tracealyzer/trcHeap.o \
./Core/Tracealyzer/trcISR.o \
./Core/Tracealyzer/trcInternalEventBuffer.o \
./Core/Tracealyzer/trcInterval.o \
./Core/Tracealyzer/trcKernelPort.o \
./Core/Tracealyzer/trcMultiCoreEventBuffer.o \
./Core/Tracealyzer/trcObject.o \
./Core/Tracealyzer/trcPrint.o \
./Core/Tracealyzer/trcRunnable.o \
./Core/Tracealyzer/trcSnapshotRecorder.o \
./Core/Tracealyzer/trcStackMonitor.o \
./Core/Tracealyzer/trcStateMachine.o \
./Core/Tracealyzer/trcStaticBuffer.o \
./Core/Tracealyzer/trcStreamPort.o \
./Core/Tracealyzer/trcStreamingRecorder.o \
./Core/Tracealyzer/trcString.o \
./Core/Tracealyzer/trcTask.o \
./Core/Tracealyzer/trcTimestamp.o 

C_DEPS += \
./Core/Tracealyzer/SEGGER_RTT.d \
./Core/Tracealyzer/trcAssert.d \
./Core/Tracealyzer/trcCounter.d \
./Core/Tracealyzer/trcDependency.d \
./Core/Tracealyzer/trcDiagnostics.d \
./Core/Tracealyzer/trcEntryTable.d \
./Core/Tracealyzer/trcError.d \
./Core/Tracealyzer/trcEvent.d \
./Core/Tracealyzer/trcEventBuffer.d \
./Core/Tracealyzer/trcExtension.d \
./Core/Tracealyzer/trcHardwarePort.d \
./Core/Tracealyzer/trcHeap.d \
./Core/Tracealyzer/trcISR.d \
./Core/Tracealyzer/trcInternalEventBuffer.d \
./Core/Tracealyzer/trcInterval.d \
./Core/Tracealyzer/trcKernelPort.d \
./Core/Tracealyzer/trcMultiCoreEventBuffer.d \
./Core/Tracealyzer/trcObject.d \
./Core/Tracealyzer/trcPrint.d \
./Core/Tracealyzer/trcRunnable.d \
./Core/Tracealyzer/trcSnapshotRecorder.d \
./Core/Tracealyzer/trcStackMonitor.d \
./Core/Tracealyzer/trcStateMachine.d \
./Core/Tracealyzer/trcStaticBuffer.d \
./Core/Tracealyzer/trcStreamPort.d \
./Core/Tracealyzer/trcStreamingRecorder.d \
./Core/Tracealyzer/trcString.d \
./Core/Tracealyzer/trcTask.d \
./Core/Tracealyzer/trcTimestamp.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Tracealyzer/%.o Core/Tracealyzer/%.su Core/Tracealyzer/%.cyclo: ../Core/Tracealyzer/%.c Core/Tracealyzer/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Tracealyzer/include -I"D:/work/FreeRTOSDiscovery/RTPLabsTracealyzer/RTPLaboratories/Core/Tracealyzer/include" -I"D:/work/FreeRTOSDiscovery/RTPLabsTracealyzer/RTPLaboratories/Core/Tracealyzer/config" -I../Core/Inc -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Tracealyzer

clean-Core-2f-Tracealyzer:
	-$(RM) ./Core/Tracealyzer/SEGGER_RTT.cyclo ./Core/Tracealyzer/SEGGER_RTT.d ./Core/Tracealyzer/SEGGER_RTT.o ./Core/Tracealyzer/SEGGER_RTT.su ./Core/Tracealyzer/trcAssert.cyclo ./Core/Tracealyzer/trcAssert.d ./Core/Tracealyzer/trcAssert.o ./Core/Tracealyzer/trcAssert.su ./Core/Tracealyzer/trcCounter.cyclo ./Core/Tracealyzer/trcCounter.d ./Core/Tracealyzer/trcCounter.o ./Core/Tracealyzer/trcCounter.su ./Core/Tracealyzer/trcDependency.cyclo ./Core/Tracealyzer/trcDependency.d ./Core/Tracealyzer/trcDependency.o ./Core/Tracealyzer/trcDependency.su ./Core/Tracealyzer/trcDiagnostics.cyclo ./Core/Tracealyzer/trcDiagnostics.d ./Core/Tracealyzer/trcDiagnostics.o ./Core/Tracealyzer/trcDiagnostics.su ./Core/Tracealyzer/trcEntryTable.cyclo ./Core/Tracealyzer/trcEntryTable.d ./Core/Tracealyzer/trcEntryTable.o ./Core/Tracealyzer/trcEntryTable.su ./Core/Tracealyzer/trcError.cyclo ./Core/Tracealyzer/trcError.d ./Core/Tracealyzer/trcError.o ./Core/Tracealyzer/trcError.su ./Core/Tracealyzer/trcEvent.cyclo ./Core/Tracealyzer/trcEvent.d ./Core/Tracealyzer/trcEvent.o ./Core/Tracealyzer/trcEvent.su ./Core/Tracealyzer/trcEventBuffer.cyclo ./Core/Tracealyzer/trcEventBuffer.d ./Core/Tracealyzer/trcEventBuffer.o ./Core/Tracealyzer/trcEventBuffer.su ./Core/Tracealyzer/trcExtension.cyclo ./Core/Tracealyzer/trcExtension.d ./Core/Tracealyzer/trcExtension.o ./Core/Tracealyzer/trcExtension.su ./Core/Tracealyzer/trcHardwarePort.cyclo ./Core/Tracealyzer/trcHardwarePort.d ./Core/Tracealyzer/trcHardwarePort.o ./Core/Tracealyzer/trcHardwarePort.su ./Core/Tracealyzer/trcHeap.cyclo ./Core/Tracealyzer/trcHeap.d ./Core/Tracealyzer/trcHeap.o ./Core/Tracealyzer/trcHeap.su ./Core/Tracealyzer/trcISR.cyclo ./Core/Tracealyzer/trcISR.d ./Core/Tracealyzer/trcISR.o ./Core/Tracealyzer/trcISR.su ./Core/Tracealyzer/trcInternalEventBuffer.cyclo ./Core/Tracealyzer/trcInternalEventBuffer.d ./Core/Tracealyzer/trcInternalEventBuffer.o ./Core/Tracealyzer/trcInternalEventBuffer.su ./Core/Tracealyzer/trcInterval.cyclo ./Core/Tracealyzer/trcInterval.d ./Core/Tracealyzer/trcInterval.o ./Core/Tracealyzer/trcInterval.su ./Core/Tracealyzer/trcKernelPort.cyclo ./Core/Tracealyzer/trcKernelPort.d ./Core/Tracealyzer/trcKernelPort.o ./Core/Tracealyzer/trcKernelPort.su ./Core/Tracealyzer/trcMultiCoreEventBuffer.cyclo ./Core/Tracealyzer/trcMultiCoreEventBuffer.d ./Core/Tracealyzer/trcMultiCoreEventBuffer.o ./Core/Tracealyzer/trcMultiCoreEventBuffer.su ./Core/Tracealyzer/trcObject.cyclo ./Core/Tracealyzer/trcObject.d ./Core/Tracealyzer/trcObject.o ./Core/Tracealyzer/trcObject.su ./Core/Tracealyzer/trcPrint.cyclo ./Core/Tracealyzer/trcPrint.d ./Core/Tracealyzer/trcPrint.o ./Core/Tracealyzer/trcPrint.su ./Core/Tracealyzer/trcRunnable.cyclo ./Core/Tracealyzer/trcRunnable.d ./Core/Tracealyzer/trcRunnable.o ./Core/Tracealyzer/trcRunnable.su ./Core/Tracealyzer/trcSnapshotRecorder.cyclo ./Core/Tracealyzer/trcSnapshotRecorder.d ./Core/Tracealyzer/trcSnapshotRecorder.o ./Core/Tracealyzer/trcSnapshotRecorder.su ./Core/Tracealyzer/trcStackMonitor.cyclo ./Core/Tracealyzer/trcStackMonitor.d ./Core/Tracealyzer/trcStackMonitor.o ./Core/Tracealyzer/trcStackMonitor.su ./Core/Tracealyzer/trcStateMachine.cyclo ./Core/Tracealyzer/trcStateMachine.d ./Core/Tracealyzer/trcStateMachine.o ./Core/Tracealyzer/trcStateMachine.su ./Core/Tracealyzer/trcStaticBuffer.cyclo ./Core/Tracealyzer/trcStaticBuffer.d ./Core/Tracealyzer/trcStaticBuffer.o ./Core/Tracealyzer/trcStaticBuffer.su ./Core/Tracealyzer/trcStreamPort.cyclo ./Core/Tracealyzer/trcStreamPort.d ./Core/Tracealyzer/trcStreamPort.o ./Core/Tracealyzer/trcStreamPort.su ./Core/Tracealyzer/trcStreamingRecorder.cyclo ./Core/Tracealyzer/trcStreamingRecorder.d ./Core/Tracealyzer/trcStreamingRecorder.o ./Core/Tracealyzer/trcStreamingRecorder.su ./Core/Tracealyzer/trcString.cyclo ./Core/Tracealyzer/trcString.d ./Core/Tracealyzer/trcString.o ./Core/Tracealyzer/trcString.su ./Core/Tracealyzer/trcTask.cyclo ./Core/Tracealyzer/trcTask.d ./Core/Tracealyzer/trcTask.o ./Core/Tracealyzer/trcTask.su ./Core/Tracealyzer/trcTimestamp.cyclo ./Core/Tracealyzer/trcTimestamp.d ./Core/Tracealyzer/trcTimestamp.o ./Core/Tracealyzer/trcTimestamp.su

.PHONY: clean-Core-2f-Tracealyzer

