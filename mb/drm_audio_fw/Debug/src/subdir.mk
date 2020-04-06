################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/main.c \
../src/platform.c \
../src/util.c \
../src/monocypher.c  

OBJS += \
./src/main.o \
./src/platform.o \
./src/util.o \
./src/monocypher.o  

C_DEPS += \
./src/main.d \
./src/platform.d \
./src/util.d \
./src/monocypher.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -I"/ectf/mb/drm_audio_fw_bsp/microblaze_0/include" -c -fmessage-length=0 -MT"$@" -save-temps -I"/ectf/mb/drm_audio_fw_bsp/microblaze_0/include" -mlittle-endian -mxl-barrel-shift -mno-xl-soft-div -mcpu=v10.0 -mno-xl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


