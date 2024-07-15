################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Tracelyzer/SEGGER_RTT.c \
../Core/Tracelyzer/trcAssert.c \
../Core/Tracelyzer/trcCounter.c \
../Core/Tracelyzer/trcDependency.c \
../Core/Tracelyzer/trcDiagnostics.c \
../Core/Tracelyzer/trcEntryTable.c \
../Core/Tracelyzer/trcError.c \
../Core/Tracelyzer/trcEvent.c \
../Core/Tracelyzer/trcEventBuffer.c \
../Core/Tracelyzer/trcExtension.c \
../Core/Tracelyzer/trcHardwarePort.c \
../Core/Tracelyzer/trcHeap.c \
../Core/Tracelyzer/trcISR.c \
../Core/Tracelyzer/trcInternalEventBuffer.c \
../Core/Tracelyzer/trcInterval.c \
../Core/Tracelyzer/trcKernelPort.c \
../Core/Tracelyzer/trcMultiCoreEventBuffer.c \
../Core/Tracelyzer/trcObject.c \
../Core/Tracelyzer/trcPrint.c \
../Core/Tracelyzer/trcRunnable.c \
../Core/Tracelyzer/trcSnapshotRecorder.c \
../Core/Tracelyzer/trcStackMonitor.c \
../Core/Tracelyzer/trcStateMachine.c \
../Core/Tracelyzer/trcStaticBuffer.c \
../Core/Tracelyzer/trcStreamPort.c \
../Core/Tracelyzer/trcStreamingRecorder.c \
../Core/Tracelyzer/trcString.c \
../Core/Tracelyzer/trcTask.c \
../Core/Tracelyzer/trcTimestamp.c 

OBJS += \
./Core/Tracelyzer/SEGGER_RTT.o \
./Core/Tracelyzer/trcAssert.o \
./Core/Tracelyzer/trcCounter.o \
./Core/Tracelyzer/trcDependency.o \
./Core/Tracelyzer/trcDiagnostics.o \
./Core/Tracelyzer/trcEntryTable.o \
./Core/Tracelyzer/trcError.o \
./Core/Tracelyzer/trcEvent.o \
./Core/Tracelyzer/trcEventBuffer.o \
./Core/Tracelyzer/trcExtension.o \
./Core/Tracelyzer/trcHardwarePort.o \
./Core/Tracelyzer/trcHeap.o \
./Core/Tracelyzer/trcISR.o \
./Core/Tracelyzer/trcInternalEventBuffer.o \
./Core/Tracelyzer/trcInterval.o \
./Core/Tracelyzer/trcKernelPort.o \
./Core/Tracelyzer/trcMultiCoreEventBuffer.o \
./Core/Tracelyzer/trcObject.o \
./Core/Tracelyzer/trcPrint.o \
./Core/Tracelyzer/trcRunnable.o \
./Core/Tracelyzer/trcSnapshotRecorder.o \
./Core/Tracelyzer/trcStackMonitor.o \
./Core/Tracelyzer/trcStateMachine.o \
./Core/Tracelyzer/trcStaticBuffer.o \
./Core/Tracelyzer/trcStreamPort.o \
./Core/Tracelyzer/trcStreamingRecorder.o \
./Core/Tracelyzer/trcString.o \
./Core/Tracelyzer/trcTask.o \
./Core/Tracelyzer/trcTimestamp.o 

