################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/libc/compilers/newlib/syscalls.c 

OBJS += \
./rt-thread/components/libc/compilers/newlib/syscalls.o 

C_DEPS += \
./rt-thread/components/libc/compilers/newlib/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/libc/compilers/newlib/%.o: ../rt-thread/components/libc/compilers/newlib/%.c
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -DSOC_FAMILY_STM32 -DSOC_SERIES_STM32F1 -DUSE_HAL_DRIVER -DSTM32F103xE -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\drivers" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\drivers\include" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\drivers\include\config" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\CMSIS\Device\ST\STM32F1xx\Include" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\CMSIS\Include" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\CMSIS\RTOS\Template" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\STM32F1xx_HAL_Driver\Inc" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\STM32F1xx_HAL_Driver\Inc\Legacy" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\applications" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\cubemx\Inc" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\cubemx" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\drivers\include" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\finsh" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\compilers\common\include" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\compilers\newlib" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\posix\io\poll" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\posix\io\stdio" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\posix\ipc" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\include" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\libcpu\arm\common" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\libcpu\arm\cortex-m3" -include"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

