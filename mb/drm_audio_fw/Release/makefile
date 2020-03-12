-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
USER_OBJS :=

LIBS := -Wl,--start-group,-lxil,-lgcc,-lc,--end-group
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
drm_audio_fw.elf.size \


# All Target
all: drm_audio_fw.elf secondary-outputs

# Tool invocations
drm_audio_fw.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc $(OBJS) $(USER_OBJS) $(LIBS) -L"/home/artificial/projects/nullify/eCTF20/mb/drm_audio_fw_bsp/microblaze_0/lib" -Wl,-T -Wl,../src/lscript.ld -L"/home/artificial/projects/nullify/eCTF20/mb/drm_audio_fw_bsp/microblaze_0/include" -Wall -Wextra -Wconversion -Wsign-conversion -mxl-barrel-shift -mno-xl-soft-div -mno-xl-soft-mul -Os -s -fvisibility=hidden -static -mxl-reorder -fstack-check  -Wstack-protector --param ssp-buffer-size=4 -ftrapv -Wl,-z,noexecstack -mlittle-endian -mcpu=v10.0 -Wl,--relax -Wl,--gc-sections -o "drm_audio_fw.elf"
	@echo 'Finished building target: $@'
	@echo ' '

drm_audio_fw.elf.size: drm_audio_fw.elf
	@echo 'Invoking: MicroBlaze Print Size'
	mb-size drm_audio_fw.elf  |tee "drm_audio_fw.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) drm_audio_fw.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