C_DEPS += \
./Core/Tracelyzer/SEGGER_RTT.d \
./Core/Tracelyzer/trcAssert.d \
./Core/Tracelyzer/trcCounter.d \
./Core/Tracelyzer/trcDependency.d \
./Core/Tracelyzer/trcDiagnostics.d \
./Core/Tracelyzer/trcEntryTable.d \
./Core/Tracelyzer/trcError.d \
./Core/Tracelyzer/trcEvent.d \
./Core/Tracelyzer/trcEventBuffer.d \
./Core/Tracelyzer/trcExtension.d \
./Core/Tracelyzer/trcHardwarePort.d \
./Core/Tracelyzer/trcHeap.d \
./Core/Tracelyzer/trcISR.d \
./Core/Tracelyzer/trcInternalEventBuffer.d \
./Core/Tracelyzer/trcInterval.d \
./Core/Tracelyzer/trcKernelPort.d \
./Core/Tracelyzer/trcMultiCoreEventBuffer.d \
./Core/Tracelyzer/trcObject.d \
./Core/Tracelyzer/trcPrint.d \
./Core/Tracelyzer/trcRunnable.d \
./Core/Tracelyzer/trcSnapshotRecorder.d \
./Core/Tracelyzer/trcStackMonitor.d \
./Core/Tracelyzer/trcStateMachine.d \
./Core/Tracelyzer/trcStaticBuffer.d \
./Core/Tracelyzer/trcStreamPort.d \
./Core/Tracelyzer/trcStreamingRecorder.d \
./Core/Tracelyzer/trcString.d \
./Core/Tracelyzer/trcTask.d \
./Core/Tracelyzer/trcTimestamp.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Tracelyzer/%.o Core/Tracelyzer/%.su Core/Tracelyzer/%.cyclo: ../Core/Tracelyzer/%.c Core/Tracelyzer/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Tracelyzer/config -I../Core/Tracelyzer/include -I../Core/Inc -I../USB_HOST/App -I../USB_HOST/Target -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Tracelyzer

