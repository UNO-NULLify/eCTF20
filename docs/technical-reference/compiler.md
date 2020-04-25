## Compiler Changes
**Original Flags**
~~~ 
mb-gcc -Wall -O0 -g3 -I"../../drm_audio_fw_bsp/microblaze_0/include" -c -fmessage-length=0 -MT"$@" -I"../../drm_audio_fw_bsp/microblaze_0/include" -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
~~~

``-Wall`` This flag is usefull in development.

``-Wextra`` Will be added to increase code quality.

``-Wconversion -Wsign-conversion`` added to warn about potential casting issues that may cause security vulnerabilities.

``-Os`` Added to optimize for code size.

``-s -fvisability=hidden`` To strip the symbols out of the binary.

``-static`` Tells the compiler to statically link all binaries, third party libraries cant be used to affect the functionality of our code

``-mxl-reorder`` To cause some chaos in reverse engeneering and exploit development by reordering instructions on run.

``-Wstack-protector --param ssp-buffer-size=4`` Adding stack protection to the elf.

``-Wl,-z,noexecstack`` Ensure the Stack is not executable.

``-mxl-barrel-shift -mno-xl-soft-div -mno-xl-soft-mul`` Combined with extra PL reduces code size and optimizes crypto operations.

``-DBLAKE2_NO_UNROLLING`` Reduces Blake2 crypto code size.

``

**New Compiler Options**
~~~
mb-gcc -Wall -Wextra -DBLAKE2_NO_UNROLLING -mxl-barrel-shift -mno-xl-soft-div -mno-xl-soft-mul -Os -fvisibility=hidden -static -Wconversion -Wsign-conversion -fstack-check -mxl-reorder -Wstack-protector --param ssp-buffer-size=4 -ftrapv -Wl,-z,relro,-z,now -Wl,-z,noexecstack -I"../../drm_audio_fw_bsp/microblaze_0/include" -I"../../drm_audio_fw/src/include" -I"/opt/Xilinx/SDK/2017.4/gnu/microblaze/linux_toolchain/lin32_le/microblazeel-xilinx-linux-gnu/sys-root/usr/include" -c -fmessage-length=0 -MT"$@" -mlittle-endian -mcpu=v10.0 -Wl,--relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
~~~

**New Linker Options**
~~~
mb-gcc $(OBJS) $(USER_OBJS) $(LIBS) -L"../../drm_audio_fw_bsp/microblaze_0/lib" -Wl,-T -Wl,../src/lscript.ld -L"../../drm_audio_fw_bsp/microblaze_0/include" -Wall -Wextra -Wconversion -Wsign-conversion -mxl-barrel-shift -mno-xl-soft-div -mno-xl-soft-mul -s -fvisibility=hidden -static -mxl-reorder -fstack-check  -Wstack-protector --param ssp-buffer-size=4 -ftrapv -Wl,-z,noexecstack -mlittle-endian -mcpu=v10.0 -Wl,--relax -Wl,--gc-sections -o "drm_audio_fw.elf"
~~~

