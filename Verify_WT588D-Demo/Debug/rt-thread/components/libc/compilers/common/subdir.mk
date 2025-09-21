################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/libc/compilers/common/cctype.c \
../rt-thread/components/libc/compilers/common/cstdio.c \
../rt-thread/components/libc/compilers/common/cstdlib.c \
../rt-thread/components/libc/compilers/common/cstring.c \
../rt-thread/components/libc/compilers/common/ctime.c \
../rt-thread/components/libc/compilers/common/cwchar.c 

OBJS += \
./rt-thread/components/libc/compilers/common/cctype.o \
./rt-thread/components/libc/compilers/common/cstdio.o \
./rt-thread/components/libc/compilers/common/cstdlib.o \
./rt-thread/components/libc/compilers/common/cstring.o \
./rt-thread/components/libc/compilers/common/ctime.o \
./rt-thread/components/libc/compilers/common/cwchar.o 

C_DEPS += \
./rt-thread/components/libc/compilers/common/cctype.d \
./rt-thread/components/libc/compilers/common/cstdio.d \
./rt-thread/components/libc/compilers/common/cstdlib.d \
./rt-thread/components/libc/compilers/common/cstring.d \
./rt-thread/components/libc/compilers/common/ctime.d \
./rt-thread/components/libc/compilers/common/cwchar.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/libc/compilers/common/%.o: ../rt-thread/components/libc/compilers/common/%.c
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -DSOC_FAMILY_STM32 -DSOC_SERIES_STM32F1 -DUSE_HAL_DRIVER -DSTM32F103xE -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\drivers" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\drivers\include" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\drivers\include\config" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\CMSIS\Device\ST\STM32F1xx\Include" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\CMSIS\Include" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\CMSIS\RTOS\Template" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\STM32F1xx_HAL_Driver\Inc" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\libraries\STM32F1xx_HAL_Driver\Inc\Legacy" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\applications" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\cubemx\Inc" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\cubemx" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\drivers\include" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\finsh" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\compilers\common\include" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\compilers\newlib" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\posix\io\poll" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\posix\io\stdio" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\components\libc\posix\ipc" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\include" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\libcpu\arm\common" -I"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rt-thread\libcpu\arm\cortex-m3" -include"I:\GitHub-young-nights\wt588d-verify-demo\Verify_WT588D-Demo\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

