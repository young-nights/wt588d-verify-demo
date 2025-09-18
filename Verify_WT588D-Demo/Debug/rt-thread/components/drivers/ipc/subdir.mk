################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/drivers/ipc/completion.c \
../rt-thread/components/drivers/ipc/dataqueue.c \
../rt-thread/components/drivers/ipc/pipe.c \
../rt-thread/components/drivers/ipc/ringblk_buf.c \
../rt-thread/components/drivers/ipc/ringbuffer.c \
../rt-thread/components/drivers/ipc/waitqueue.c \
../rt-thread/components/drivers/ipc/workqueue.c 

OBJS += \
./rt-thread/components/drivers/ipc/completion.o \
./rt-thread/components/drivers/ipc/dataqueue.o \
./rt-thread/components/drivers/ipc/pipe.o \
./rt-thread/components/drivers/ipc/ringblk_buf.o \
./rt-thread/components/drivers/ipc/ringbuffer.o \
./rt-thread/components/drivers/ipc/waitqueue.o \
./rt-thread/components/drivers/ipc/workqueue.o 

C_DEPS += \
./rt-thread/components/drivers/ipc/completion.d \
./rt-thread/components/drivers/ipc/dataqueue.d \
./rt-thread/components/drivers/ipc/pipe.d \
./rt-thread/components/drivers/ipc/ringblk_buf.d \
./rt-thread/components/drivers/ipc/ringbuffer.d \
./rt-thread/components/drivers/ipc/waitqueue.d \
./rt-thread/components/drivers/ipc/workqueue.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/drivers/ipc/%.o: ../rt-thread/components/drivers/ipc/%.c
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -DSOC_FAMILY_STM32 -DSOC_SERIES_STM32F1 -DUSE_HAL_DRIVER -DSTM32F103xE -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\drivers" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\drivers\include" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\drivers\include\config" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\CMSIS\Device\ST\STM32F1xx\Include" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\CMSIS\Include" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\CMSIS\RTOS\Template" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\STM32F1xx_HAL_Driver\Inc" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\STM32F1xx_HAL_Driver\Inc\Legacy" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\applications" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\cubemx\Inc" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\cubemx" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\drivers\include" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\finsh" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\compilers\common\include" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\compilers\newlib" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\posix\io\poll" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\posix\io\stdio" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\posix\ipc" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\include" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\libcpu\arm\common" -I"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\libcpu\arm\cortex-m3" -include"C:\Users\18452\Documents\Github-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

