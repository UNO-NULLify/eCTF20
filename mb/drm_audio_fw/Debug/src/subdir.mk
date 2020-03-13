# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/drm.c \
../src/platform.c \
../src/util.c \
../src/monocypher.c

OBJS += \
./src/drm.o \
./src/platform.o \
./src/util.o \
./src/monocypher.o

C_DEPS += \
./src/drm.d \
./src/platform.d \
./src/util.d \
./src/monocypher.d


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -Wextra -mxl-barrel-shift -mno-xl-soft-div -mno-xl-soft-mul -Os -s -fvisibility=hidden -static -Wconversion -Wsign-conversion -fstack-check -mxl-reorder -Wstack-protector --param ssp-buffer-size=4 -ftrapv -Wl,-z,relro,-z,now -Wl,-z,noexecstack -I"../../drm_audio_fw_bsp/microblaze_0/include" -I"../../drm_audio_fw/src/include" -I"/opt/Xilinx/SDK/2017.4/gnu/microblaze/linux_toolchain/lin32_le/microblazeel-xilinx-linux-gnu/sys-root/usr/include" -c -fmessage-length=0 -MT"$@" -mlittle-endian -mcpu=v10.0 -Wl,--relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