clean-Core-2f-Tracelyzer:
	-$(RM) ./Core/Tracelyzer/SEGGER_RTT.cyclo ./Core/Tracelyzer/SEGGER_RTT.d ./Core/Tracelyzer/SEGGER_RTT.o ./Core/Tracelyzer/SEGGER_RTT.su ./Core/Tracelyzer/trcAssert.cyclo ./Core/Tracelyzer/trcAssert.d ./Core/Tracelyzer/trcAssert.o ./Core/Tracelyzer/trcAssert.su ./Core/Tracelyzer/trcCounter.cyclo ./Core/Tracelyzer/trcCounter.d ./Core/Tracelyzer/trcCounter.o ./Core/Tracelyzer/trcCounter.su ./Core/Tracelyzer/trcDependency.cyclo ./Core/Tracelyzer/trcDependency.d ./Core/Tracelyzer/trcDependency.o ./Core/Tracelyzer/trcDependency.su ./Core/Tracelyzer/trcDiagnostics.cyclo ./Core/Tracelyzer/trcDiagnostics.d ./Core/Tracelyzer/trcDiagnostics.o ./Core/Tracelyzer/trcDiagnostics.su ./Core/Tracelyzer/trcEntryTable.cyclo ./Core/Tracelyzer/trcEntryTable.d ./Core/Tracelyzer/trcEntryTable.o ./Core/Tracelyzer/trcEntryTable.su ./Core/Tracelyzer/trcError.cyclo ./Core/Tracelyzer/trcError.d ./Core/Tracelyzer/trcError.o ./Core/Tracelyzer/trcError.su ./Core/Tracelyzer/trcEvent.cyclo ./Core/Tracelyzer/trcEvent.d ./Core/Tracelyzer/trcEvent.o ./Core/Tracelyzer/trcEvent.su ./Core/Tracelyzer/trcEventBuffer.cyclo ./Core/Tracelyzer/trcEventBuffer.d ./Core/Tracelyzer/trcEventBuffer.o ./Core/Tracelyzer/trcEventBuffer.su ./Core/Tracelyzer/trcExtension.cyclo ./Core/Tracelyzer/trcExtension.d ./Core/Tracelyzer/trcExtension.o ./Core/Tracelyzer/trcExtension.su ./Core/Tracelyzer/trcHardwarePort.cyclo ./Core/Tracelyzer/trcHardwarePort.d ./Core/Tracelyzer/trcHardwarePort.o ./Core/Tracelyzer/trcHardwarePort.su ./Core/Tracelyzer/trcHeap.cyclo ./Core/Tracelyzer/trcHeap.d ./Core/Tracelyzer/trcHeap.o ./Core/Tracelyzer/trcHeap.su ./Core/Tracelyzer/trcISR.cyclo ./Core/Tracelyzer/trcISR.d ./Core/Tracelyzer/trcISR.o ./Core/Tracelyzer/trcISR.su ./Core/Tracelyzer/trcInternalEventBuffer.cyclo ./Core/Tracelyzer/trcInternalEventBuffer.d ./Core/Tracelyzer/trcInternalEventBuffer.o ./Core/Tracelyzer/trcInternalEventBuffer.su ./Core/Tracelyzer/trcInterval.cyclo ./Core/Tracelyzer/trcInterval.d ./Core/Tracelyzer/trcInterval.o ./Core/Tracelyzer/trcInterval.su ./Core/Tracelyzer/trcKernelPort.cyclo ./Core/Tracelyzer/trcKernelPort.d ./Core/Tracelyzer/trcKernelPort.o ./Core/Tracelyzer/trcKernelPort.su ./Core/Tracelyzer/trcMultiCoreEventBuffer.cyclo ./Core/Tracelyzer/trcMultiCoreEventBuffer.d ./Core/Tracelyzer/trcMultiCoreEventBuffer.o ./Core/Tracelyzer/trcMultiCoreEventBuffer.su ./Core/Tracelyzer/trcObject.cyclo ./Core/Tracelyzer/trcObject.d ./Core/Tracelyzer/trcObject.o ./Core/Tracelyzer/trcObject.su ./Core/Tracelyzer/trcPrint.cyclo ./Core/Tracelyzer/trcPrint.d ./Core/Tracelyzer/trcPrint.o ./Core/Tracelyzer/trcPrint.su ./Core/Tracelyzer/trcRunnable.cyclo ./Core/Tracelyzer/trcRunnable.d ./Core/Tracelyzer/trcRunnable.o ./Core/Tracelyzer/trcRunnable.su ./Core/Tracelyzer/trcSnapshotRecorder.cyclo ./Core/Tracelyzer/trcSnapshotRecorder.d ./Core/Tracelyzer/trcSnapshotRecorder.o ./Core/Tracelyzer/trcSnapshotRecorder.su ./Core/Tracelyzer/trcStackMonitor.cyclo ./Core/Tracelyzer/trcStackMonitor.d ./Core/Tracelyzer/trcStackMonitor.o ./Core/Tracelyzer/trcStackMonitor.su ./Core/Tracelyzer/trcStateMachine.cyclo ./Core/Tracelyzer/trcStateMachine.d ./Core/Tracelyzer/trcStateMachine.o ./Core/Tracelyzer/trcStateMachine.su ./Core/Tracelyzer/trcStaticBuffer.cyclo ./Core/Tracelyzer/trcStaticBuffer.d ./Core/Tracelyzer/trcStaticBuffer.o ./Core/Tracelyzer/trcStaticBuffer.su ./Core/Tracelyzer/trcStreamPort.cyclo ./Core/Tracelyzer/trcStreamPort.d ./Core/Tracelyzer/trcStreamPort.o ./Core/Tracelyzer/trcStreamPort.su ./Core/Tracelyzer/trcStreamingRecorder.cyclo ./Core/Tracelyzer/trcStreamingRecorder.d ./Core/Tracelyzer/trcStreamingRecorder.o ./Core/Tracelyzer/trcStreamingRecorder.su ./Core/Tracelyzer/trcString.cyclo ./Core/Tracelyzer/trcString.d ./Core/Tracelyzer/trcString.o ./Core/Tracelyzer/trcString.su ./Core/Tracelyzer/trcTask.cyclo ./Core/Tracelyzer/trcTask.d ./Core/Tracelyzer/trcTask.o ./Core/Tracelyzer/trcTask.su ./Core/Tracelyzer/trcTimestamp.cyclo ./Core/Tracelyzer/trcTimestamp.d ./Core/Tracelyzer/trcTimestamp.o ./Core/Tracelyzer/trcTimestamp.su

.PHONY: clean-Core-2f-Tracelyzer

