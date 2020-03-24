# Compiler Fixes

**Original Flags**
~~~ 
mb-gcc -Wall -O0 -g3 -I"../../drm_audio_fw_bsp/microblaze_0/include" -c -fmessage-length=0 -MT"$@" -I"../../drm_audio_fw_bsp/microblaze_0/include" -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
~~~

``-Wall`` This flag is usefull in development.

``-Wextra`` Will be added to increase code quality.

``-Wconversion -Wsign-conversion`` added to warn about potential casting issues that may cause security vulnerabilities.

`` -O0`` Was the original Flag, We will be applying ``-Os`` to optimize for code size.

`` -g3`` Tells the compiler to include debug symbols, this will be replaced with ``-s -fvisability=hidden`` to strip the symbols out of the binary.

``-static`` Tells the compiler to statically link all binaries, third party libraries cant be used to affect the functionality of our code

``mxl-reorder`` To cause some chaos in reverse engeneering and exploit development by reordering instructions on run.

``-Wstack-protector --param ssp-buffer-size=4`` Adding stack protection to the elf.

``-Wl,-z,noexecstack`` Ensure the Stack is not executable.

**New Compiler Options**
~~~
mb-gcc -Wall -Wextra -Os -s -fvisibility=hidden -static -Wconversion -Wsign-conversion -fstack-check -mxl-reorder -Wstack-protector --param ssp-buffer-size=4 -ftrapv -Wl,-z,noexecstack -I"../../drm_audio_fw_bsp/microblaze_0/include" -c -fmessage-length=0 -MT"$@" -I"../../drm_audio_fw_bsp/microblaze_0/include" -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
~~~
# Effects
## Strings
### original
```
c0H 
>`0p
>`0t
,z`0
!0""
United States
Japan
Australia
drew
misha
1234567890
00000000
0987654321
MB> Could not find region ID '%d'
<unknown region>
MB> Could not find region name '%s'
MB> Could not find uid '%d'
<unknown user>
MB> Could not find username '%s'
MB> No user logged in
MB> User '%s' does not have access to this song
MB> User '%s' has access to this song
MB> Region Match. Full Song can be played. Unlocking...
MB> Invalid region
MB> Already logged in. Please log out first.
MB> Logged in for user '%s'
MB> Incorrect pin for user '%s'
MB> User not found
MB> Logging out...
MB> Not logged in
MB> Queried player (%d regions, %d users)
MB> Queried song (%d regions, %d users)
MB> No user is logged in. Cannot share song
MB> User '%s' is not song's owner. Cannot share song
MB> Username not found
MB> Shared song with '%s'
MB> Reading Audio File...
MB> Song length = %dB
MB> Song is locked.  Playing only %ds = %dB
MB> Song is unlocked. Playing full song
MB> Pausing... 
MB> Resuming... 
MB> Stopping playback...
MB> Restarting song... 
MB> Only playing 30 seconds
MB> 
MB> Dumping song (%dB)...
MB> Song dump finished
MB> DMA configuration ERROR
MB> Audio DRM Module has Booted
MB> Done Playing Song
MB> No config found for %d
MB> Initialization failed %d
MB> Device configured as SG mode
0123456789ABCDEF
xintc_intr.c
xintc.c
         (((((                  
AAAAAA
BBBBBB
         (((((                  
AAAAAA
BBBBBB
	$FF
,led
,RED
\1rem
}.Jl
}1uid
8buf
t3(:
8uid
8uid
8uid
8rid
8rid
8rid
x3 4
&led
&led
/proj/sdk/gnu/microblaze/builds/HEAD/nightly/2017_11_15/rdi_scripts/../build/nt/ctng_bld/target_build/src/gcc-custom/libgcc/config/microblaze/mulsi3.S
/proj/sdk/gnu/microblaze/builds/HEAD/nightly/2017_11_15/build/nt/ctng_bld/target_build/microblaze-xilinx-elf/build/build-cc-final/microblaze-xilinx-elf/le/libgcc
GNU AS 2.27.0
/proj/sdk/gnu/microblaze/builds/HEAD/nightly/2017_11_15/rdi_scripts/../build/nt/ctng_bld/target_build/src/gcc-custom/libgcc/config/microblaze/udivsi3.S
/proj/sdk/gnu/microblaze/builds/HEAD/nightly/2017_11_15/build/nt/ctng_bld/target_build/microblaze-xilinx-elf/build/build-cc-final/microblaze-xilinx-elf/le/libgcc
GNU AS 2.27.0
/proj/sdk/gnu/microblaze/builds/HEAD/nightly/2017_11_15/rdi_scripts/../build/nt/ctng_bld/target_build/src/gcc-custom/libgcc/config/microblaze/umodsi3.S
/proj/sdk/gnu/microblaze/builds/HEAD/nightly/2017_11_15/build/nt/ctng_bld/target_build/microblaze-xilinx-elf/build/build-cc-final/microblaze-xilinx-elf/le/libgcc
GNU AS 2.27.0
<int
../src
/home/vagrant/eCTF20/mb/drm_audio_fw_bsp/microblaze_0/include
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/lib/gcc/microblaze-xilinx-elf/6.2.0/include
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/microblaze-xilinx-elf/include
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/microblaze-xilinx-elf/include/machine
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/microblaze-xilinx-elf/include/sys
main.c
machine/_default_types.h
sys/_stdint.h
xil_types.h
ctype.h
sys/lock.h
sys/_types.h
stddef.h
sys/reent.h
constants.h
secrets.h
xil_assert.h
xaxidma_bd.h
stdlib.h
xaxidma_bdring.h
xaxidma.h
xintc_l.h
xintc.h
xil_printf.h
stdint.h
stdint.h
sys/features.h
_newlib_version.h
sys/_intsup.h
xparameters.h
_ansi.h
newlib.h
sys/config.h
machine/ieeefp.h
sys/cdefs.h
stdarg.h
string.h
machine/_types.h
sys/string.h
platform.h
platform_config.h
sleep.h
xil_io.h
mb_interface.h
xil_exception.h
util.h
xaxidma_hw.h
xdebug.h
xil_cache.h
xstatus.h
xenv.h
xenv_standalone.h
machine/stdlib.h
alloca.h
xil_mem.h
stdio.h
sys/types.h
machine/types.h
sys/select.h
sys/_sigset.h
sys/_timeval.h
sys/timespec.h
sys/_timespec.h
sys/stdio.h
../src
/home/vagrant/eCTF20/mb/drm_audio_fw_bsp/microblaze_0/include
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/lib/gcc/microblaze-xilinx-elf/6.2.0/include
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/microblaze-xilinx-elf/include
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/microblaze-xilinx-elf/include/machine
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/microblaze-xilinx-elf/include/sys
platform.c
machine/_default_types.h
sys/_stdint.h
xil_types.h
xil_assert.h
xil_cache.h
mb_interface.h
stddef.h
stdint.h
stdint.h
sys/features.h
_newlib_version.h
sys/_intsup.h
xil_exception.h
xparameters.h
platform_config.h
../src
/home/vagrant/eCTF20/mb/drm_audio_fw_bsp/microblaze_0/include
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/lib/gcc/microblaze-xilinx-elf/6.2.0/include
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/microblaze-xilinx-elf/include
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/microblaze-xilinx-elf/include/machine
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/microblaze-xilinx-elf/include/sys
util.c
machine/_default_types.h
sys/_stdint.h
xil_types.h
ctype.h
sys/lock.h
sys/_types.h
stddef.h
sys/reent.h
constants.h
xil_assert.h
xil_exception.h
xstatus.h
xaxidma_bd.h
stdlib.h
xaxidma_bdring.h
xaxidma.h
xintc_l.h
xintc.h
util.h
xil_printf.h
stdint.h
stdint.h
sys/features.h
_newlib_version.h
sys/_intsup.h
xparameters.h
_ansi.h
newlib.h
sys/config.h
machine/ieeefp.h
sys/cdefs.h
stdarg.h
string.h
machine/_types.h
sys/string.h
xaxidma_hw.h
xil_io.h
mb_interface.h
xdebug.h
xil_cache.h
xenv.h
xenv_standalone.h
machine/stdlib.h
alloca.h
PWM.h
/proj/sdk/gnu/microblaze/builds/HEAD/nightly/2017_11_15/rdi_scripts/../build/nt/ctng_bld/target_build/src/gcc-custom/libgcc/config/microblaze
mulsi3.S
KKKKKLKLLLKKKKKKKLKLK
/proj/sdk/gnu/microblaze/builds/HEAD/nightly/2017_11_15/rdi_scripts/../build/nt/ctng_bld/target_build/src/gcc-custom/libgcc/config/microblaze
udivsi3.S
KKKLKKKMKKMKKKKKKNKKNLKKLKKKKKLKKKLMMKKKK
/proj/sdk/gnu/microblaze/builds/HEAD/nightly/2017_11_15/rdi_scripts/../build/nt/ctng_bld/target_build/src/gcc-custom/libgcc/config/microblaze
umodsi3.S
KKKLKKKKMKMKKKKKKNK
KKKKMLKKLKKKKKLKKKLMMKKKK
_on_exit_args_ptr
mfedr() ({ u32 _rval; __asm__ __volatile__("mfs\t%0,redr\n" : "=d"(_rval)); _rval; })
stderr (_REENT->_stderr)
__strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))
__CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1
XPAR_MICROBLAZE_S13_AXIS_DATA_WIDTH 32
__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
XAXIDMA_IDLE_MASK 0x00000002
alloca
XPAR_PS7_GPIO_0_BASEADDR 0xE000A000
XPAR_MICROBLAZE_DEBUG_LATENCY_COUNTERS 1
XPAR_MICROBLAZE_0_S6_AXIS_PROTOCOL GENERIC
_mbrtowc_state
_MICROBLAZE_INTERFACE_H_ 
__compar_fn_t_defined 
__SOPT 0x0400
XST_BUFFER_TOO_SMALL 12L
__DBL_EPSILON__ ((double)2.2204460492503131e-16L)
P_tmpdir "/tmp"
__GCC_ATOMIC_LLONG_LOCK_FREE 1
__MISC_VISIBLE 1
XAXIDMA_BD_ID_OFFSET 0x34
XPAR_SHARE_AXI_BRAM_CTRL_0_ECC 0U
XPAR_MICROBLAZE_0_NUM_SYNC_FF_DBG_TRACE_CLK 2
__INT_FAST16_MAX__ 0x7fffffff
XPAR_XEMACPS_0_ENET_SLCR_10Mbps_DIV1 50
__LEAST16 "h"
XPAR_INS_LMB_BRAM_IF_CNTLR_0_ECC_STATUS_REGISTERS 0U
mffsr() ({ u32 _rval; __asm__ __volatile__("mfs\t%0,rfsr\n" : "=d"(_rval)); _rval; })
XAXIDMA_CDESC_OFFSET 0x00000008
XIL_EXCEPTION_ID_FPU 6U
WCHAR_MAX (__WCHAR_MAX__)
XPAR_MICROBLAZE_0_S6_AXIS_DATA_WIDTH 32
_WINT_T 
__lock_release(lock) (_CAST_VOID 0)
mfgpr(rn) ({ u32 _rval; __asm__ __volatile__("or\t%0,r0," stringify(rn) "\n" : "=d"(_rval)); _rval; })
XPAR_MICROBLAZE_0_RESET_MSR 0x00000000
XST_FLASH_PART_NOT_SUPPORTED 1131L
XPAR_MICROBLAZE_SCO 0
XAxiDma_BdRing
XST_ATMC_ERROR_COUNT_MAX 1101L
XPAR_XUARTPS_0_BASEADDR 0xE0000000
__sferror(p) ((int)(((p)->_flags & __SERR) != 0))
mttlblo(v) ({ __asm__ __volatile__("mts\trtlblo,%0\n\tnop\n" ::"d"(v)); })
XPAR_MICROBLAZE_0_M_AXI_DC_RUSER_WIDTH 1
XPAR_MICROBLAZE_MMU_DTLB_SIZE 4
XPAR_MICROBLAZE_0_I_LMB_MON 0
_ubuf
XPAR_MICROBLAZE_M_AXI_DC_DATA_WIDTH 32
__PTRDIFF_MAX__ 0x7fffffff
XPAR_MICROBLAZE_M7_AXIS_PROTOCOL GENERIC
XPAR_PS7_ETHERNET_0_ENET_CLK_FREQ_HZ 125000000
XPAR_MICROBLAZE_0_M_AXI_DC_ADDR_WIDTH 32
XPAR_MICROBLAZE_0_EDGE_IS_POSITIVE 1
__GNUCLIKE_BUILTIN_CONSTANT_P 1
RxNumChannels
__uint8_t
_EXFUN(name,proto) name proto
tolower(__c) __extension__ ({ __typeof__ (__c) __x = (__c); isupper (__x) ? (int) __x - 'A' + 'a' : (int) __x;})
__WCHAR_TYPE__ int
XPAR_MICROBLAZE_USE_MSR_INSTR 0
__printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))
__STDC__ 1
Xil_AssertNonvoid(Expression) { if (Expression) { Xil_AssertStatus = XIL_ASSERT_NONE; } else { Xil_Assert(__FILE__, __LINE__); Xil_AssertStatus = XIL_ASSERT_OCCURRED; return 0; } }
XPAR_MICROBLAZE_0_DEBUG_PROFILE_SIZE 0
q_user_lookup(q,i) (q.users + (i * USERNAME_SZ))
UINT_LEAST64_MAX (__UINT_LEAST64_MAX__)
_misc
XPAR_MICROBLAZE_0_DEBUG_TRACE_SIZE 8192
_READ_WRITE_BUFSIZE_TYPE int
XPAR_MICROBLAZE_NUMBER_OF_RD_ADDR_BRK 2
XST_DMA_SG_NO_LIST 523L
__MICROBLAZE__ 1
__DEC128_MIN_EXP__ (-6142)
XAXIDMA_BD_WORDLEN_SHIFT 0
_mbstate
_GLOBAL_ATEXIT (_GLOBAL_REENT->_atexit)
XST_SYSACE_NO_LOCK 1351L
XInterruptHandler
_atexit
XPAR_PS7_SD_0_HIGHADDR 0xE0100FFF
__UINT64_MAX__ 0xffffffffffffffffULL
XAxiDma_HasSg(InstancePtr) ((InstancePtr)->HasSg) ? TRUE : FALSE
XST_FR_TX_BUSY 1401
__UINT64_TYPE__ long long unsigned int
_REENT_MP_FREELIST(ptr) ((ptr)->_mp->_freelist)
__DBL_MAX_10_EXP__ 308
__const const
XPAR_MICROBLAZE_0_S0_AXIS_DATA_WIDTH 32
XPAR_AXI_INTC_0_IVAR_RESET_VALUE 0x00000010
_IOLBF 1
__UINT_FAST64_MAX__ 0xffffffffffffffffULL
XST_IS_STOPPED 24L
XPAR_MICROBLAZE_0_ALLOW_ICACHE_WR 1
Separation
__GNUCLIKE___TYPEOF 1
isascii(__c) ((unsigned)(__c)<=0177)
INT32_C(x) __INT32_C(x)
__LDBL_DIG__ 15
__SIZEOF_LONG__ 4
__INT64 "ll"
__need_wint_t 
XIL_EXCEPTION_ID_INT 16U
_add
XPAR_XUSBPS_0_HIGHADDR 0xE0002FFF
MAX_PIN_SZ 64
MAX_USERS 64
XST_FIFO_NO_ROOM 11L
INT64_C(x) __INT64_C(x)
__WCHAR_T__ 
XPAR_MICROBLAZE_0_M5_AXIS_DATA_WIDTH 32
__tm_mon
__need___va_list
_fntypes
XAXIDMA_RX_TDESC0_OFFSET 0x00000048
XPAR_MB_DMA_AXI_BRAM_CTRL_0_DATA_WIDTH 32U
quad quad_t
XPAR_MICROBLAZE_I_AXI 1
BdaRestart
_inc
_ind
XAXIDMA_BD_USR0_OFFSET 0x20
__P(protos) protos
__INTPTR_TYPE__ int
___int_least32_t_defined 1
XAXIDMA_BD_STS_RXEOF_MASK 0x04000000
XST_IIC_SELFTEST_FAILED 1076
XPAR_INTC_SINGLE_DEVICE_ID XPAR_AXI_INTC_0_DEVICE_ID
XIL_CACHE_H 
XAxiDma_IntrAckIrq(InstancePtr,Mask,Direction) XAxiDma_WriteReg((InstancePtr)->RegBase + (XAXIDMA_RX_OFFSET * Direction), XAXIDMA_SR_OFFSET, (Mask)&XAXIDMA_IRQ_ALL_MASK)
XPAR_CPU_ID 0
XPAR_PS7_SD_0_HAS_WP 0
__FLT_HAS_INFINITY__ 1
XPAR_MICROBLAZE_UNALIGNED_EXCEPTIONS 0
XPAR_MICROBLAZE_M13_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_0_RESET_MSR_ICE 0
_LDBL_EQ_DBL 1
__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)
unsigned +0
IntVectorAddr
XPAR_MICROBLAZE_M_AXI_DP_DATA_WIDTH 32
_REENT_CHECK_TM(var) _REENT_CHECK(var, _localtime_buf, struct __tm *, sizeof *((var)->_localtime_buf), )
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_CE_COUNTER_WIDTH 0U
XAxiDma_GetRxIndexRing(InstancePtr,RingIndex) (&((InstancePtr)->RxBdRing[RingIndex]))
INT_FAST64_MIN (-__INT_FAST64_MAX__ - 1)
XPAR_MICROBLAZE_0_M_AXI_DP_ADDR_WIDTH 32
XPAR_XINTC_USE_DCR_BRIDGE 0
__predict_true(exp) __builtin_expect((exp), 1)
login_status
XST_NO_DATA 13L
XST_NOT_ENABLED 29L
_REENT_CHECK_SIGNAL_BUF(var) _REENT_CHECK(var, _signal_buf, char *, _REENT_SIGNAL_SIZE, )
XPAR_MICROBLAZE_RESET_MSR_IE 0
XAXIDMA_BD_USR2_OFFSET 0x28
XAXIDMA_DESC_LSB_MASK (0xFFFFFFC0U)
XPAR_MICROBLAZE_0_FAULT_TOLERANT 0
_SIZE_T_DEFINED 
counter
__lock_acquire(lock) (_CAST_VOID 0)
REGION_IDS
XST_SPI_COMMAND_ERROR 1162
FALSE 0U
XST_DEVICE_BLOCK_NOT_FOUND 3L
mftlblo() ({ u32 _rval; __asm__ __volatile__("mfs\t%0,rtlblo\n" : "=d"(_rval)); _rval; })
_REENT_CHECK_MISC(var) _REENT_CHECK(var, _misc, struct _misc_reent *, sizeof *((var)->_misc), _REENT_INIT_MISC(var))
_T_PTRDIFF_ 
XPAR_MICROBLAZE_RESET_MSR_EE 0
XAXIDMA_LAST_APPWORD 4
XPAR_MICROBLAZE_G_TEMPLATE_LIST 0
_cvtlen
XPAR_MICROBLAZE_0_S4_AXIS_DATA_WIDTH 32
_STDLIB_H_ 
_FSTDIO 
_REENT_WCTOMB_STATE(ptr) ((ptr)->_misc->_wctomb_state)
_sig_func
__DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))
XPAR_PS7_USB_0_BASEADDR 0xE0002000
XST_IPIF_DEVICE_ENABLE_ERROR 535L
YELLOW
__unbounded 
XPAR_AXIDMA_0_S2MM_BURST_SIZE 16
XST_OPBARB_INVALID_PRIORITY 1176
XPAR_BRAM_0_ECC_ONOFF_RESET_VALUE 1U
microblaze_getfpex_operand_b() ({ extern u32 mb_fpex_op_b; mb_fpex_op_b; })
_FVWRITE_IN_STREAMIO 1
XPAR_BRAM_2_ECC_STATUS_REGISTERS 0U
__INT_LEAST32_TYPE__ long int
MB_CUR_MAX __locale_mb_cur_max()
XPAR_MICROBLAZE_0_DEBUG_LATENCY_COUNTERS 1
__DBL_HAS_INFINITY__ 1
_MB_LEN_MAX 1
XPAR_XAXIDMA_NUM_INSTANCES 1
XPAR_MICROBLAZE_0_IADDR_SIZE 32
XAXIDMA_ERR_SG_DEC_MASK 0x00000400
XIN_INTC_SECONDARY 2
_VA_LIST_DEFINED 
__DEC128_MANT_DIG__ 34
INT_FAST32_MIN (-__INT_FAST32_MAX__ - 1)
__SHRT_MAX__ 0x7fff
XPAR_BRAM_3_WRITE_ACCESS 0U
XPAR_XGPIOPS_0_BASEADDR 0xE000A000
INT_LEAST32_MAX (__INT_LEAST32_MAX__)
XIntc_DisableIntr(BaseAddress,DisableMask) XIntc_Out32((BaseAddress) + XIN_IER_OFFSET, ~(DisableMask))
_lock
_nbuf
XPAR_MICROBLAZE_DP_AXI_MON 0
XPAR_XINTC_NUM_INSTANCES 1
XAXIDMA_SRCADDR_MSB_OFFSET 0x0000001C
__lock_init(lock) (_CAST_VOID 0)
isgraph(__c) (__ctype_lookup(__c)&(_P|_U|_L|_N))
XPAR_MICROBLAZE_0_ICACHE_STREAMS 0
XPAR_MICROBLAZE_M_AXI_D_BUS_EXCEPTION 0
TMP_MAX 26
XAXIDMA_BD_START_CLEAR 8
__fastcall __attribute__((__fastcall__))
_mbstate_t
XPAR_MICROBLAZE_0_PIADDR_SIZE 32
XPAR_MICROBLAZE_PVR 0
_NOINLINE __attribute__ ((__noinline__))
__INT_FAST64_MAX__ 0x7fffffffffffffffLL
DeviceId
HasStsCntrlStrm
XIN_IAR_OFFSET 12
__GCC_ATOMIC_CHAR_LOCK_FREE 1
__UINT_FAST16_TYPE__ unsigned int
XPAR_MICROBLAZE_0_MMU_DTLB_SIZE 4
XPAR_MICROBLAZE_0_INSTR_SIZE 32
XST_IIC_DTR_READBACK_ERROR 1084
XPAR_FIFO_COUNT_AXI_GPIO_0_INTERRUPT_PRESENT 0
XPAR_AXI_DMA_0_M_AXI_MM2S_DATA_WIDTH 32
isupper(__c) ((__ctype_lookup(__c)&(_U|_L))==_U)
__SIZEOF_INT__ 4
XIntc_VectorTableEntry
XAxiDma_BdRingMemCalc(Alignment,NumBd) (int)((sizeof(XAxiDma_Bd) + ((Alignment)-1)) & ~((Alignment)-1)) * (NumBd)
XAxiDma_BdGetTDest(BdPtr) ((XAxiDma_BdRead((BdPtr), XAXIDMA_BD_STS_OFFSET)) & XAXIDMA_BD_TDEST_FIELD_MASK)
XPAR_BRAM_2_ECC_ONOFF_REGISTER 0U
XPAR_XUARTPS_0_DEVICE_ID XPAR_PS7_UART_0_DEVICE_ID
__used __attribute__((__used__))
getchar_unlocked() getc_unlocked(stdin)
XPAR_INTC_0_BASEADDR 0x04B30000U
XAXIDMA_DELAY_MASK 0xFF000000
__SIG_ATOMIC_TYPE__ int
_current_locale
_BSD_SIZE_T_DEFINED_ 
__GNUCLIKE_CTOR_SECTION_HANDLING 1
XPAR_PS7_ETHERNET_0_ENET_SLCR_1000MBPS_DIV0 8
XPAR_MICROBLAZE_0_M_AXI_DC_ARUSER_WIDTH 5
__INT32_MAX__ 0x7fffffffL
XPAR_MICROBLAZE_ICACHE_STREAMS 0
XAXIDMA_CACHE_INVALIDATE(BdPtr) Xil_DCacheInvalidateRange((UINTPTR)(BdPtr), XAXIDMA_BD_HW_NUM_BYTES)
XST_SUCCESS 0L
XST_NO_CALLBACK 18L
__UINT16_C(c) c
XPAR_MICROBLAZE_S2_AXIS_PROTOCOL GENERIC
__PRAGMA_REDEFINE_EXTNAME 1
__INT_LEAST64_TYPE__ long long int
XPAR_PS7_UART_0_UART_CLK_FREQ_HZ 100000000
XPAR_MICROBLAZE_0_M13_AXIS_DATA_WIDTH 32
_DEFUN_VOID(name) name(_NOARGS)
XPAR_MICROBLAZE_M_AXI_IC_ADDR_WIDTH 32
XPAR_MICROBLAZE_0_M11_AXIS_PROTOCOL GENERIC
Xil_Out32LE Xil_Out32
XPAR_MICROBLAZE_0_S8_AXIS_DATA_WIDTH 32
XPAR_MICROBLAZE_0_M9_AXIS_DATA_WIDTH 32
XPAR_MICROBLAZE_0_ASYNC_WAKEUP 3
XAxiDma_BdSetTId(BdPtr,TId) { u32 val; val = (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_MCCTL_OFFSET) & ~XAXIDMA_BD_TID_FIELD_MASK); val |= ((u32)(TId) << XAXIDMA_BD_TID_FIELD_SHIFT); XAxiDma_BdWrite((BdPtr), XAXIDMA_BD_MCCTL_OFFSET, val); }
XPAR_BRAM_3_DEVICE_ID XPAR_SHARE_AXI_BRAM_CTRL_0_DEVICE_ID
Addr_ext
__FILE
XAXIDMA_BD_TDEST_FIELD_MASK 0x0000000F
__sFILE_fake
__requires_unlocked(...) __lock_annotate(locks_excluded(__VA_ARGS__))
shea(lladdr,data) ({ __asm__ __volatile__("shea\t%0,%M1,%L1\n" ::"d"(data), "d"(lladdr)); })
___int_wchar_t_h 
__SYS_LOCK_H__ 
_RAND48_ADD (0x000b)
mb_sleep() ({ __asm__ __volatile__("sleep\t"); })
XAxiDma_BdClear(BdPtr) memset((void *)(((UINTPTR)(BdPtr)) + XAXIDMA_BD_START_CLEAR), 0, XAXIDMA_BD_BYTES_TO_CLEAR)
XPAR_MICROBLAZE_0_MMU_ZONES 16
XAxiDma_BdRingGetCnt(RingPtr) ((RingPtr)->AllCnt)
HwTail
PreHead
XPAR_MICROBLAZE_USE_INTERRUPT 1
XPAR_INS_LMB_BRAM_IF_CNTLR_0_UE_FAILING_REGISTERS 0U
XPAR_MICROBLAZE_0_M13_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_0_ENDIANNESS 1
XPAR_XEMACPS_0_ENET_SLCR_1000Mbps_DIV0 8
Xil_L1DCacheInvalidateRange(Addr,Len) microblaze_invalidate_dcache_range((Addr), (Len))
INT64_MIN (-__INT64_MAX__ - 1)
XAXIDMA_BD_HAS_STSCNTRL_OFFSET 0x38
XAxiDma_BdHwCompleted(BdPtr) (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_STS_OFFSET) & XAXIDMA_BD_STS_COMPLETE_MASK)
XPAR_MICROBLAZE_0_LOCKSTEP_SELECT 0
__BIGGEST_ALIGNMENT__ 4
__va_list__ 
get_drm_uids(d) (d.md.buf + d.md.num_regions)
XPAR_MICROBLAZE_0_M_AXI_I_BUS_EXCEPTION 0
__dead2 __attribute__((__noreturn__))
XPAR_MICROBLAZE_M3_AXIS_DATA_WIDTH 32
XPAR_MICROBLAZE_IADDR_SIZE 32
__UINT8_TYPE__ unsigned char
_N 04
ncputfsl(val,id) asm volatile("ncput\t%0,rfsl" stringify(id)::"d"(val))
XAXIDMA_DELAY_SHIFT 24
RAND_MAX __RAND_MAX
UINT_LEAST32_MAX (__UINT_LEAST32_MAX__)
XPAR_MICROBLAZE_M13_AXIS_DATA_WIDTH 32
XPAR_MB_DMA_AXI_BRAM_CTRL_0_ECC_ONOFF_REGISTER 0U
XST_DMA_SG_COUNT_EXCEEDED 521L
fd_set _types_fd_set
XPAR_XSDPS_NUM_INSTANCES 1
XPAR_MICROBLAZE_S6_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_ICACHE_ALWAYS_USED 0
__UINTMAX_TYPE__ long long unsigned int
XST_PLBARB_FAIL_SELFTEST 1276L
XPAR_MICROBLAZE_M15_AXIS_PROTOCOL GENERIC
__STDC_UTF_32__ 1
XPAR_MICROBLAZE_0_M15_AXIS_PROTOCOL GENERIC
__INT_LEAST16_MAX__ 0x7fff
XPAR_MICROBLAZE_0_ALLOW_DCACHE_WR 1
MicroDmaMode
XIN_ISR_OFFSET 0
XAXIDMA_IRQ_ERROR_MASK 0x00004000
XPAR_MICROBLAZE_0_S12_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_0_M_AXI_IP_ADDR_WIDTH 32
_lbfsize
XAXIDMA_MCHAN_MAX_TRANSFER_LEN 0x00FFFF
getchar() getc(stdin)
_REENT_INIT_PTR_ZEROED(var) { (var)->_stdin = (__FILE *)&__sf_fake_stdin; (var)->_stdout = (__FILE *)&__sf_fake_stdout; (var)->_stderr = (__FILE *)&__sf_fake_stderr; (var)->_current_locale = "C"; }
_REENT_INIT_MISC(var) do { struct _reent *_r = (var); _r->_misc->_strtok_last = _NULL; _r->_misc->_mblen_state.__count = 0; _r->_misc->_mblen_state.__value.__wch = 0; _r->_misc->_wctomb_state.__count = 0; _r->_misc->_wctomb_state.__value.__wch = 0; _r->_misc->_mbtowc_state.__count = 0; _r->_misc->_mbtowc_state.__value.__wch = 0; _r->_misc->_mbrlen_state.__count = 0; _r->_misc->_mbrlen_state.__value.__wch = 0; _r->_misc->_mbrtowc_state.__count = 0; _r->_misc->_mbrtowc_state.__value.__wch = 0; _r->_misc->_mbsrtowcs_state.__count = 0; _r->_misc->_mbsrtowcs_state.__value.__wch = 0; _r->_misc->_wcrtomb_state.__count = 0; _r->_misc->_wcrtomb_state.__value.__wch = 0; _r->_misc->_wcsrtombs_state.__count = 0; _r->_misc->_wcsrtombs_state.__value.__wch = 0; _r->_misc->_l64a_buf[0] = '\0'; _r->_misc->_getdate_err = 0; } while (0)
XST_SPI_SLAVE_MODE 1160
TRUE 1U
XAXIDMA_BD_NDESC_MSB_OFFSET 0x04
_ANSIDECL_H_ 
__UINT16_TYPE__ short unsigned int
_NEWLIB_ALLOCA_H 
XPAR_MICROBLAZE_INSTR_SIZE 32
XPAR_MICROBLAZE_0_M_AXI_DC_EXCLUSIVE_ACCESS 0
XPAR_MICROBLAZE_IP_AXI_MON 0
stdout (_REENT->_stdout)
__EXP
XPAR_INS_LMB_BRAM_IF_CNTLR_0_S_AXI_CTRL_HIGHADDR 0xFFFFFFFFU
XPAR_MICROBLAZE_ENABLE_DISCRETE_PORTS 0
_T_SIZE_ 
XPAR_MICROBLAZE_DCACHE_DATA_WIDTH 0
__ISO_C_VISIBLE 2011
XPAR_MICROBLAZE_ECC_USE_CE_EXCEPTION 0
_SIGSET_T_DECLARED 
XPAR_MICROBLAZE_0_M_AXI_IC_RUSER_WIDTH 1
XAxiDma_BdGetActualLength(BdPtr,LengthMask) (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_STS_OFFSET) & LengthMask)
UINT_FAST8_MAX (__UINT_FAST8_MAX__)
islower(__c) ((__ctype_lookup(__c)&(_U|_L))==_L)
isblank(__c) __extension__ ({ __typeof__ (__c) __x = (__c); (__ctype_lookup(__x)&_B) || (int) (__x) == '\t';})
XST_SPI_NOT_MASTER 1157
_data
XST_UART_START_ERROR 1052L
XIL_ASSERT_NONE 0U
XAxiDma_BdRingIntEnable(RingPtr,Mask) (XAxiDma_WriteReg((RingPtr)->ChanBase, XAXIDMA_CR_OFFSET, XAxiDma_ReadReg((RingPtr)->ChanBase, XAXIDMA_CR_OFFSET) | ((Mask)&XAXIDMA_IRQ_ALL_MASK)))
XPAR_BRAM_2_DATA_WIDTH 32U
XPAR_MICROBLAZE_S2_AXIS_DATA_WIDTH 32
XPAR_MICROBLAZE_0_DCACHE_ALWAYS_USED 0
mb_swaph(v) ({ u32 _rval; __asm__ __volatile__("swaph\t%0,%1\n" : "=d"(_rval) : "d"(v)); _rval; })
__INT8_C(c) c
XPAR_MICROBLAZE_M_AXI_IP_ADDR_WIDTH 32
_MACHTYPES_H_ 
__printf0like(fmtarg,firstvararg) 
XPAR_MICROBLAZE_ICACHE_HIGHADDR 0x3FFFFFFF
XPAR_MICROBLAZE_0_M11_AXIS_DATA_WIDTH 32
XPAR_AXIDMA_0_INCLUDE_S2MM_DRE 0
AXIDMA_CHANNEL_NOT_HALTED 1
__IEEE_LITTLE_ENDIAN 
__FLT_MAX_EXP__ 128
__INT64_MAX__ 0x7fffffffffffffffLL
XPAR_INS_LMB_BRAM_IF_CNTLR_0_ECC_ONOFF_RESET_VALUE 1U
__CC_SUPPORTS___INLINE 1
__ATOMIC_SEQ_CST 5
Length
_GCC_SIZE_T 
XST_PFIFO_LACK_OF_DATA 501L
XPAR_MICROBLAZE_M_AXI_DC_THREAD_ID_WIDTH 1
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_ECC_ONOFF_RESET_VALUE 1U
_L 02
XPAR_MICROBLAZE_OPCODE_0X0_ILLEGAL 0
XAxiDma_BdRingHwIsStarted(RingPtr) ((XAxiDma_ReadReg((RingPtr)->ChanBase, XAXIDMA_SR_OFFSET) & XAXIDMA_HALTED_MASK) ? FALSE : TRUE)
XIL_EXCEPTION_ID_IPLB_EXCEPTION 3U
__CC_SUPPORTS_WARNING 1
clz(v) ({ u32 _rval; __asm__ __volatile__("clz\t%0,%1\n" : "=d"(_rval) : "d"(v)); _rval; })
XPAR_MICROBLAZE_M7_AXIS_DATA_WIDTH 32
__UINT_FAST8_TYPE__ unsigned int
TxNumChannels
XPAR_PS7_UART_0_HIGHADDR 0xE0000FFF
__u_long_defined 
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_HIGHADDR 0x0001FFFFU
Xil_L1DCacheInvalidate() microblaze_invalidate_dcache()
__DBL_DIG__ 15
XPAR_MICROBLAZE_INTERCONNECT 2
__sf
__EXP(x) __ ##x ##__
__DECIMAL_DIG__ 17
XENV_MEM_COPY(DestPtr,SrcPtr,Bytes) memcpy((void *)DestPtr, (const void *)SrcPtr, (size_t)Bytes)
__arg_type_tag(arg_kind,arg_idx,type_tag_idx) 
UINT16_MAX (__UINT16_MAX__)
_base
__long_double_t long double
__FILE_defined 
__has_feature(x) 0
_mbtowc_state
_REENT_EMERGENCY_SIZE 25
XPAR_MICROBLAZE_0_ICACHE_HIGHADDR 0x3FFFFFFF
__GCC_IEC_559_COMPLEX 0
XPAR_MICROBLAZE_0_IC_AXI_MON 0
INT64_MAX (__INT64_MAX__)
XST_IIC_CR_READBACK_ERROR 1083
_REENT_ASCTIME_BUF(ptr) ((ptr)->_asctime_buf)
microblaze_bread_datafsl(val,id) getfsl(val, id)
Xil_L1DCacheEnable() microblaze_enable_dcache()
_REENT_SIGNGAM(ptr) ((ptr)->_gamma_signgam)
XAXIDMA_BD_MCCTL_OFFSET 0x10
_CONST const
XPAR_PS7_ETHERNET_0_ENET_SLCR_10MBPS_DIV1 50
XAXIDMA_BD_VSIZE_FIELD_MASK 0xFFF80000
__aligned(x) __attribute__((__aligned__(x)))
XPAR_MICROBLAZE_0_MMU_ITLB_SIZE 2
ULONG64_LO_MASK ~ULONG64_HI_MASK
__USER_LABEL_PREFIX__ 
XST_OPBARB_NOT_SUSPENDED 1177
XPAR_XEMACPS_NUM_INSTANCES 1
XIntc_GetIntrStatus(BaseAddress) (XIntc_In32((BaseAddress) + XIN_ISR_OFFSET) & XIntc_In32((BaseAddress) + XIN_IER_OFFSET))
__attribute_malloc__ 
XAXIDMA_CACHE_FLUSH(BdPtr) Xil_DCacheFlushRange((UINTPTR)(BdPtr), XAXIDMA_BD_HW_NUM_BYTES)
XST_IIC_ADR_READBACK_ERROR 1086
_SIZE_T_DECLARED 
XPAR_MICROBLAZE_0_NUM_SYNC_FF_CLK 2
EOF (-1)
XAXIDMA_TDESC_MSB_OFFSET 0x00000014
SECRETS_H 
XPAR_MICROBLAZE_OPTIMIZATION 0
_HAVE_STDC 
__gnu_inline __attribute__((__gnu_inline__, __artificial__))
XST_IPIF_IP_STATUS_ERROR 536L
__tm
NUM_REGIONS 3
__SCCSID(s) struct __hack
XPAR_MICROBLAZE_0_ICACHE_DATA_WIDTH 0
XPAR_PS7_M_AXI_GP0_S_AXI_HIGHADDR 0x7FFFFFFF
__DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))
XPAR_MICROBLAZE_S6_AXIS_DATA_WIDTH 32
__DBL_MIN__ ((double)2.2250738585072014e-308L)
__lock_annotate(x) 
__INT_FAST8_MAX__ 0x7fffffff
XST_NAND_PARAM_PAGE_ERROR 1449L
XIN_INT_HARDWARE_ENABLE_MASK 0x2UL
XPAR_SHARE_AXI_BRAM_CTRL_0_ECC_STATUS_REGISTERS 0U
INT_FAST16_MAX (__INT_FAST16_MAX__)
XPAR_PS7_I2C_0_BASEADDR 0xE0004000
XPAR_SHARE_AXI_BRAM_CTRL_0_UE_FAILING_REGISTERS 0U
XPAR_MICROBLAZE_USE_FPU 0
__nonnull(x) __attribute__((__nonnull__(x)))
__tm_yday
__LDBL_MAX__ 1.7976931348623157e+308L
MaxTransferLen
XPAR_MICROBLAZE_RESET_MSR 0x00000000
_REENT_L64A_BUF(ptr) ((ptr)->_misc->_l64a_buf)
XPAR_MICROBLAZE_S14_AXIS_DATA_WIDTH 32
Xil_DCacheFlush() Xil_L2CacheFlush(); Xil_L1DCacheFlush();
_REENT_MP_P5S(ptr) ((ptr)->_mp->_p5s)
XPAR_PS7_ETHERNET_0_ENET_SLCR_1000MBPS_DIV1 1
__LDBL_MIN_EXP__ (-1021)
XPAR_MICROBLAZE_0_RESET_MSR_BIP 0
XPAR_MICROBLAZE_0_M_AXI_IC_DATA_WIDTH 32
__DBL_MIN_10_EXP__ (-307)
XST_IIC_TBA_REG_RESET_ERROR 1082
__int20 +2
_GCC_PTRDIFF_T 
XPAR_MICROBLAZE_0_M2_AXIS_PROTOCOL GENERIC
INT_LEAST64_MAX (__INT_LEAST64_MAX__)
XAxiDma_BdGetARCache(BdPtr) ((XAxiDma_BdRead((BdPtr), XAXIDMA_BD_MCCTL_OFFSET)) & XAXIDMA_BD_ARCACHE_FIELD_MASK)
XAxiDma_In32 Xil_In32
__FLT_MIN_10_EXP__ (-37)
XPAR_MICROBLAZE_0_M10_AXIS_PROTOCOL GENERIC
XST_PFIFO_BAD_REG_VALUE 503L
__uint16_t
INST_SYNC mbar(0)
XPAR_BRAM_0_DATA_WIDTH 32U
__DBL_MANT_DIG__ 53
XPAR_MICROBLAZE_M0_AXIS_DATA_WIDTH 32
__SRD 0x0004
_REENT_WCRTOMB_STATE(ptr) ((ptr)->_misc->_wcrtomb_state)
__FBSDID(s) struct __hack
STDOUT_IS_PS7_UART 
XPAR_INTC_0_IVAR_RESET_VALUE 0x00000010U
XAXIDMA_BD_H_ 
__INT_WCHAR_T_H 
XPAR_MICROBLAZE_USE_EXTENDED_FSL_INSTR 0
INT16_MIN (-__INT16_MAX__ - 1)
XPAR_MICROBLAZE_DC_AXI_MON 0
__DEC32_EPSILON__ 1E-6DF
NUM_PROVISIONED_USERS 3
XIL_EXCEPTION_ID_M_AXI_D_EXCEPTION 4U
_WCHAR_T_DEFINED 
SEEK_END 2
XPAR_MICROBLAZE_NUM_SYNC_FF_CLK_DEBUG 2
_POSIX_SOURCE
XPAR_AXIDMA_0_ENABLE_MULTI_CHANNEL 0
AllCnt
__size_t 
__WINT_MAX__ 0xffffffffU
XST_INVALID_VERSION 4L
XAXIDMA_CDESC_MSB_OFFSET 0x0000000C
XPAR_XSDPS_0_MIO_BANK 0
PREVIEW_TIME_SEC 30
_result_k
_result
XST_NAND_ALIGNMENT_ERROR 1448L
XPAR_MICROBLAZE_0_S12_AXIS_DATA_WIDTH 32
cgetfsl(val,id) asm volatile("cget\t%0,rfsl" stringify(id) : "=d"(val))
XPAR_MICROBLAZE_0_M6_AXIS_PROTOCOL GENERIC
padding
__PLATFORM_H_ 
swea(lladdr,data) ({ __asm__ __volatile__("swea\t%0,%M1,%L1\n" ::"d"(data), "d"(lladdr)); })
_dso_handle
__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1
INT_LEAST16_MIN (-__INT_LEAST16_MAX__ - 1)
XAXIDMA_H_ 
__FLT_EPSILON__ 1.1920928955078125e-7F
__GNUCLIKE___OFFSETOF 1
SHARE
XPAR_MICROBLAZE_D_LMB_MON 0
XST_FIFO_ERROR 7L
PROVISIONED_UIDS
XAXIDMA_BD_BUFA_OFFSET 0x08
__UINT8_C(c) c
XPAR_MICROBLAZE_0_ADDR_TAG_BITS 17
XST_DMA_SG_IS_STARTED 514L
_REENT _impure_ptr
_is_cxa
XPAR_MICROBLAZE_0_G_USE_EXCEPTIONS 0
__tm_isdst
XAXIDMA_BDRING_H_ 
XPAR_GPIO_0_INTERRUPT_PRESENT 0
Xil_AssertStatus
XPAR_MB_DMA_AXI_BRAM_CTRL_0_WRITE_ACCESS 0U
XST_PLB2OPB_FAIL_SELFTEST 1301L
XENV_MEM_FILL(DestPtr,Data,Bytes) memset((void *)DestPtr, (s32)Data, (size_t)Bytes)
__weak_symbol __attribute__((__weak__))
__flexarr [0]
XAxiDma_BdRingAckIrq(RingPtr,Mask) XAxiDma_WriteReg((RingPtr)->ChanBase, XAXIDMA_SR_OFFSET, (Mask)&XAXIDMA_IRQ_ALL_MASK)
__tm_wday
udelay(delay) 
Xil_ICacheInvalidateRange(Addr,Len) Xil_L2CacheInvalidateRange((Addr), (Len)); Xil_L1ICacheInvalidateRange((Addr), (Len));
XPAR_XINTC_HAS_SIE 1
Cyclic
XAxiDma_IntrEnable(InstancePtr,Mask,Direction) XAxiDma_WriteReg((InstancePtr)->RegBase + (XAXIDMA_RX_OFFSET * Direction), XAXIDMA_CR_OFFSET, (XAxiDma_ReadReg((InstancePtr)->RegBase + (XAXIDMA_RX_OFFSET * Direction), XAXIDMA_CR_OFFSET)) | (Mask & XAXIDMA_IRQ_ALL_MASK))
_REENT_INIT_RAND48(var) do { struct _reent *_r = (var); _r->_r48->_seed[0] = _RAND48_SEED_0; _r->_r48->_seed[1] = _RAND48_SEED_1; _r->_r48->_seed[2] = _RAND48_SEED_2; _r->_r48->_mult[0] = _RAND48_MULT_0; _r->_r48->_mult[1] = _RAND48_MULT_1; _r->_r48->_mult[2] = _RAND48_MULT_2; _r->_r48->_add = _RAND48_ADD; _r->_r48->_rand_next = 1; } while (0)
XAXIDMA_BD_VSIZE_FIELD_SHIFT 19
_REENT_MBSRTOWCS_STATE(ptr) ((ptr)->_misc->_mbsrtowcs_state)
XPAR_MICROBLAZE_M_AXI_IC_WUSER_WIDTH 1
_SYS_REENT_H_ 
XPAR_MICROBLAZE_S12_AXIS_DATA_WIDTH 32
_VOLATILE volatile
_ctype_
Xil_L1DCacheFlush() microblaze_invalidate_dcache()
Xil_ICacheInvalidate() Xil_L2CacheInvalidate(); Xil_L1ICacheInvalidate();
__ORDER_LITTLE_ENDIAN__ 1234
_PTRDIFF_T_DECLARED 
XAxiDma_BdGetTUser(BdPtr) ((XAxiDma_BdRead((BdPtr), XAXIDMA_BD_STS_OFFSET)) & XAXIDMA_BD_TUSER_FIELD_MASK)
XPAR_MICROBLAZE_USE_DCACHE 0
Xil_AssertVoidAlways() { Xil_Assert(__FILE__, __LINE__); Xil_AssertStatus = XIL_ASSERT_OCCURRED; return; }
XPAR_BRAM_3_UE_FAILING_REGISTERS 0U
_VOID void
XST_NAND_ADDRESS_ERROR 1447L
_mbsrtowcs_state
XST_SPI_TRANSMIT_UNDERRUN 1153
XIN_CIE_OFFSET 20
_CLOCK_T_ unsigned long
XPAR_MICROBLAZE_USE_HW_MUL 0
_wds
__SCHAR_MAX__ 0x7f
XPAR_BRAM_1_ECC_ONOFF_REGISTER 0U
__FAST8 
XPAR_MICROBLAZE_M_AXI_DC_AWUSER_WIDTH 5
XST_MEMTEST_FAILED 401L
__DBL_MAX_EXP__ 1024
XPAR_XUSBPS_NUM_INSTANCES 1
QUERY_SONG
XPAR_PS7_SD_0_HAS_CD 1
__UINT_LEAST16_MAX__ 0xffff
XPAR_XIICPS_0_DEVICE_ID XPAR_PS7_I2C_0_DEVICE_ID
XPAR_BRAM_1_HIGHADDR 0x0001FFFFU
XIL_EXCEPTION_ID_M_AXI_I_EXCEPTION 3U
FD_SET(n,p) ((p)->fds_bits[(n)/NFDBITS] |= (1L << ((n) % NFDBITS)))
__sf_fake_stdin
XST_PCI_INVALID_ADDRESS 1361L
_INT32_EQ_LONG 
__GNUCLIKE___SECTION 1
XPAR_INS_LMB_BRAM_IF_CNTLR_0_DEVICE_ID 1U
XUINT64_LSW(x) ((x).Lower)
XPAR_MICROBLAZE_0_ICACHE_VICTIMS 0
__SIZEOF_SIZE_T__ 4
__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL
PostCnt
XAXIDMA_DEVICE_TO_DMA 0x01
XENV_TIME_STAMP_DELTA_US(Stamp1Ptr,Stamp2Ptr) (0)
UINTPTR_MAX (__UINTPTR_MAX__)
_REENT_WCSRTOMBS_STATE(ptr) ((ptr)->_misc->_wcsrtombs_state)
_SYS__TIMESPEC_H_ 
cputfsl(val,id) asm volatile("cput\t%0,rfsl" stringify(id)::"d"(val))
XAXIDMA_BD_BUFA_MSB_OFFSET 0x0C
__UINT_LEAST64_MAX__ 0xffffffffffffffffULL
mfear() ({ u32 _rval; __asm__ __volatile__("mfs\t%0,rear\n" : "=d"(_rval)); _rval; })
XENV_USLEEP(delay) 
__format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))
__SL64 0x8000
XPAR_MICROBLAZE_0_NUMBER_OF_RD_ADDR_BRK 2
XPAR_MICROBLAZE_M_AXI_DC_ARUSER_WIDTH 5
XPAR_RGB_PWM_0_PWM_AXI_HIGHADDR 0x04A1FFFF
XAxiDma_BdRingGetError(RingPtr) (XAxiDma_ReadReg((RingPtr)->ChanBase, XAXIDMA_SR_OFFSET) & XAXIDMA_ERR_ALL_MASK)
XPAR_MICROBLAZE_0_DADDR_SIZE 32
timerclear(tvp) ((tvp)->tv_sec = (tvp)->tv_usec = 0)
_write
_DEFAULT_SOURCE
XPAR_MICROBLAZE_0_M_AXI_D_BUS_EXCEPTION 0
XPAR_MICROBLAZE_NUM_SYNC_FF_CLK_IRQ 1
XPAR_MICROBLAZE_0_S9_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_0_INTERRUPT_MON 0
__CC_SUPPORTS_INLINE 1
XAXIDMA_NO_CHANGE 0xFFFFFFFF
XST_NOT_SGDMA 16L
INT16_C(x) __INT16_C(x)
__GNUCLIKE_MATH_BUILTIN_RELOPS 
XAXIDMA_BD_TUSER_FIELD_MASK 0x000F0000
XPAR_INTC_0_NUM_INTR_INPUTS 1U
PTRDIFF_MIN (-PTRDIFF_MAX - 1)
PLAY
strtodf strtof
__need_inttypes
HasS2Mm
__SIZEOF_LONG_LONG__ 8
XPAR_MICROBLAZE_INTERRUPT_IS_EDGE 1
XPAR_XINTC_HAS_IPR 1
BUFSIZ 1024
IsRxChannel
XPAR_MICROBLAZE_DCACHE_ADDR_TAG 17
__no_lock_analysis __lock_annotate(no_thread_safety_analysis)
XPAR_MICROBLAZE_0_USE_EXT_BRK 0
XPAR_INS_LMB_BRAM_IF_CNTLR_0_CE_COUNTER_WIDTH 0U
__NEWLIB_MINOR__ 4
XPAR_MICROBLAZE_0_USE_CONFIG_RESET 0
XST_SPI_NO_SLAVE 1155
XST_NAND_PART_NOT_SUPPORTED 1444L
__rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))
_DEFAULT_SOURCE 1
_WCHAR_T_DEFINED_ 
__SOFF 0x1000
XPAR_MICROBLAZE_0_M_AXI_IC_AWUSER_WIDTH 5
__bounded 
__WINT_TYPE__ unsigned int
XST_OPBARB_NOT_FIXED_PRIORITY 1179
XST_EMAC_MII_READ_ERROR 1003L
__tm_min
states
___int_least8_t_defined 1
XINTC_H 
XPAR_AXI_INTC_0_KIND_OF_INTR 0xFFFFFFFF
XPARAMETERS_H 
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_FAULT_INJECT 0U
_NEWLIB_STDIO_H 
_REENT_CHECK(var,what,type,size,init) do { struct _reent *_r = (var); if (_r->what == NULL) { _r->what = (type)malloc(size); __reent_assert(_r->what); init; } } while (0)
XPAR_MICROBLAZE_0_M4_AXIS_DATA_WIDTH 32
XPAR_MICROBLAZE_USE_DIV 0
_ATEXIT_DYNAMIC_ALLOC 1
UINT_LEAST8_MAX (__UINT_LEAST8_MAX__)
STOPPED
__INT16_MAX__ 0x7fff
__tm_year
XAXIDMA_BD_STS_DEC_ERR_MASK 0x40000000
__FLT_MANT_DIG__ 24
lbur(address) ({ u32 _rval; __asm__ __volatile__("lbur\t%0,%1,r0\n" : "=d"(_rval) : "d"(address)); _rval; })
_blksize
XST_SPI_TRANSFER_DONE 1152
XPAR_BRAM_1_DEVICE_ID XPAR_INS_LMB_BRAM_IF_CNTLR_0_DEVICE_ID
__sentinel __attribute__((__sentinel__))
XST_SEND_ERROR 28L
__va_copy(d,s) __builtin_va_copy(d,s)
XPAR_AXIDMA_0_M_AXI_S2MM_DATA_WIDTH 32
__GNUC_VA_LIST_COMPATIBILITY 1
va_end(v) __builtin_va_end(v)
XIN_SIE_OFFSET 16
Options
isprint(__c) (__ctype_lookup(__c)&(_P|_U|_L|_N|_B))
__asserts_shared(...) __lock_annotate(assert_shared_lock(__VA_ARGS__))
XPAR_MICROBLAZE_0_USE_MSR_INSTR 0
__have_longlong64 1
___int16_t_defined 1
get_drm_rids(d) (d.md.buf)
_mult
_SSIZE_T_DECLARED 
INLINE inline
XAxiDma_BdRingBusy(RingPtr) (XAxiDma_BdRingHwIsStarted(RingPtr) && ((XAxiDma_ReadReg((RingPtr)->ChanBase, XAXIDMA_SR_OFFSET) & XAXIDMA_IDLE_MASK) ? FALSE : TRUE))
putc(x,fp) __sputc_r(_REENT, x, fp)
XPAR_MICROBLAZE_0_DEBUG_INTERFACE 0
XPAR_XEMACPS_0_ENET_SLCR_100Mbps_DIV0 8
../src/main.c
XPAR_MICROBLAZE_M12_AXIS_PROTOCOL GENERIC
XPAR_SHARE_AXI_BRAM_CTRL_0_CE_COUNTER_WIDTH 0U
__DEC32_MIN__ 1E-95DF
__FLT_MIN_EXP__ (-125)
XPAR_BRAM_1_BASEADDR 0x00000000U
_mbrlen_state
__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
_EXFUN_NOTHROW(name,proto) name proto _NOTHROW
__UINT64_C(c) c ## ULL
_howmany(x,y) (((x)+((y)-1))/(y))
__trylocks_exclusive(...) __lock_annotate(exclusive_trylock_function(__VA_ARGS__))
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_UE_FAILING_REGISTERS 0U
__FLT_RADIX__ 2
UINT64_C(x) __UINT64_C(x)
_ANSI_STDARG_H_ 
XPAR_MICROBLAZE_DCACHE_USE_WRITEBACK 0
int +2
XCACHE_DISABLE_CACHE() { XCACHE_DISABLE_DCACHE(); XCACHE_DISABLE_ICACHE(); }
XPAR_MICROBLAZE_0_S10_AXIS_PROTOCOL GENERIC
XIN_IMR_OFFSET 32
__RAND_MAX 0x7fffffff
__LDBL_EPSILON__ 2.2204460492503131e-16L
XPAR_MICROBLAZE_ICACHE_FORCE_TAG_LUTRAM 0
_TIMEVAL_DEFINED 
__LOCK_INIT(class,lock) static int lock = 0;
_INTPTR_EQ_INT 
__sfileno(p) ((p)->_file)
XPAR_MICROBLAZE_0_S3_AXIS_DATA_WIDTH 32
_C 040
__UINTMAX_MAX__ 0xffffffffffffffffULL
RxBdRing
_BSDTYPES_DEFINED 
XPAR_MICROBLAZE_ICACHE_DATA_WIDTH 0
XPAR_XSDPS_0_BUS_WIDTH 0
PLAYING
__DEC128_MAX_EXP__ 6145
XPAR_MICROBLAZE_MMU_PRIVILEGED_INSTR 0
_TIMER_T_ unsigned long
XPAR_SHARE_AXI_BRAM_CTRL_0_S_AXI_HIGHADDR 0x04B01FFFU
XPAR_MICROBLAZE_S12_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_0_IMPRECISE_EXCEPTIONS 0
XPAR_XSDPS_0_BASEADDR 0xE0100000
/home/vagrant/eCTF20/mb/drm_audio_fw/Debug
__SWID 0x2000
__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF
XPAR_MICROBLAZE_USE_EXT_BRK 0
Xil_L2CacheFlushRange(Addr,Len) microblaze_flush_cache_ext_range((Addr), (Len))
_REENT_INIT_PTR(var) { memset((var), 0, sizeof(*(var))); _REENT_INIT_PTR_ZEROED(var); }
XST_NAND_ERROR 1443L
XPAR_PS7_USB_0_DEVICE_ID 0
__NEWLIB_PATCHLEVEL__ 0
XPAR_INTC_0_DEVICE_ID XPAR_AXI_INTC_0_DEVICE_ID
XPAR_RGB_PWM_0_PWM_AXI_BASEADDR 0x04A10000
XPAR_MICROBLAZE_FSL_LINKS 0
XAxiDma_BdRingGetCurrBd(RingPtr) (XAxiDma_Bd *)XAxiDma_ReadReg((RingPtr)->ChanBase, XAXIDMA_CDESC_OFFSET)
XPAR_MICROBLAZE_S13_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_0_M8_AXIS_DATA_WIDTH 32
XAXIDMA_CR_OFFSET 0x00000000
INT_FAST8_MAX (__INT_FAST8_MAX__)
shift
XPAR_MICROBLAZE_M2_AXIS_PROTOCOL GENERIC
FD_CLR(n,p) ((p)->fds_bits[(n)/NFDBITS] &= ~(1L << ((n) % NFDBITS)))
XPAR_MICROBLAZE_0_M2_AXIS_DATA_WIDTH 32
XAXIDMA_IRQ_IOC_MASK 0x00001000
__int_fast8_t_defined 1
XPAR_BRAM_2_CE_COUNTER_WIDTH 0U
__FAST16 
_REENT_MP_RESULT(ptr) ((ptr)->_mp->_result)
XST_NAND_BUSY 1441L
___int64_t_defined 1
XPAR_BRAM_2_HIGHADDR 0xC0007FFFU
__GNUCLIKE_BUILTIN_NEXT_ARG 1
XIN_SIMULATION_MODE 0
_toupper(__c) ((unsigned char)(__c) - 'a' + 'A')
XST_FLASH_ADDRESS_ERROR 1135L
XPAR_BRAM_3_DATA_WIDTH 32U
XPAR_MICROBLAZE_0_AREA_OPTIMIZED 0
owner
InterruptProcessed
__unused __attribute__((__unused__))
q_region_lookup(q,i) (q.regions + (i * REGION_NAME_SZ))
__INT16_TYPE__ short int
XST_OPB2PLB_FAIL_SELFTEST 1326L
XPAR_INTC_SINGLE_BASEADDR 0x04B30000
__int_fast16_t_defined 1
_off_t
FirstBdPhysAddr
__GNUCLIKE_BUILTIN_MEMCPY 1
XPAR_MICROBLAZE_M_AXI_DC_WUSER_WIDTH 1
___int_size_t_h 
XPAR_BRAM_2_BASEADDR 0xC0000000U
XAXIDMA_BD_STS_ALL_ERR_MASK 0x70000000
XPAR_INS_LMB_BRAM_IF_CNTLR_0_ECC 0U
XPAR_MICROBLAZE_0_DEBUG_EXTERNAL_TRACE 0
mttlbhi(v) ({ __asm__ __volatile__("mts\trtlbhi,%0\n\tnop\n" ::"d"(v)); })
XAXIDMA_CR_RESET_MASK 0x00000004
_SYS_TIMESPEC_H_ 
_localtime_buf
__GCC_ATOMIC_LONG_LOCK_FREE 2
XPAR_MICROBLAZE_0_BASE_VECTORS 0x0000000000000000
XST_DMA_SG_NOTHING_TO_COMMIT 519L
__int_fast32_t_defined 1
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_S_AXI_CTRL_HIGHADDR 0xFFFFFFFFU
__count
XPAR_MICROBLAZE_M6_AXIS_PROTOCOL GENERIC
XST_NAND_OPT_NOT_SUPPORTED 1445L
__lock_acquire_recursive(lock) (_CAST_VOID 0)
XPAR_MICROBLAZE_0_S7_AXIS_DATA_WIDTH 32
INTMAX_MIN (-INTMAX_MAX - 1)
XPAR_MICROBLAZE_RESET_MSR_DCE 0
XPAR_MICROBLAZE_0_ICACHE_FORCE_TAG_LUTRAM 0
XPAR_MICROBLAZE_S1_AXIS_PROTOCOL GENERIC
XPAR_XIICPS_NUM_INSTANCES 1
XPAR_MICROBLAZE_0_DEBUG_ENABLED 2
__locks_exclusive(...) __lock_annotate(exclusive_lock_function(__VA_ARGS__))
XPAR_MICROBLAZE_0_DCACHE_DATA_WIDTH 0
XPAR_BRAM_3_ECC_ONOFF_REGISTER 0U
__compiler_membar() __asm __volatile(" " : : : "memory")
mfbtr() ({ u32 _rval; __asm__ __volatile__("mfs\t%0,rbtr\n" : "=d"(_rval)); _rval; })
XST_FAILURE 1L
__SVID_VISIBLE 1
XST_DMA_SG_LIST_EMPTY 513L
XST_FLASH_TOO_MANY_REGIONS 1133L
XPAR_MICROBLAZE_0_G_TEMPLATE_LIST 0
fifo_fill
__strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))
XPAR_MICROBLAZE_0_RESET_MSR_EIP 0
HwCnt
XPAR_MICROBLAZE_NUMBER_OF_PC_BRK 4
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_ECC 0U
XST_UART_BAUD_RANGE 1056L
load_song_md
_SYS_TYPES_H 
XPAR_MICROBLAZE_M2_AXIS_DATA_WIDTH 32
XPAR_MICROBLAZE_M_AXI_IC_USER_SIGNALS 0
XAXIDMA_DMA_TO_DEVICE 0x00
XIL_IO_H 
_GCC_WCHAR_T 
XPAR_MB_DMA_AXI_BRAM_CTRL_0_ECC_ONOFF_RESET_VALUE 0U
INT_FAST64_MAX (__INT_FAST64_MAX__)
XPAR_MICROBLAZE_DCACHE_BASEADDR 0x00000000
XPAR_MICROBLAZE_M_AXI_IC_BUSER_WIDTH 1
Xil_L2CacheInvalidate() microblaze_invalidate_cache_ext()
XPAR_MICROBLAZE_M12_AXIS_DATA_WIDTH 32
Xil_DCacheInvalidate() Xil_L2CacheInvalidate(); Xil_L1DCacheInvalidate();
__INT8 "hh"
XPAR_MICROBLAZE_0_M_AXI_DC_THREAD_ID_WIDTH 1
putfsl(val,id) asm volatile("put\t%0,rfsl" stringify(id)::"d"(val))
XPAR_MICROBLAZE_0_NUM_SYNC_FF_DBG_CLK 1
XIN_INTC_PRIMARY 1
XAxiDma_BdRingCntCalc(Alignment,Bytes) (uint32_t)((Bytes) / ((sizeof(XAxiDma_Bd) + ((Alignment)-1)) & ~((Alignment)-1)))
XPAR_XSPIPS_0_HIGHADDR 0xE0006FFF
XPAR_AXIDMA_0_NUM_MM2S_CHANNELS 1
XPAR_MICROBLAZE_0_D_LMB_MON 0
__need_size_t 
mfesr() ({ u32 _rval; __asm__ __volatile__("mfs\t%0,resr\n" : "=d"(_rval)); _rval; })
va_start(v,l) __builtin_va_start(v,l)
XPAR_MICROBLAZE_S5_AXIS_PROTOCOL GENERIC
__volatile volatile
_ANSI_STDDEF_H 
XPAR_MICROBLAZE_M14_AXIS_PROTOCOL GENERIC
lhur(address) ({ u32 _rval; __asm__ __volatile__("lhur\t%0,%1,r0\n" : "=d"(_rval) : "d"(address)); _rval; })
XPAR_MICROBLAZE_0_M14_AXIS_PROTOCOL GENERIC
FastIntr
XPAR_PS7_SD_0_BASEADDR 0xE0100000
_BSD_WCHAR_T_
XIL_EXCEPTION_ID_DPLB_EXCEPTION 4U
XPAR_AXIDMA_0_MM2S_BURST_SIZE 16
XPAR_MICROBLAZE_0_ENABLE_DISCRETE_PORTS 0
XPAR_MICROBLAZE_M_AXI_DP_ADDR_WIDTH 32
XPAR_MICROBLAZE_NUMBER_OF_WR_ADDR_BRK 2
XPAR_MICROBLAZE_0_S11_AXIS_PROTOCOL GENERIC
_TIME_T_ long
XPAR_AXI_INTC_0_BASEADDR 0x04B30000
XPAR_XEMACPS_0_ENET_SLCR_10Mbps_DIV0 8
XAXIDMA_BUFFLEN_OFFSET 0x00000028
XIntc_MasterEnable(BaseAddress) XIntc_Out32((BaseAddress) + XIN_MER_OFFSET, XIN_INT_MASTER_ENABLE_MASK | XIN_INT_HARDWARE_ENABLE_MASK)
XPAR_BRAM_2_DEVICE_ID XPAR_MB_DMA_AXI_BRAM_CTRL_0_DEVICE_ID
XPAR_MICROBLAZE_0_USE_NON_SECURE 0
XAXIDMA_ERR_SG_INT_MASK 0x00000100
XPAR_MICROBLAZE_0_ICACHE_LINE_LEN 4
__wchb
__need_size_t
_ATEXIT_SIZE 32
lwx(address) ({ u32 _rval; __asm__ __volatile__("lwx\t%0,%1,r0\n" : "=d"(_rval) : "d"(address)); _rval; })
__INTMAX_C(c) c ## LL
__tm_hour
XPAR_MICROBLAZE_0_DCACHE_BASEADDR 0x00000000
XPAR_MICROBLAZE_DEBUG_COUNTER_WIDTH 32
XST_UART_BAUD_ERROR 1055L
__timer_t_defined 
XST_UART_INIT_ERROR 1051L
XPAR_PROC_BUS_1_FREQ_HZ 100000000
INT32_MIN (-__INT32_MAX__ - 1)
XPAR_MICROBLAZE_DEBUG_TRACE_ASYNC_RESET 0
mbar(mask) ({ __asm__ __volatile__("mbar\t" stringify(mask)); })
__has_include(STR) __has_include__(STR)
XPAR_MICROBLAZE_S1_AXIS_DATA_WIDTH 32
toascii(__c) ((__c)&0177)
__DEC128_MIN__ 1E-6143DL
__GNUCLIKE_ASM 3
XST_IIC_BUS_BUSY 1077
XPAR_MICROBLAZE_0_FPU_EXCEPTION 0
XPAR_MICROBLAZE_MMU_ZONES 16
TIMEVAL_TO_TIMESPEC(tv,ts) do { (ts)->tv_sec = (tv)->tv_sec; (ts)->tv_nsec = (tv)->tv_usec * 1000; } while (0)
XPAR_MICROBLAZE_0_DIV_ZERO_EXCEPTION 0
__GCC_IEC_559 0
XPAR_MICROBLAZE_0_M10_AXIS_DATA_WIDTH 32
__FLT_HAS_QUIET_NAN__ 1
XPAR_MICROBLAZE_M_AXI_IC_THREAD_ID_WIDTH 1
XPAR_MICROBLAZE_S9_AXIS_PROTOCOL GENERIC
_GCC_WRAP_STDINT_H 
mfeare() ({ u32 _rval; __asm__ __volatile__("mfse\t%0,rear\n" : "=d"(_rval)); _rval; })
new_md
_niobs
XPAR_PS7_SD_0_HAS_EMIO 0
XPAR_MICROBLAZE_0_INTERCONNECT 2
XPAR_BRAM_1_DATA_WIDTH 32U
XPAR_MICROBLAZE_ADDR_SIZE 32
__STDC_HOSTED__ 1
XPAR_MICROBLAZE_USE_NON_SECURE 0
XAXIDMA_RX_CDESC0_MSB_OFFSET 0x00000044
XPAR_MICROBLAZE_0_S15_AXIS_PROTOCOL GENERIC
XPAR_GPIO_0_DEVICE_ID XPAR_FIFO_COUNT_AXI_GPIO_0_DEVICE_ID
XPAR_BRAM_0_BASEADDR 0x00000000U
XPAR_MB_DMA_AXI_BRAM_CTRL_0_ECC_STATUS_REGISTERS 0U
XPAR_MICROBLAZE_M6_AXIS_DATA_WIDTH 32
rid_to_region_name
_errno
__ORDER_PDP_ENDIAN__ 3412
__UINT32_TYPE__ long unsigned int
__ATOMIC_ACQUIRE 2
XPAR_PS7_SPI_0_BASEADDR 0xE0006000
__tm_mday
mtzpr(v) ({ __asm__ __volatile__("mts\trzpr,%0\n\tnop\n" ::"d"(v)); })
XST_IPIF_REG_WIDTH_ERROR 531L
xdbg_stmnt(x) 
XAxiDma_BdGetStride(BdPtr) ((XAxiDma_BdRead((BdPtr), XAXIDMA_BD_STRIDE_VSIZE_OFFSET)) & XAXIDMA_BD_STRIDE_FIELD_MASK)
__INT_FAST64_TYPE__ long long int
__weak_reference(sym,alias) __asm__(".stabs \"_" #alias "\",11,0,0,0"); __asm__(".stabs \"_" #sym "\",1,0,0,0")
__noinline __attribute__ ((__noinline__))
STDIN_BASEADDRESS 0xE0000000
__requires_shared(...) __lock_annotate(shared_locks_required(__VA_ARGS__))
XST_FLASH_BUSY 1126L
__attribute_pure__ 
_HAVE_LONG_DOUBLE 1
__INT_LEAST64_MAX__ 0x7fffffffffffffffLL
XPAR_MICROBLAZE_0_DEBUG_EVENT_COUNTERS 5
_fnargs
XAxiDma_BdGetSts(BdPtr) (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_STS_OFFSET) & XAXIDMA_BD_STS_ALL_MASK)
alloca(size) __builtin_alloca(size)
__UINT32_C(c) c ## UL
XPAR_MB_DMA_AXI_BRAM_CTRL_0_S_AXI_HIGHADDR 0xC0007FFFU
XPAR_MICROBLAZE_0_M_AXI_IC_THREAD_ID_WIDTH 1
XPAR_MICROBLAZE_FREQ 100000000
XAXIDMA_BD_STRIDE_VSIZE_OFFSET 0x14
timersub(tvp,uvp,vvp) do { (vvp)->tv_sec = (tvp)->tv_sec - (uvp)->tv_sec; (vvp)->tv_usec = (tvp)->tv_usec - (uvp)->tv_usec; if ((vvp)->tv_usec < 0) { (vvp)->tv_sec--; (vvp)->tv_usec += 1000000; } } while (0)
XPAR_MB_DMA_AXI_BRAM_CTRL_0_CE_COUNTER_WIDTH 0U
__section(x) __attribute__((__section__(x)))
Xil_AssertWait
XST_SPI_SLAVE_ONLY 1158
XST_OPBARB_PARK_NOT_ENABLED 1178
XPAR_MICROBLAZE_0_OPCODE_0X0_ILLEGAL 0
XPAR_MICROBLAZE_DCACHE_FORCE_TAG_LUTRAM 0
__ptrvalue 
drm_state
XPAR_XSDPS_0_SDIO_CLK_FREQ_HZ 50000000
__SNBF 0x0002
XPAR_MICROBLAZE_0_DCACHE_LINE_LEN 4
_REENT_INIT_MP(var) do { struct _reent *_r = (var); _r->_mp->_result_k = 0; _r->_mp->_result = _r->_mp->_p5s = _NULL; _r->_mp->_freelist = _NULL; } while (0)
is_provisioned_rid
XST_IIC_TX_FIFO_REG_RESET_ERROR 1080
XPAR_FIFO_COUNT_AXI_GPIO_0_DEVICE_ID 0
mfshr() ({ u32 _rval; __asm__ __volatile__("mfs\t%0,rshr\n" : "=d"(_rval)); _rval; })
XAXIDMA_BD_NUM_WORDS 16U
XAXIDMA_BD_CTRL_ALL_MASK 0x0C000000
__GNUC_VA_LIST 
XIL_PRINTF_H 
_fpos_t
XPAR_MICROBLAZE_USE_PCMP_INSTR 0
XPAR_XSDPS_0_DEVICE_ID XPAR_PS7_SD_0_DEVICE_ID
XIN_CONTROLLER_MAX_INTRS 32
XPAR_BRAM_2_ECC_ONOFF_RESET_VALUE 0U
_NEWLIB_VERSION_H__ 1
XPAR_XIICPS_0_I2C_CLK_FREQ_HZ 108333336
XPAR_MICROBLAZE_0_ASYNC_INTERRUPT 1
UINTPTR
__need_wint_t
XPAR_INTC_SINGLE_HIGHADDR 0x04B3FFFF
XPAR_XEMACPS_0_ENET_CLK_FREQ_HZ 125000000
__ATOMIC_RELAXED 0
XPAR_MICROBLAZE_DEBUG_EVENT_COUNTERS 5
XPAR_MICROBLAZE_S5_AXIS_DATA_WIDTH 32
__LDBL_MIN__ 2.2250738585072014e-308L
XAXIDMA_BD_ARUSER_FIELD_MASK 0xF0000000
INT_LEAST8_MAX (__INT_LEAST8_MAX__)
_signal_buf
XAXIDMA_RX_CDESC0_OFFSET 0x00000040
XPAR_XINTC_HAS_IVR 1
__GNUCLIKE_BUILTIN_STDARG 1
XPAR_INS_LMB_BRAM_IF_CNTLR_0_DATA_WIDTH 32U
_IONBF 2
_cookie
__POSIX_VISIBLE 200809
__NEWLIB__ 2
Xil_L1ICacheDisable() microblaze_disable_icache()
_DEFUN(name,arglist,args) name(args)
__returns_twice __attribute__((__returns_twice__))
nputfsl(val,id) asm volatile("nput\t%0,rfsl" stringify(id)::"d"(val))
play_song
XPAR_MB_DMA_AXI_BRAM_CTRL_0_CE_FAILING_REGISTERS 0U
XST_DMA_SG_BD_LOCKED 518L
commands
XAXIDMA_MICROMODE_MIN_BUF_ALIGN 0xFFF
XPAR_BRAM_1_FAULT_INJECT 0U
_REENT_CHECK_RAND48(var) _REENT_CHECK(var, _r48, struct _rand48 *, sizeof *((var)->_r48), _REENT_INIT_RAND48((var)))
XPAR_PS7_UART_0_DEVICE_ID 0
Xil_L1ICacheEnable() microblaze_enable_icache()
XPAR_MICROBLAZE_0_USE_STACK_PROTECTION 0
HandlerTable
XPAR_MICROBLAZE_0_EDK_SPECIAL microblaze
XPAR_MICROBLAZE_0_MMU_PRIVILEGED_INSTR 0
XPAR_MICROBLAZE_0_RESET_MSR_IE 0
XST_SPI_RECEIVE_NOT_EMPTY 1161
_END_STD_C 
__sfeof(p) ((int)(((p)->_flags & __SEOF) != 0))
_NULL 0
XPAR_MICROBLAZE_0_M1_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_D_LMB 1
XPAR_MICROBLAZE_0_M3_AXIS_DATA_WIDTH 32
__wchar_t__ 
UPPER_32_BITS(n) ((u32)(((n) >> 16) >> 16))
XST_PFIFO_ERROR 504L
InterruptController
__Long long
__lock_close(lock) (_CAST_VOID 0)
XAxiDma_BdRingPrev(RingPtr,BdPtr) (((u32)(BdPtr) <= (RingPtr)->FirstBdAddr) ? (XAxiDma_Bd *)(RingPtr)->LastBdAddr : (XAxiDma_Bd *)((u32)(BdPtr) - (RingPtr)->Separation))
__pt_guarded_by(x) __lock_annotate(pt_guarded_by(x))
_WCHAR_T_DECLARED 
microblaze_nbread_datafsl(val,id) ngetfsl(val, id)
__alloc_size(x) __attribute__((__alloc_size__(x)))
XPAR_MICROBLAZE_0_NUM_SYNC_FF_CLK_DEBUG 2
_REENT_SMALL_CHECK_INIT(ptr) do { if ((ptr) && !(ptr)->__sdidinit) __sinit (ptr); } while (0)
__ATOMIC_RELEASE 3
_UNBUF_STREAM_OPT 1
XPAR_PS7_USB_0_HIGHADDR 0xE0002FFF
SLEEP_H 
XPAR_MICROBLAZE_0_PVR 0
XPAR_PS7_SD_0_DEVICE_ID 0
__trylocks_shared(...) __lock_annotate(shared_trylock_function(__VA_ARGS__))
XAXIDMA_ERR_DECODE_MASK 0x00000040
XPAR_MICROBLAZE_NUM_SYNC_FF_CLK 2
XPAR_MICROBLAZE_AVOID_PRIMITIVES 0
XST_DMA_TRANSFER_ERROR 511L
__INT_FAST16_TYPE__ int
INT16_MAX (__INT16_MAX__)
XPAR_MICROBLAZE_M_AXI_DP_EXCLUSIVE_ACCESS 0
Xil_Htons Xil_EndianSwap16
microblaze_nbwrite_datafsl(val,id) nputfsl(val, id)
QUERY_PLAYER
_mblen_state
XPAR_MICROBLAZE_ASYNC_INTERRUPT 1
ngetfsl(val,id) asm volatile("nget\t%0,rfsl" stringify(id) : "=d"(val))
__tm_sec
XPAR_XGPIOPS_0_HIGHADDR 0xE000AFFF
__FAST32 
XIN_ILR_OFFSET 36
XPAR_MICROBLAZE_0_S11_AXIS_DATA_WIDTH 32
XPAR_MICROBLAZE_0_ILL_OPCODE_EXCEPTION 0
REGION_NAMES
_on_exit_args
XPAR_MICROBLAZE_0_DCACHE_FORCE_TAG_LUTRAM 0
XST_FLASH_NOT_SUPPORTED 1132L
__SNLK 0x0001
__SSTR 0x0200
XSTATUS_H 
IsReady
_cvtbuf
GREEN
XPAR_MICROBLAZE_S9_AXIS_DATA_WIDTH 32
_REENT_INIT_ATEXIT _NULL, _ATEXIT_INIT,
__cleanup
XPAR_MICROBLAZE_0_M5_AXIS_PROTOCOL GENERIC
sAxiDma
__INT_MAX__ 0x7fffffff
__GXX_ABI_VERSION 1010
XPAR_AXIDMA_0_INCLUDE_S2MM 0
__FLT_MAX__ 3.4028234663852886e+38F
XPAR_MICROBLAZE_0_S0_AXIS_PROTOCOL GENERIC
__INT_LEAST8_TYPE__ signed char
Xil_ICacheEnable() Xil_L1ICacheEnable()
new_md_len
XPAR_BRAM_2_UE_FAILING_REGISTERS 0U
XAXIDMA_ERR_INTERNAL_MASK 0x00000010
XPAR_AXIDMA_0_INCLUDE_SG 0
XPAR_INTC_0_HAS_FAST 0U
Xil_DCacheFlushRange(Addr,Len) Xil_L2CacheFlushRange((Addr), (Len)); Xil_L1DCacheFlushRange((Addr), (Len));
UINT64_MAX (__UINT64_MAX__)
getfsl(val,id) asm volatile("get\t%0,rfsl" stringify(id) : "=d"(val))
XPAR_MICROBLAZE_M_AXI_DC_ADDR_WIDTH 32
_wcrtomb_state
__SIZEOF_WCHAR_T__ 4
Xil_L1ICacheInvalidate() microblaze_invalidate_icache()
XPAR_MICROBLAZE_0_S13_AXIS_DATA_WIDTH 32
XIN_SVC_ALL_ISRS_OPTION 2UL
__FLT_EVAL_METHOD__ 0
XIL_ASSERT_H 
XPAR_SHARE_AXI_BRAM_CTRL_0_ECC_ONOFF_RESET_VALUE 0U
_CTYPE_H_ 
__WINT_MIN__ 0U
XPAR_AXI_DMA_0_INCLUDE_S2MM 0
AUDIO_SAMPLING_RATE 48000
__INT8_MAX__ 0x7f
XAxiDma_BdSetVSize(BdPtr,VSize) { u32 val; val = (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_STRIDE_VSIZE_OFFSET) & ~XAXIDMA_BD_VSIZE_FIELD_MASK); val |= ((u32)(VSize) << XAXIDMA_BD_VSIZE_FIELD_SHIFT); XAxiDma_BdWrite((BdPtr), XAXIDMA_BD_STRIDE_VSIZE_OFFSET, val); }
XPAR_MICROBLAZE_USE_REORDER_INSTR 1
XPAR_MICROBLAZE_S11_AXIS_DATA_WIDTH 32
LastBdAddr
__INT_LEAST32_MAX__ 0x7fffffffL
cmd_channel
XPAR_MICROBLAZE_0_M_AXI_DC_AWUSER_WIDTH 5
XPAR_XEMACPS_0_DEVICE_ID XPAR_PS7_ETHERNET_0_DEVICE_ID
__GNUCLIKE_BUILTIN_VARARGS 1
UINT32_C(x) __UINT32_C(x)
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_ECC_STATUS_REGISTERS 0U
__ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname
XPAR_MICROBLAZE_M_AXI_IC_AWUSER_WIDTH 5
XPAR_MICROBLAZE_0_INTERRUPT_IS_EDGE 1
_SYS__INTSUP_H 
___int_least16_t_defined 1
L_tmpnam FILENAME_MAX
XPAR_BRAM_3_HIGHADDR 0x04B01FFFU
XPAR_SHARE_AXI_BRAM_CTRL_0_ECC_ONOFF_REGISTER 0U
owner_id
_REENT_RAND48_SEED(ptr) ((ptr)->_r48->_seed)
XIntc_MasterDisable(BaseAddress) XIntc_Out32((BaseAddress) + XIN_MER_OFFSET, 0)
XPAR_MICROBLAZE_M_AXI_DP_THREAD_ID_WIDTH 1
change_state(state,color) c->drm_state = state; setLED(led, color);
_SYS_SIZE_T_H 
__VALIST __gnuc_va_list
XPAR_MICROBLAZE_0_TRACE 0
XPAR_MICROBLAZE_0_M9_AXIS_PROTOCOL GENERIC
__UINT_FAST16_MAX__ 0xffffffffU
__UINT_FAST64_TYPE__ long long unsigned int
INT_FAST16_MIN (-__INT_FAST16_MAX__ - 1)
RESTART
XPAR_BRAM_0_ECC_ONOFF_REGISTER 0U
rids
XPAR_MICROBLAZE_0_S4_AXIS_PROTOCOL GENERIC
XST_FLASH_ERASE_SUSPENDED 1129L
XPAR_XSDPS_0_HAS_CD 1
__locks_shared(...) __lock_annotate(shared_lock_function(__VA_ARGS__))
XAXIDMA_BD_HW_NUM_BYTES 52
XPAR_AXIDMA_0_BASEADDR 0x04B10000
XAXIDMA_BD_STS_ALL_MASK 0xFC000000
XPAR_MICROBLAZE_0_M_AXI_DC_USER_VALUE 31
XAXIDMA_ERR_SLAVE_MASK 0x00000020
__SIZE_MAX__ 0xffffffffU
XST_RESET_ERROR 8L
_SYS_TYPES_FD_SET 
UTIL_H 
_RAND48_MULT_0 (0xe66d)
XAxiDma_BdSetTUser(BdPtr,TUser) { u32 val; val = (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_MCCTL_OFFSET) & ~XAXIDMA_BD_TUSER_FIELD_MASK); val |= ((u32)(TUser) << XAXIDMA_BD_TUSER_FIELD_SHIFT); XAxiDma_BdWrite((BdPtr), XAXIDMA_BD_MCCTL_OFFSET, val); }
AXIDMA_CHANNEL_HALTED 2
XST_TMRCTR_TIMER_FAILED 1226
_REENT_EMERGENCY(ptr) ((ptr)->_emergency)
XIL_EXCEPTION_ID_DIV_BY_ZERO 5U
__FLT_MAX_10_EXP__ 38
XAXIDMA_BD_NDESC_OFFSET 0x00
XPAR_MICROBLAZE_0_LOCKSTEP_SLAVE 0
__ULong
XST_IPIF_IP_ACK_ERROR 537L
XPAR_MICROBLAZE_0_S15_AXIS_DATA_WIDTH 32
XAxiDma_BdRingGetFreeCnt(RingPtr) ((RingPtr)->FreeCnt)
__UINT_FAST8_MAX__ 0xffffffffU
fsl_isinvalid(result) asm volatile("addic\t%0,r0,0" : "=d"(result))
_Kmax (sizeof (size_t) << 3)
XPAR_MICROBLAZE_0_FSL_LINKS 0
UINT16_C(x) __UINT16_C(x)
XST_DEVICE_BUSY 21L
XPAR_PS7_GPIO_0_DEVICE_ID 0
UINT_FAST16_MAX (__UINT_FAST16_MAX__)
XAxiDma_IntrGetIrq(InstancePtr,Direction) (XAxiDma_ReadReg((InstancePtr)->RegBase + (XAXIDMA_RX_OFFSET * Direction), XAXIDMA_SR_OFFSET) & XAXIDMA_IRQ_ALL_MASK)
XPAR_AXIDMA_0_INCLUDE_MM2S_DRE 0
__need_NULL
offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)
XPAR_AXI_DMA_0_INCLUDE_MM2S_DRE 0
__datatype_type_tag(kind,type) 
XPAR_MICROBLAZE_0_USE_FPU 0
XPAR_BRAM_1_CE_FAILING_REGISTERS 0U
__always_inline __attribute__((__always_inline__))
__containerof(x,s,m) ({ const volatile __typeof(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})
Xil_Out16LE Xil_Out16
XCACHE_ENABLE_DCACHE() 
XPAR_MB_DMA_AXI_BRAM_CTRL_0_UE_FAILING_REGISTERS 0U
__packed __attribute__((__packed__))
__DEC32_MIN_EXP__ (-94)
XST_FLASH_CFI_QUERY_ERROR 1138L
XPAR_PWM_NUM_INSTANCES 1
XPAR_MICROBLAZE_0_S8_AXIS_PROTOCOL GENERIC
XIL_EXCEPTION_ID_FSL 0U
XPAR_MICROBLAZE_I_LMB 1
_B 0200
_NEWLIB_VERSION "2.4.0"
XIL_EXCEPTION_ID_FIRST 0U
__offsetof(type,field) offsetof(type, field)
_strtok_last
XPAR_MICROBLAZE_0_RESET_MSR_EE 0
XPAR_MICROBLAZE_0_USE_BRANCH_TARGET_CACHE 0
XPAR_AXI_DMA_0_ENABLE_MULTI_CHANNEL 0
XPAR_MICROBLAZE_0_USE_ICACHE 0
XPAR_BRAM_2_FAULT_INJECT 0U
XST_USB_NO_BUF 1414
XPAR_MICROBLAZE_LOCKSTEP_SLAVE 0
_SYS__TYPES_H 
XPAR_AXI_INTC_0_DEVICE_ID 0
XST_INVALID_PARAM 15L
_RAND48_SEED_2 (0x1234)
__LONG_MAX__ 0x7fffffffL
XST_NOT_INTERRUPT 20L
_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1
__RCSID(s) struct __hack
__INT32_C(c) c ## L
_AND ,
__END_DECLS 
FreeHead
XAxiDma_BdGetVSize(BdPtr) ((XAxiDma_BdRead((BdPtr), XAXIDMA_BD_STRIDE_VSIZE_OFFSET)) & XAXIDMA_BD_VSIZE_FIELD_MASK)
sizetype
___int_least64_t_defined 1
__DEC64_EPSILON__ 1E-15DD
_seed
set_stopped() change_state(STOPPED, RED)
_seek
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_WRITE_ACCESS 2U
XPAR_AXI_DMA_0_MICRO_DMA 0
__DEC32_MAX_EXP__ 97
__SLBF 0x0001
XPAR_MB_DMA_AXI_BRAM_CTRL_0_S_AXI_BASEADDR 0xC0000000U
XPAR_MICROBLAZE_0_S14_AXIS_PROTOCOL GENERIC
XIL_COMPONENT_IS_STARTED 0x22222222U
XST_INTC_FAIL_SELFTEST 1201
XIL_EXCEPTION_ID_LAST XIL_EXCEPTION_ID_MMU
XAxiDma_BdSetId(BdPtr,Id) (XAxiDma_BdWrite((BdPtr), XAXIDMA_BD_ID_OFFSET, (UINTPTR)(Id)))
XPAR_AXI_INTC_0_TYPE 0U
XST_VDMA_MISMATCH_ERROR 1430
_STDIO_H_ 
XPAR_BRAM_0_HIGHADDR 0x0001FFFFU
XAXIDMA_ERR_SG_SLV_MASK 0x00000200
XIL_TYPES_H 
XAxiDma_BdRingIntGetEnabled(RingPtr) (XAxiDma_ReadReg((RingPtr)->ChanBase, XAXIDMA_CR_OFFSET) & XAXIDMA_IRQ_ALL_MASK)
fast_putc(x,p) (--(p)->_w < 0 ? __swbuf_r(_REENT, (int)(x), p) == EOF : (*(p)->_p = (x), (p)->_p++, 0))
XST_IIC_TBA_READBACK_ERROR 1087
sbea(lladdr,data) ({ __asm__ __volatile__("sbea\t%0,%M1,%L1\n" ::"d"(data), "d"(lladdr)); })
XIntc_Out32 Xil_Out32
XST_DMA_SG_BD_NOT_COMMITTED 524L
XIN_IVR_OFFSET 24
__lock_release_recursive(lock) (_CAST_VOID 0)
XPAR_BRAM_3_CE_COUNTER_WIDTH 0U
__sgetc_raw_r(__ptr,__f) (--(__f)->_r < 0 ? __srget_r(__ptr, __f) : (int)(*(__f)->_p++))
__size_t__ 
__SYS_CONFIG_H__ 
XPAR_INT_AXI_GPIO_0_GPIO_IO_O_MASK 0X000001U
__predict_false(exp) __builtin_expect((exp), 0)
_REENT_SIGNAL_BUF(ptr) ((ptr)->_signal_buf)
_PTR void *
isdigit(__c) (__ctype_lookup(__c)&_N)
CHUNK_SZ 16000
__CHAR_BIT__ 8
__INTMAX_TYPE__ long long int
XPAR_MICROBLAZE_USE_EXT_NM_BRK 0
__ctype_lookup(__c) ((__ctype_ptr__+sizeof(""[__c]))[(int)(__c)])
_POINTER_INT long
_ATEXIT_INIT {_NULL, 0, {_NULL}, _NULL}
_REENT_RAND48_ADD(ptr) ((ptr)->_r48->_add)
XPAR_MICROBLAZE_M11_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_COMPONENT_NAME system_microblaze_0_0
XPAR_PS7_ETHERNET_0_BASEADDR 0xE000B000
XPAR_MICROBLAZE_D_AXI 1
__warn_references(sym,msg) __asm__(".stabs \"" msg "\",30,0,0,0"); __asm__(".stabs \"_" #sym "\",1,0,0,0")
__has_builtin(x) 0
XPAR_MICROBLAZE_I_LMB_MON 0
_REENT_CHECK_ASCTIME_BUF(var) _REENT_CHECK(var, _asctime_buf, char *, _REENT_ASCTIME_SIZE, memset((var)->_asctime_buf, 0, _REENT_ASCTIME_SIZE))
XPAR_MICROBLAZE_PVR_USER2 0x00000000
_BSD_SIZE_T_ 
_freelist
XPAR_MICROBLAZE_EDGE_IS_POSITIVE 1
XPAR_MICROBLAZE_0_S2_AXIS_DATA_WIDTH 32
__has_include_next(STR) __has_include_next__(STR)
_STRING_H_ 
XPAR_MICROBLAZE_NUM_SYNC_FF_DBG_TRACE_CLK 2
__INTPTR_MAX__ 0x7fffffff
XPAR_BRAM_1_ECC_STATUS_REGISTERS 0U
__caddr_t_defined 
RunState
XPAR_AXI_INTC_0_NUM_INTR_INPUTS 1
XST_EMAC_PARSE_ERROR 1006L
FD_ISSET(n,p) ((p)->fds_bits[(n)/NFDBITS] & (1L << ((n) % NFDBITS)))
__GCC_ATOMIC_POINTER_LOCK_FREE 2
Xil_L2CacheFlush() microblaze_flush_cache_ext()
mftlbx() ({ u32 _rval; __asm__ __volatile__("mfs\t%0,rtlbx\n" : "=d"(_rval)); _rval; })
__DBL_MAX__ ((double)1.7976931348623157e+308L)
XAXIDMA_TX_OFFSET 0x00000000
putchar(x) putc(x, stdout)
_RAND48_MULT_1 (0xdeec)
_offset
XPAR_BRAM_0_ECC 0U
timercmp(tvp,uvp,cmp) (((tvp)->tv_sec == (uvp)->tv_sec) ? ((tvp)->tv_usec cmp (uvp)->tv_usec) : ((tvp)->tv_sec cmp (uvp)->tv_sec))
query_song
XST_IPIF_IP_ENABLE_ERROR 538L
XPAR_MICROBLAZE_M_AXI_DC_USER_SIGNALS 0
XPAR_MICROBLAZE_0_M_AXI_DC_DATA_WIDTH 32
USERNAMES
XPAR_MICROBLAZE_0_M_AXI_IC_USER_VALUE 31
XPAR_MICROBLAZE_0_M7_AXIS_DATA_WIDTH 32
__need___va_list 
__DEC64_MAX_EXP__ 385
NUM_PROVISIONED_REGIONS 2
__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2
XPAR_PS7_I2C_0_HIGHADDR 0xE0004FFF
XPAR_PROC_BUS_0_FREQ_HZ 100000000
__LDBL_HAS_DENORM__ 1
__sbuf
XPAR_MICROBLAZE_0_M1_AXIS_DATA_WIDTH 32
drm_md
XAXIDMA_ERR_ALL_MASK 0x00000770
short +1
mtpid(v) ({ __asm__ __volatile__("mts\trpid,%0\n\tnop\n" ::"d"(v)); })
WINT_MIN (__WINT_MIN__)
_l64a_buf
XPAR_MICROBLAZE_M1_AXIS_PROTOCOL GENERIC
USERNAME_SZ 64
XPAR_MICROBLAZE_DIV_ZERO_EXCEPTION 0
XAXIDMA_BD_STRIDE_FIELD_SHIFT 0
RegBase
_RAND48_MULT_2 (0x0005)
ncgetfsl(val,id) asm volatile("ncget\t%0,rfsl" stringify(id) : "=d"(val))
_CLOCKID_T_ unsigned long
__CC_SUPPORTS_VARADIC_XXX 1
__XUINT64__ 
__GCC_ATOMIC_INT_LOCK_FREE 2
XAxiDma_BdGetCtrl(BdPtr) (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_CTRL_LEN_OFFSET) & XAXIDMA_BD_CTRL_ALL_MASK)
XST_HWICAP_WRITE_DONE 1421
__lockable __lock_annotate(lockable)
timeradd(tvp,uvp,vvp) do { (vvp)->tv_sec = (tvp)->tv_sec + (uvp)->tv_sec; (vvp)->tv_usec = (tvp)->tv_usec + (uvp)->tv_usec; if ((vvp)->tv_usec >= 1000000) { (vvp)->tv_sec++; (vvp)->tv_usec -= 1000000; } } while (0)
XAXIDMA_BD_HAS_DRE_SHIFT 8
__has_extension __has_feature
__REGISTER_PREFIX__ 
mb_suspend() ({ __asm__ __volatile__("suspend\t"); })
XAxiDma_BdWrite(BaseAddress,Offset,Data) (*(u32 *)((UINTPTR)(void *)(BaseAddress) + (u32)(Offset))) = (u32)(Data)
__unlocks(...) __lock_annotate(unlock_function(__VA_ARGS__))
_REENT_MP_RESULT_K(ptr) ((ptr)->_mp->_result_k)
XPAR_MICROBLAZE_M_AXI_IC_USER_VALUE 31
XIN_INTC_NOCASCADE 0
HwHead
Xil_AssertNonvoidAlways() { Xil_Assert(__FILE__, __LINE__); Xil_AssertStatus = XIL_ASSERT_OCCURRED; return 0; }
XST_SPI_TOO_MANY_SLAVES 1156
XPAR_BRAM_2_WRITE_ACCESS 0U
XPAR_BRAM_1_ECC 0U
Xil_Htonl Xil_EndianSwap32
_asctime_buf
XPAR_BRAM_1_CE_COUNTER_WIDTH 0U
XAxiDma_BdGetTId(BdPtr) ((XAxiDma_BdRead((BdPtr), XAXIDMA_BD_STS_OFFSET)) & XAXIDMA_BD_TID_FIELD_MASK)
XAXIDMA_COALESCE_MASK 0x00FF0000
XAXIDMA_MAX_TRANSFER_LEN 0x7FFFFF
__wch
XST_NOT_POLLED 10L
SEEK_CUR 1
XST_PFIFO_NO_ROOM 502L
XPAR_MICROBLAZE_0_ICACHE_ALWAYS_USED 0
_wcsrtombs_state
mfslr() ({ u32 _rval; __asm__ __volatile__("mfs\t%0,rslr\n" : "=d"(_rval)); _rval; })
XST_USB_BUF_TOO_BIG 1413
XPAR_AXIDMA_0_M_AXI_MM2S_DATA_WIDTH 32
__INT_FAST8_TYPE__ int
XPAR_MICROBLAZE_M5_AXIS_PROTOCOL GENERIC
XPAR_XIICPS_0_BASEADDR 0xE0004000
UINTMAX_C(x) __UINTMAX_C(x)
XPAR_MICROBLAZE_0_USE_DIV 0
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_BASEADDR 0x00000000U
AddrWidth
__ptr_t void *
__strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))
XAXIDMA_BD_MINIMUM_ALIGNMENT 0x40
XPAR_MICROBLAZE_S0_AXIS_PROTOCOL GENERIC
XPAR_AXI_DMA_0_HIGHADDR 0x04B1FFFF
unsigned
XPAR_SHARE_AXI_BRAM_CTRL_0_CE_FAILING_REGISTERS 0U
XPAR_MICROBLAZE_0_M_AXI_IC_USER_SIGNALS 0
_LOCK_RECURSIVE_T
XPAR_MICROBLAZE_M_AXI_IC_RUSER_WIDTH 1
__LARGEFILE_VISIBLE 0
__sgetc_r(__ptr,__p) __sgetc_raw_r(__ptr, __p)
__UINTMAX_C(c) c ## ULL
__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD
__need_ptrdiff_t
XPAR_MICROBLAZE_0_DATA_SIZE 32
XPAR_PS7_ETHERNET_0_ENET_SLCR_100MBPS_DIV1 5
__requires_exclusive(...) __lock_annotate(exclusive_locks_required(__VA_ARGS__))
XPAR_MICROBLAZE_M1_AXIS_DATA_WIDTH 32
internal_state
XAXIDMA_IRQ_DELAY_MASK 0x00002000
_PARAMS(paramlist) paramlist
XAXIDMA_BD_CTRL_TXEOF_MASK 0x04000000
UINT8_MAX (__UINT8_MAX__)
XPAR_MICROBLAZE_0_M_AXI_DP_DATA_WIDTH 32
XPAR_XUSBPS_0_DEVICE_ID XPAR_PS7_USB_0_DEVICE_ID
XAxiDma_BdRingNext(RingPtr,BdPtr) (((UINTPTR)(BdPtr) >= (RingPtr)->LastBdAddr) ? (UINTPTR)(RingPtr)->FirstBdAddr : (UINTPTR)((UINTPTR)(BdPtr) + (RingPtr)->Separation))
XPAR_MICROBLAZE_M11_AXIS_DATA_WIDTH 32
XPAR_BRAM_2_ECC 0U
XIntc_EnableIntr(BaseAddress,EnableMask) XIntc_Out32((BaseAddress) + XIN_IER_OFFSET, (EnableMask))
__DBL_HAS_DENORM__ 1
__ATFILE_VISIBLE 1
_GLOBAL_REENT _global_impure_ptr
ULONG64_HI_MASK 0xFFFFFFFF00000000U
XPAR_AXI_DMA_0_BASEADDR 0x04B10000
_wctomb_state
XAXIDMA_BD_ARCACHE_FIELD_SHIFT 24
INTMAX_C(x) __INTMAX_C(x)
IntcType
__PTRDIFF_TYPE__ int
XST_IPIF_RESET_REGISTER_ERROR 532L
XPAR_MICROBLAZE_MMU_TLB_ACCESS 3
__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1
XPAR_MICROBLAZE_0_NUMBER_OF_WR_ADDR_BRK 2
XPAR_MICROBLAZE_ID 0
XPAR_PS7_ETHERNET_0_IS_CACHE_COHERENT 0
XPAR_XGPIO_NUM_INSTANCES 1
__GNUC_STDC_INLINE__ 1
XPAR_MICROBLAZE_M9_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_DCACHE_HIGHADDR 0x3FFFFFFF
logout
uid_to_username
__guarded_by(x) __lock_annotate(guarded_by(x))
XST_DEVICE_IS_STARTED 5L
XST_DMA_SG_LIST_EXISTS 522L
XPAR_MICROBLAZE_S4_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_0_D_LMB 1
__EXPORT 
XPAR_GPIO_0_HIGHADDR 0x04B2FFFF
XST_NAND_READY 1442L
XPAR_MICROBLAZE_0_DCACHE_VICTIMS 0
_SYS__TIMEVAL_H_ 
GNU C11 6.2.0 -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -g3 -O0 -fmessage-length=0 -ffunction-sections -fdata-sections
XPAR_GPIO_0_IS_DUAL 0
XST_PFIFO_DEADLOCK 505L
IsStarted
__XSI_VISIBLE 0
XPAR_MICROBLAZE_RESET_MSR_EIP 0
LOGOUT
_iobs
RingIndex
_emergency
__PTRDIFF_T 
__VERSION__ "6.2.0"
FD_ZERO(p) (__extension__ (void)({ size_t __i; char *__tmp = (char *)p; for (__i = 0; __i < sizeof (*(p)); ++__i) *__tmp++ = 0; }))
XAXIDMA_CR_KEYHOLE_MASK 0x00000008
EXIT_SUCCESS 0
XIL_EXCEPTION_ID_ILLEGAL_OPCODE 2U
XST_WDTTB_TIMER_FAILED 1251L
XPAR_AXI_DMA_0_NUM_S2MM_CHANNELS 1
XST_IPIF_DEVICE_PENDING_ERROR 539L
XAXIDMA_BD_BYTES_TO_CLEAR 48
XST_DMA_SG_LIST_FULL 517L
XPAR_MICROBLAZE_0_M15_AXIS_DATA_WIDTH 32
mtmsr(v) ({ __asm__ __volatile__("mts\trmsr,%0\n\tnop\n" ::"d"(v)); })
__LEAST8 "hh"
_rand_next
XPAR_BRAM_3_ECC 0U
XPAR_MICROBLAZE_S0_AXIS_DATA_WIDTH 32
XPAR_GPIO_0_BASEADDR 0x04B20000
num_regions
_U 01
XPAR_XBRAM_NUM_INSTANCES 4U
Xil_AssertVoid(Expression) { if (Expression) { Xil_AssertStatus = XIL_ASSERT_NONE; } else { Xil_Assert(__FILE__, __LINE__); Xil_AssertStatus = XIL_ASSERT_OCCURRED; return; } }
XAXIDMA_BD_STS_OFFSET 0x1C
XPAR_AXI_INTC_0_HAS_FAST 0
XPAR_AXI_DMA_0_DEVICE_ID 0
XAXIDMA_BD_ARCACHE_FIELD_MASK 0x0F000000
XPAR_MICROBLAZE_0_DCACHE_HIGHADDR 0x3FFFFFFF
_CAST_VOID (void)
__SIZE_T 
XUINT64_MSW(x) ((x).Upper)
__lock_close_recursive(lock) (_CAST_VOID 0)
XPAR_MB_DMA_AXI_BRAM_CTRL_0_FAULT_INJECT 0U
__CHAR32_TYPE__ long unsigned int
XPAR_MICROBLAZE_S8_AXIS_PROTOCOL GENERIC
_maxwds
XPAR_MICROBLAZE_USE_BARREL 0
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_DATA_WIDTH 32U
XPAR_AXI_DMA_0_S2MM_BURST_SIZE 16
PostHead
XPAR_MICROBLAZE_0_ADDR_SIZE 32
XPAR_MICROBLAZE_M5_AXIS_DATA_WIDTH 32
username_to_uid
__SIZEOF_POINTER__ 4
__DOTS , ...
INT8_C(x) __INT8_C(x)
XPAR_XEMACPS_0_ENET_SLCR_100Mbps_DIV1 5
__pure __attribute__((__pure__))
XPAR_MICROBLAZE_M15_AXIS_DATA_WIDTH 32
_WANT_IO_LONG_DOUBLE 1
XPAR_MICROBLAZE_FAULT_TOLERANT 0
XPAR_BRAM_0_DEVICE_ID XPAR_DATA_LMB_BRAM_IF_CNTLR_1_DEVICE_ID
_T_SIZE 
suboptarg
XPAR_MICROBLAZE_IC_AXI_MON 0
XAxiDma_BdRingSnapShotCurrBd(RingPtr) { if (!RingPtr->IsRxChannel) { (RingPtr)->BdaRestart = (XAxiDma_Bd *)(UINTPTR)XAxiDma_ReadReg( (RingPtr)->ChanBase, XAXIDMA_CDESC_OFFSET); } else { if (!RingPtr->RingIndex) { (RingPtr)->BdaRestart = (XAxiDma_Bd *)(UINTPTR)XAxiDma_ReadReg( (RingPtr)->ChanBase, XAXIDMA_CDESC_OFFSET); } else { (RingPtr)->BdaRestart = (XAxiDma_Bd *)(UINTPTR)XAxiDma_ReadReg( (RingPtr)->ChanBase, (XAXIDMA_RX_CDESC0_OFFSET + (RingPtr->RingIndex - 1) * XAXIDMA_RX_NDESC_OFFSET)); } } }
XAxiDma_BdGetBufAddr(BdPtr) (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_BUFA_OFFSET))
__int20
XPAR_PS7_ETHERNET_0_ENET_SLCR_100MBPS_DIV0 8
XPAR_BRAM_0_CE_FAILING_REGISTERS 0U
__CONCAT1(x,y) x ## y
XIntc_In32 Xil_In32
__clock_t_defined 
XPAR_MICROBLAZE_LOCKSTEP_MASTER 0
_BSD_WCHAR_T_ 
XPAR_MICROBLAZE_M_AXI_IC_DATA_WIDTH 32
XPAR_INS_LMB_BRAM_IF_CNTLR_0_HIGHADDR 0x0001FFFFU
__WCHAR_MAX__ 0x7fffffff
__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))
XPAR_MICROBLAZE_0_M_AXI_IC_ADDR_WIDTH 32
XPAR_AXIDMA_0_DEVICE_ID XPAR_AXI_DMA_0_DEVICE_ID
XAXIDMA_BD_USR4_OFFSET 0x30
XPAR_SHARE_AXI_BRAM_CTRL_0_FAULT_INJECT 0U
__LONG_LONG_MAX__ 0x7fffffffffffffffLL
XPAR_MICROBLAZE_0_M_AXI_DC_BUSER_WIDTH 1
INT8_MIN (-__INT8_MAX__ - 1)
XST_DEVICE_IS_STOPPED 6L
_T_WCHAR_ 
XST_IIC_DRR_READBACK_ERROR 1085
_NOARGS void
XST_IPIF_DEVICE_ACK_ERROR 534L
_REENT_MBRLEN_STATE(ptr) ((ptr)->_misc->_mbrlen_state)
XAxiDma_GetTxRing(InstancePtr) (&((InstancePtr)->TxBdRing))
XPAR_MICROBLAZE_MMU_ITLB_SIZE 2
_POSIX_C_SOURCE
XPAR_PS7_SD_0_MIO_BANK 0
XPAR_XUSBPS_0_BASEADDR 0xE0002000
NumberofIntrs
XAXIDMA_HW_H_ 
XPAR_BRAM_1_UE_FAILING_REGISTERS 0U
XPAR_MICROBLAZE_ALLOW_DCACHE_WR 1
XCACHE_DISABLE_DCACHE() 
__asserts_exclusive(...) __lock_annotate(assert_exclusive_lock(__VA_ARGS__))
__SRW 0x0010
XPAR_MICROBLAZE_0_DP_AXI_MON 0
XPAR_MICROBLAZE_DCACHE_BYTE_SIZE 8192
_SYS_CDEFS_H_ 
XAxiDma_BdSetARCache(BdPtr,ARCache) { u32 val; val = (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_MCCTL_OFFSET) & ~XAXIDMA_BD_ARCACHE_FIELD_MASK); val |= ((u32)(ARCache) << XAXIDMA_BD_ARCACHE_FIELD_SHIFT); XAxiDma_BdWrite((BdPtr), XAXIDMA_BD_MCCTL_OFFSET, val); }
XPAR_MICROBLAZE_M_AXI_IC_ARUSER_WIDTH 5
XPAR_MICROBLAZE_S4_AXIS_DATA_WIDTH 32
XPAR_MICROBLAZE_0_COMPONENT_NAME system_microblaze_0_0
XPAR_BRAM_3_ECC_ONOFF_RESET_VALUE 0U
XAXIDMA_BD_HAS_DRE_MASK 0xF00
XPAR_MICROBLAZE_0_NUM_SYNC_FF_CLK_IRQ 1
_tolower(__c) ((unsigned char)(__c) - 'A' + 'a')
_close
XPAR_MICROBLAZE_BASE_VECTORS 0x0000000000000000
XAXIDMA_BD_STS_INT_ERR_MASK 0x10000000
lwr(address) ({ u32 _rval; __asm__ __volatile__("lwr\t%0,%1,r0\n" : "=d"(_rval) : "d"(address)); _rval; })
XPAR_FIFO_COUNT_AXI_GPIO_0_IS_DUAL 0
_glue
__NEWLIB_H__ 1
XST_NO_FEATURE 19L
UINT_FAST32_MAX (__UINT_FAST32_MAX__)
XPAR_MICROBLAZE_0_M_AXI_IP_DATA_WIDTH 32
XAXIDMA_BD_STS_COMPLETE_MASK 0x80000000
XPAR_XSDPS_0_HIGHADDR 0xE0100FFF
__RCSID_SOURCE(s) struct __hack
mb_swapb(v) ({ u32 _rval; __asm__ __volatile__("swapb\t%0,%1\n" : "=d"(_rval) : "d"(v)); _rval; })
XAxiDma_BdRingEnableCyclicDMA(RingPtr) (RingPtr->Cyclic = 1)
__UINT_LEAST16_TYPE__ short unsigned int
XPAR_MICROBLAZE_M9_AXIS_DATA_WIDTH 32
XAXIDMA_SGCTL_OFFSET 0x0000002c
XENV_TIME_STAMP_GET(StampPtr) 
__pure2 __attribute__((__const__))
__LDBL_HAS_QUIET_NAN__ 1
XPAR_BRAM_1_WRITE_ACCESS 2U
XPAR_MICROBLAZE_RESET_MSR_BIP 0
cputfsl_interruptible(val,id) asm volatile( "\n1:\n\tncput\t%0,rfsl" stringify(id) "\n\t" "addic\tr18,r0,0\n\t" "bnei\tr18,1b\n" ::"d"(val) : "r18")
XPAR_MICROBLAZE_0_I_LMB 1
XPAR_MICROBLAZE_CORE_CLOCK_FREQ_HZ 100000000
__PLATFORM_CONFIG_H_ 
SRC_CONSTANTS_H_ 
__reent_assert(x) ((void)0)
_POSIX_C_SOURCE 200809L
XAxiDma_ReadReg(BaseAddress,RegOffset) XAxiDma_In32((BaseAddress) + (RegOffset))
INTPTR_MAX (__INTPTR_MAX__)
XAxiDma_BdRingGetIrq(RingPtr) (XAxiDma_ReadReg((RingPtr)->ChanBase, XAXIDMA_SR_OFFSET) & XAXIDMA_IRQ_ALL_MASK)
XPAR_PS7_SD_0_BUS_WIDTH 0
__u_int_defined 
Xil_Ntohl Xil_EndianSwap32
XPAR_MICROBLAZE_M_AXI_DC_EXCLUSIVE_ACCESS 0
XPAR_MICROBLAZE_0_ECC_USE_CE_EXCEPTION 0
__LDBL_MANT_DIG__ 53
set_playing() change_state(PLAYING, GREEN)
XPAR_MICROBLAZE_0_M0_AXIS_PROTOCOL GENERIC
color
XAxiDma_BdWrite64(BaseAddress,Offset,Data) (*(u64 *)((UINTPTR)(void *)(BaseAddress) + (u32)(Offset))) = (u64)(Data)
XPAR_MICROBLAZE_DCACHE_LINE_LEN 4
_EXFNPTR(name,proto) (* name) proto
_Bigint
FIFO_CAP 4096 * 4
XPAR_MICROBLAZE_M_AXI_IP_DATA_WIDTH 32
UINT_LEAST16_MAX (__UINT_LEAST16_MAX__)
_misc_reent
query_player
INT8_MAX (__INT8_MAX__)
PreCnt
HAVE_INITFINI_ARRAY 1
XPAR_SHARE_AXI_BRAM_CTRL_0_DEVICE_ID 3U
XPAR_AXIDMA_0_INCLUDE_MM2S 1
XAXIDMA_BD_HAS_DRE_OFFSET 0x3C
XPAR_BRAM_0_ECC_STATUS_REGISTERS 0U
___int8_t_defined 1
HasSg
__FAST64 "ll"
_REENT_STRTOK_LAST(ptr) ((ptr)->_misc->_strtok_last)
NFDBITS (sizeof (fd_mask) * 8)
gen_song_md
XENV_STANDALONE_H 
XPAR_INS_LMB_BRAM_IF_CNTLR_0_ECC_ONOFF_REGISTER 0U
__uintptr_t
XPAR_MICROBLAZE_0_S10_AXIS_DATA_WIDTH 32
_REENT_RAND48_MULT(ptr) ((ptr)->_r48->_mult)
__BSD_VISIBLE 1
_atexit0
XIL_COMPONENT_IS_READY 0x11111111U
XIN_MER_OFFSET 28
INT_LEAST8_MIN (-__INT_LEAST8_MAX__ - 1)
XPAR_PS7_ETHERNET_0_ENET_SLCR_10MBPS_DIV0 8
XPAR_AXI_DMA_0_INCLUDE_MM2S 1
XPAR_MICROBLAZE_S8_AXIS_DATA_WIDTH 32
XST_FLASH_BLOCKING_CALL_ERROR 1137L
__UINT_LEAST32_MAX__ 0xffffffffUL
is_provisioned_uid
__DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))
XPAR_MICROBLAZE_S10_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_BRANCH_TARGET_CACHE_SIZE 0
XAXIDMA_BD_CTRL_TXSOF_MASK 0x08000000
NULL ((void *)0)
XST_FLASH_ERROR 1128L
__ORDER_BIG_ENDIAN__ 4321
XPAR_MICROBLAZE_0_M4_AXIS_PROTOCOL GENERIC
_X 0100
XPAR_MICROBLAZE_PIADDR_SIZE 32
_getdate_err
_MACHINE__DEFAULT_TYPES_H 
XPAR_AXI_DMA_0_INCLUDE_SG 0
__UINT_FAST32_TYPE__ unsigned int
BaseAddress
_SYS__SIGSET_H_ 
swr(address,data) ({ __asm__ __volatile__("swr\t%0,%1,r0\n" ::"d"(data), "d"(address)); })
__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)
XPAR_AXI_DMA_0_INCLUDE_S2MM_DRE 0
XST_EMAC_COLLISION_ERROR 1007L
__MICROBLAZEEL__ 1
XPAR_MICROBLAZE_0_D_AXI 1
STOP
_POSIX_SOURCE 1
UINT32_MAX (__UINT32_MAX__)
XPAR_AXI_DMA_0_NUM_MM2S_CHANNELS 1
XPAR_MICROBLAZE_EDK_IPTYPE PROCESSOR
__generic(expr,t,yes,no) _Generic(expr, t: yes, default: no)
XCACHE_DISABLE_ICACHE() 
XCACHE_FLUSH_DCACHE_RANGE(Addr,Len) 
XPAR_MICROBLAZE_0_DCACHE_BYTE_SIZE 8192
XPAR_MICROBLAZE_M_AXI_IP_THREAD_ID_WIDTH 1
XPAR_INTC_0_KIND_OF_INTR 0xFFFFFFFFU
XAXIDMA_BD_STS_SLV_ERR_MASK 0x20000000
XST_DMA_SG_LIST_ERROR 526L
XPAR_MICROBLAZE_DYNAMIC_BUS_SIZING 0
__need_wchar_t
__FLT_DECIMAL_DIG__ 9
__INT32_TYPE__ long int
mfmsr() ({ u32 _rval; __asm__ __volatile__("mfs\t%0,rmsr\n" : "=d"(_rval)); _rval; })
_T_PTRDIFF 
_REENT_SMALL 
XST_EMAC_MEMORY_ALLOC_ERROR 1002L
FreeCnt
XST_DMA_RESET_REGISTER_ERROR 512L
va_arg(v,l) __builtin_va_arg(v,l)
xdbg_printf(...) 
XPAR_MICROBLAZE_0_BRANCH_TARGET_CACHE_SIZE 0
XST_UART_CONFIG_ERROR 1053L
XAxiDma_BdGetLength(BdPtr,LengthMask) (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_CTRL_LEN_OFFSET) & LengthMask)
_READ_WRITE_RETURN_TYPE int
digital_out
microblaze_getfpex_operand_a() ({ extern u32 mb_fpex_op_a; mb_fpex_op_a; })
lhuea(lladdr) ({ u32 _rval; __asm__ __volatile__("lhuea\t%0,%M1,%L1\n" : "=d"(_rval) : "d"(lladdr)); _rval; })
XPAR_MICROBLAZE_M_AXI_DC_BUSER_WIDTH 1
__ctype_ptr__
XPAR_MICROBLAZE_0_M8_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_ASYNC_WAKEUP 3
XPAR_INTC_0_HIGHADDR 0x04B3FFFFU
__UINTPTR_TYPE__ unsigned int
XENV_TIME_STAMP_DELTA_MS(Stamp1Ptr,Stamp2Ptr) (0)
XPAR_MICROBLAZE_0_CACHE_BYTE_SIZE 8192
__FINITE_MATH_ONLY__ 0
XPAR_MICROBLAZE_0_S3_AXIS_PROTOCOL GENERIC
mtshr(v) ({ __asm__ __volatile__("mts\trshr,%0\n\tnop\n" ::"d"(v)); })
Initialized
XAxiDma_Bd
Xil_L1ICacheInvalidateRange(Addr,Len) microblaze_invalidate_icache_range((Addr), (Len))
XPAR_MICROBLAZE_0_I_AXI 1
XAXIDMA_RX_NDESC_OFFSET 0x00000020
XPAR_MICROBLAZE_0_USE_MMU 0
XST_IIC_STAND_REG_RESET_ERROR 1079
_REENT_INIT(var) { 0, (__FILE *)&__sf_fake_stdin, (__FILE *)&__sf_fake_stdout, (__FILE *)&__sf_fake_stderr, 0, _NULL, 0, 0, "C", _NULL, _NULL, 0, 0, _NULL, _NULL, _NULL, _NULL, _NULL, _REENT_INIT_ATEXIT {_NULL, 0, _NULL}, _NULL, _NULL, _NULL }
XAXIDMA_IRQ_ALL_MASK 0x00007000
XIntc_Config
XPAR_MICROBLAZE_0_M_AXI_IP_THREAD_ID_WIDTH 1
XPAR_INS_LMB_BRAM_IF_CNTLR_0_FAULT_INJECT 0U
PTRDIFF_MAX (__PTRDIFF_MAX__)
UINTMAX_MAX (__UINTMAX_MAX__)
__sglue
XPAR_PS7_SD_0_SDIO_CLK_FREQ_HZ 50000000
INT_LEAST32_MIN (-__INT_LEAST32_MAX__ - 1)
XPAR_XGPIOPS_NUM_INSTANCES 1
XAXIDMA_CR_RUNSTOP_MASK 0x00000001
XPAR_MICROBLAZE_0_DCACHE_ADDR_TAG 17
_EXPARM(name,proto) (* name) proto
__daddr_t_defined 
XPAR_MICROBLAZE_DADDR_SIZE 32
XPAR_MICROBLAZE_PVR_USER1 0x00
XPAR_MICROBLAZE_ALLOW_ICACHE_WR 1
XPAR_BRAM_0_WRITE_ACCESS 2U
__INT16 "h"
Xil_In32LE Xil_In32
XST_FR_BUF_LOCKED 1402
__STDINT_EXP(x) __ ##x ##__
XPAR_MICROBLAZE_0_S1_AXIS_PROTOCOL GENERIC
set_working() change_state(WORKING, YELLOW)
XPAR_CPU_CORE_CLOCK_FREQ_HZ 100000000
XPAR_SHARE_AXI_BRAM_CTRL_0_S_AXI_BASEADDR 0x04B00000U
XPAR_MICROBLAZE_INTERRUPT_MON 0
_SYS__STDINT_H 
__XSTRING(x) __STRING(x)
XPAR_PS7_I2C_0_DEVICE_ID 0
__GCC_ATOMIC_BOOL_LOCK_FREE 1
__DEC64_MAX__ 9.999999999999999E384DD
__INT_FAST32_MAX__ 0x7fffffff
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_S_AXI_CTRL_BASEADDR 0xFFFFFFFFU
_file
_flags
XPAR_MICROBLAZE_0_S7_AXIS_PROTOCOL GENERIC
XST_FR_NO_BUF 1403
XAXIDMA_BD_TUSER_FIELD_SHIFT 16
XST_DMA_SG_NO_DATA 525L
__ATTRIBUTE_IMPURE_PTR__ 
XPAR_BRAM_1_ECC_ONOFF_RESET_VALUE 1U
_SIGNED signed
XPAR_PS7_M_AXI_GP0_S_AXI_BASEADDR 0x40000000
XPAR_MICROBLAZE_G_USE_EXCEPTIONS 0
XPAR_XINTC_HAS_CIE 1
long +4
__sFILE
XPAR_MICROBLAZE_USE_ICACHE 0
_WANT_IO_LONG_LONG 1
_fns
SIZE_MAX (__SIZE_MAX__)
XIN_IER_OFFSET 8
XPAR_SHARE_AXI_BRAM_CTRL_0_S_AXI_CTRL_BASEADDR 0xFFFFFFFFU
XAXIDMA_TDESC_OFFSET 0x00000010
__scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))
LOWER_32_BITS(n) ((u32)(n))
XPAR_MICROBLAZE_DEBUG_PROFILE_SIZE 0
__SIG_ATOMIC_MAX__ 0x7fffffff
XPAR_MICROBLAZE_0_USE_HW_MUL 0
XAxiDma_BdRingGetSr(RingPtr) XAxiDma_ReadReg((RingPtr)->ChanBase, XAXIDMA_SR_OFFSET)
__SEOF 0x0020
__SIZEOF_DOUBLE__ 8
__UINT_FAST32_MAX__ 0xffffffffU
__LDBL_MAX_EXP__ 1024
XST_IS_STARTED 23L
XPAR_MICROBLAZE_IMPRECISE_EXCEPTIONS 0
WORKING
mfpvr(rn) ({ u32 _rval; __asm__ __volatile__("mfs\t%0,rpvr" stringify(rn) "\n" : "=d"(_rval)); _rval; })
XPAR_INS_LMB_BRAM_IF_CNTLR_0_BASEADDR 0x00000000U
_REENT_CHECK_MP(var) _REENT_CHECK(var, _mp, struct _mprec *, sizeof *((var)->_mp), _REENT_INIT_MP(var))
XST_FR_TX_ERROR 1400
XPAR_CPU_M_AXI_DP_FREQ_HZ 100000000
XPAR_AXIDMA_0_NUM_S2MM_CHANNELS 1
__GNU_VISIBLE 0
__SWR 0x0008
XAXIDMA_BD_ARUSER_FIELD_SHIFT 28
XPAR_AXIDMA_0_SG_INCLUDE_STSCNTRL_STRM 0
microblaze_nbread_cntlfsl(val,id) ncgetfsl(val, id)
XST_INTC_CONNECT_ERROR 1202
XIntc
XPAR_MICROBLAZE_0_M6_AXIS_DATA_WIDTH 32
_RAND48_SEED_0 (0x330e)
PROVISIONED_RIDS
XIN_INT_MASTER_ENABLE_MASK 0x1UL
__SAPP 0x0100
XPAR_MICROBLAZE_0_UNALIGNED_EXCEPTIONS 0
XST_USB_ALREADY_CONFIGURED 1410
__int32_t
query
microblaze_bread_cntlfsl(val,id) cgetfsl(val, id)
lbuea(lladdr) ({ u32 _rval; __asm__ __volatile__("lbuea\t%0,%M1,%L1\n" : "=d"(_rval) : "d"(lladdr)); _rval; })
__INTMAX_MAX__ 0x7fffffffffffffffLL
__uint32_t
wav_size
stdin (_REENT->_stdin)
XIN_IVAR_OFFSET 0x100
XAxiDma_BdSetStride(BdPtr,Stride) { u32 val; val = (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_STRIDE_VSIZE_OFFSET) & ~XAXIDMA_BD_STRIDE_FIELD_MASK); val |= ((u32)(Stride) << XAXIDMA_BD_STRIDE_FIELD_SHIFT); XAxiDma_BdWrite((BdPtr), XAXIDMA_BD_STRIDE_VSIZE_OFFSET, val); }
XPAR_PS7_UART_0_BASEADDR 0xE0000000
XPAR_BRAM_3_CE_FAILING_REGISTERS 0U
__GNUCLIKE_BUILTIN_VAALIST 1
is_locked
XAxiDma_IntrDisable(InstancePtr,Mask,Direction) XAxiDma_WriteReg((InstancePtr)->RegBase + (XAXIDMA_RX_OFFSET * Direction), XAXIDMA_CR_OFFSET, (XAxiDma_ReadReg((InstancePtr)->RegBase + (XAXIDMA_RX_OFFSET * Direction), XAXIDMA_CR_OFFSET)) & ~(Mask & XAXIDMA_IRQ_ALL_MASK))
XAXIDMA_RX_TDESC0_MSB_OFFSET 0x0000004C
__signed signed
XAxiDma_BdGetId(BdPtr) (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_ID_OFFSET))
__value
_SYS_FEATURES_H 
isxdigit(__c) (__ctype_lookup(__c)&(_X|_N))
_REENT_MBLEN_STATE(ptr) ((ptr)->_misc->_mblen_state)
region_name_to_rid
XPAR_MICROBLAZE_M10_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_0_FREQ 100000000
cp_num
XCACHE_ENABLE_CACHE() { XCACHE_ENABLE_DCACHE(); XCACHE_ENABLE_ICACHE(); }
__restrict restrict
CallBackRef
XPAR_MICROBLAZE_0_S1_AXIS_DATA_WIDTH 32
__u_short_defined 
_mprec
PAUSED
myISR
__need_wchar_t 
XPAR_AXI_DMA_0_M_AXI_S2MM_DATA_WIDTH 32
UINT_FAST64_MAX (__UINT_FAST64_MAX__)
TxBdRing
XAXIDMA_BD_TID_FIELD_SHIFT 8
iscntrl(__c) (__ctype_lookup(__c)&_C)
mttlbsx(v) ({ __asm__ __volatile__("mts\trtlbsx,%0\n\tnop\n" ::"d"(v)); })
__nonnull_all __attribute__((__nonnull__))
_p5s
__ATOMIC_ACQ_REL 4
XPAR_XSPIPS_0_SPI_CLK_FREQ_HZ 166666672
XPAR_MICROBLAZE_0_M_AXI_DC_USER_SIGNALS 0
_T_WCHAR 
XPAR_MICROBLAZE_DEBUG_EXTERNAL_TRACE 0
XPAR_MICROBLAZE_M3_AXIS_PROTOCOL GENERIC
_SIZET_ 
__INT8_TYPE__ signed char
XPAR_CPU_M_AXI_IP_FREQ_HZ 100000000
__LDBL_DENORM_MIN__ 4.9406564584124654e-324L
AckBeforeService
cp_xfil_cnt
Xil_In16LE Xil_In16
__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1
XAxiDma_IntrGetEnabled(InstancePtr,Direction) XAxiDma_ReadReg((InstancePtr)->RegBase + (XAXIDMA_RX_OFFSET * Direction), XAXIDMA_CR_OFFSET) & XAXIDMA_IRQ_ALL_MASK)
__hidden __attribute__((__visibility__("hidden")))
XPAR_MICROBLAZE_0_OPTIMIZATION 0
XAXIDMA_SRCADDR_OFFSET 0x00000018
_STDDEF_H_ 
_ATFILE_SOURCE 1
XPAR_AXIDMA_0_c_addr_width 32
XPAR_MICROBLAZE_0_PVR_USER2 0x00000000
REGION_NAME_SZ 64
__GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)
_ELIDABLE_INLINE static __inline__
XPAR_MICROBLAZE_ADDR_TAG_BITS 17
XPAR_BRAM_0_UE_FAILING_REGISTERS 0U
_REENT_RAND_NEXT(ptr) ((ptr)->_r48->_rand_next)
XPAR_MICROBLAZE_TRACE 0
XCACHE_INVALIDATE_DCACHE_RANGE(Addr,Len) 
__INT_FAST32_TYPE__ int
__lock_init_recursive(lock) (_CAST_VOID 0)
INTPTR_MIN (-__INTPTR_MAX__ - 1)
XPAR_XUARTPS_0_HAS_MODEM 0
TIMESPEC_TO_TIMEVAL(tv,ts) do { (tv)->tv_sec = (ts)->tv_sec; (tv)->tv_usec = (ts)->tv_nsec / 1000; } while (0)
XPAR_MICROBLAZE_USE_CONFIG_RESET 0
XIL_ASSERT_OCCURRED 1U
XPAR_MICROBLAZE_0_M0_AXIS_DATA_WIDTH 32
XPAR_SHARE_AXI_BRAM_CTRL_0_DATA_WIDTH 32U
_NOTHROW 
sbr(address,data) ({ __asm__ __volatile__("sbr\t%0,%1,r0\n" ::"d"(data), "d"(address)); })
__CC_SUPPORTS___INLINE__ 1
XPAR_MICROBLAZE_S11_AXIS_PROTOCOL GENERIC
XPAR_MB_DMA_AXI_BRAM_CTRL_0_S_AXI_CTRL_BASEADDR 0xFFFFFFFFU
XIL_EXCEPTION_ID_UNALIGNED_ACCESS 1U
__DEC64_MANT_DIG__ 16
set_paused() change_state(PAUSED, BLUE)
share_song
provisioned_only
XPAR_BRAM_0_FAULT_INJECT 0U
__int_fast64_t_defined 1
_S 010
XPAR_MICROBLAZE_M0_AXIS_PROTOCOL GENERIC
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_ECC_ONOFF_REGISTER 0U
swx(address,data) ({ __asm__ __volatile__("swx\t%0,%1,r0\n" ::"d"(data), "d"(address)); })
FOPEN_MAX 20
HasMm2S
_REENT_SIGNAL_SIZE 24
XST_DMA_BD_ERROR 527L
XST_DEVICE_NOT_FOUND 2L
FD_SETSIZE 64
XAxiDma_GetRxRing(InstancePtr) (&((InstancePtr)->RxBdRing[0]))
mb_printf(...) xil_printf(MB_PROMPT __VA_ARGS__)
_BSD_PTRDIFF_T_ 
__WCHAR_T 
XAxiDma_BdGetARUser(BdPtr) ((XAxiDma_BdRead((BdPtr), XAXIDMA_BD_MCCTL_OFFSET)) & XAXIDMA_BD_ARUSER_FIELD_MASK)
__CC_SUPPORTS___FUNC__ 1
XCACHE_ENABLE_ICACHE() 
XAXIDMA_BD_CTRL_LEN_OFFSET 0x18
mtgpr(rn,v) ({ __asm__ __volatile__("or\t" stringify(rn) ",r0,%0\n" ::"d"(v)); })
XIL_EXCEPTION_H 
MAX_REGIONS 64
XPAR_MICROBLAZE_0_DYNAMIC_BUS_SIZING 0
__DEC64_MIN__ 1E-383DD
Xil_DCacheEnable() Xil_L1DCacheEnable()
__INT16_C(c) c
mftlbhi() ({ u32 _rval; __asm__ __volatile__("mfs\t%0,rtlbhi\n" : "=d"(_rval)); _rval; })
SIG_ATOMIC_MIN (-__STDINT_EXP(INT_MAX) - 1)
XPAR_MICROBLAZE_0_NUMBER_OF_PC_BRK 4
fsl_iserror(error) asm volatile("mfs\t%0,rmsr\n\t" "andi\t%0,%0,0x10" : "=d"(error))
XAXIDMA_BD_STRIDE_FIELD_MASK 0x0000FFFF
XPAR_MICROBLAZE_0_S5_AXIS_DATA_WIDTH 32
__attribute_format_strfmon__(a,b) 
__microblaze__ 1
XPAR_BRAM_3_ECC_STATUS_REGISTERS 0U
__SIZEOF_SHORT__ 2
XPAR_MICROBLAZE_LOCKSTEP_SELECT 0
length
XPAR_MICROBLAZE_S15_AXIS_PROTOCOL GENERIC
__have_long32 1
cgetfsl_interruptible(val,id) asm volatile("\n1:\n\tncget\t%0,rfsl" stringify(id) "\n\t" "addic\tr18,r0,0\n\t" "bnei\tr18,1b\n" : "=d"(val)::"r18")
__GCC_ATOMIC_SHORT_LOCK_FREE 1
XAxiDma_WriteReg(BaseAddress,RegOffset,Data) XAxiDma_Out32((BaseAddress) + (RegOffset), (Data))
__UINT8_MAX__ 0xff
XPAR_MICROBLAZE_DEBUG_ENABLED 2
XAXIDMA_BD_USR3_OFFSET 0x2C
XPAR_MICROBLAZE_M4_AXIS_PROTOCOL GENERIC
_REENT_MBRTOWC_STATE(ptr) ((ptr)->_misc->_mbrtowc_state)
XAXIDMA_BD_USR1_OFFSET 0x24
XST_UART 
XAxiDma
BLUE
md_size
XPAR_RGB_PWM_0_DEVICE_ID 0
_gamma_signgam
XPAR_MICROBLAZE_0_USE_PCMP_INSTR 0
LOGIN
XPAR_PS7_SPI_0_SPI_CLK_FREQ_HZ 166666672
__BEGIN_DECLS 
UART_DEVICE_ID 0
microblaze_bwrite_cntlfsl(val,id) cputfsl(val, id)
__SIZEOF_WINT_T__ 4
XPAR_MICROBLAZE_M10_AXIS_DATA_WIDTH 32
XPAR_MICROBLAZE_PC_WIDTH 32
__UINTPTR_MAX__ 0xffffffffU
_REENT_TM(ptr) ((ptr)->_localtime_buf)
XPAR_MICROBLAZE_0_M14_AXIS_DATA_WIDTH 32
XST_IPIF_DEVICE_STATUS_ERROR 533L
XIntc_AckIntr(BaseAddress,AckMask) XIntc_Out32((BaseAddress) + XIN_IAR_OFFSET, (AckMask))
_current_category
getc(fp) __sgetc_r(_REENT, fp)
mttlbx(v) ({ __asm__ __volatile__("mts\trtlbx,%0\n\tnop\n" ::"d"(v)); })
XPAR_PS7_SD_0_IS_CACHE_COHERENT 0
XNULL NULL
__LOCK_INIT_RECURSIVE(class,lock) static int lock = 0;
__ATOMIC_CONSUME 1
XPAR_MICROBLAZE_0_DCACHE_USE_WRITEBACK 0
XPAR_INTC_MAX_NUM_INTR_INPUTS 1
__FLT_MIN__ 1.1754943508222875e-38F
__INT_LEAST16_TYPE__ short int
XST_EMAC_OUT_OF_BUFFERS 1005L
__UINT_LEAST64_TYPE__ long long unsigned int
INTMAX_MAX (__INTMAX_MAX__)
tostring(s) #s
_BEGIN_STD_C 
SHARED_DDR_BASE (0x20000000 + 0x1CC00000)
lwea(lladdr) ({ u32 _rval; __asm__ __volatile__("lwea\t%0,%M1,%L1\n" : "=d"(_rval) : "d"(lladdr)); _rval; })
XST_UART_TEST_FAIL 1054L
physadr physadr_t
XPAR_MICROBLAZE_M8_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_S10_AXIS_DATA_WIDTH 32
INT_FAST8_MIN (-__INT_FAST8_MAX__ - 1)
__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2
MAX_SONG_SZ (1 << 25)
PAUSE
XIL_EXCEPTION_ID_MMU 7U
USER_IDS
__SIZEOF_PTRDIFF_T__ 4
XPAR_MICROBLAZE_S3_AXIS_PROTOCOL GENERIC
logged_in
_ST_INT32
__DBL_DECIMAL_DIG__ 17
XPAR_MICROBLAZE_0_IP_AXI_MON 0
XINTC_L_H 
__sf_fake_stderr
XPAR_MICROBLAZE_0_M12_AXIS_PROTOCOL GENERIC
__sclearerr(p) ((void)((p)->_flags &= ~(__SERR|__SEOF)))
_ATTRIBUTE(attrs) __attribute__ (attrs)
XPAR_SHARE_AXI_BRAM_CTRL_0_WRITE_ACCESS 0U
char +0
NUM_USERS 3
XPAR_MICROBLAZE_0_RESET_MSR_DCE 0
_flockfile(fp) (((fp)->_flags & __SSTR) ? 0 : __lock_acquire_recursive((fp)->_lock))
_VA_LIST_T_H 
XAXIDMA_HALTED_MASK 0x00000001
XST_DMA_ERROR 9L
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_DEVICE_ID 0U
_ATFILE_SOURCE
SEEK_SET 0
_VA_LIST_ 
XPAR_MICROBLAZE_0_S9_AXIS_DATA_WIDTH 32
XST_FLASH_READY 1127L
__sdidinit
MB_PROMPT "\r\nMB> "
__DBL_MIN_EXP__ (-1021)
__exported __attribute__((__visibility__("default")))
XST_IIC_GENERAL_CALL_ADDRESS 1078
__LEAST32 "l"
XPAR_BRAM_3_FAULT_INJECT 0U
XPAR_XUARTPS_NUM_INSTANCES 1
INT_LEAST64_MIN (-__INT_LEAST64_MAX__ - 1)
__LITTLE_ENDIAN__ 1
__SNPT 0x0800
__result_use_check __attribute__((__warn_unused_result__))
XPAR_MICROBLAZE_FPU_EXCEPTION 0
dma_cnt
SIG_ATOMIC_MAX (__STDINT_EXP(INT_MAX))
XAXIDMA_CR_CYCLIC_MASK 0x00000010
EXIT_FAILURE 1
XPAR_MICROBLAZE_DATA_SIZE 32
XPAR_PS7_ETHERNET_0_DEVICE_ID 0
XPAR_MICROBLAZE_0_USE_EXTENDED_FSL_INSTR 0
__STDC_VERSION__ 201112L
XST_FLASH_ALIGNMENT_ERROR 1136L
__LDBL_MAX_10_EXP__ 308
__INT32 "l"
XPAR_PS7_SPI_0_HIGHADDR 0xE0006FFF
_flock_t
__IMPORT 
fwopen(__cookie,__fn) funopen(__cookie, (int (*)())0, __fn, (fpos_t (*)())0, (int (*)())0)
___int32_t_defined 1
XPAR_XEMACPS_0_HIGHADDR 0xE000BFFF
__sf_fake_stdout
XPAR_AXIDMA_0_MICRO_DMA 0
XST_IPIF_DEVICE_ID_ERROR 540L
XPAR_MICROBLAZE_M4_AXIS_DATA_WIDTH 32
__INT64_TYPE__ long long int
XPAR_MICROBLAZE_S7_AXIS_PROTOCOL GENERIC
mtslr(v) ({ __asm__ __volatile__("mts\trslr,%0\n\tnop\n" ::"d"(v)); })
__DEC32_MAX__ 9.999999E96DF
mfpid() ({ u32 _rval; __asm__ __volatile__("mfs\t%0,rpid\n" : "=d"(_rval)); _rval; })
XAxiDma_BdRingIntDisable(RingPtr,Mask) (XAxiDma_WriteReg((RingPtr)->ChanBase, XAXIDMA_CR_OFFSET, XAxiDma_ReadReg((RingPtr)->ChanBase, XAXIDMA_CR_OFFSET) & ~((Mask)&XAXIDMA_IRQ_ALL_MASK)))
XST_SPI_SLAVE_MODE_FAULT 1159
XPAR_MICROBLAZE_M14_AXIS_DATA_WIDTH 32
__malloc_like __attribute__((__malloc__))
___int_ptrdiff_t_h 
__lock_try_acquire_recursive(lock) (_CAST_VOID 0)
XPAR_MICROBLAZE_M_AXI_I_BUS_EXCEPTION 0
__UINT_LEAST32_TYPE__ long unsigned int
XST_DMA_SG_IS_STOPPED 515L
XPAR_MICROBLAZE_0_S13_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_0_M_AXI_DC_WUSER_WIDTH 1
_NOINLINE_STATIC _NOINLINE static
_LONG_DOUBLE long double
_WANT_IO_C99_FORMATS 1
__GNUCLIKE_MATH_BUILTIN_CONSTANTS 
XPAR_MICROBLAZE_0_USE_BARREL 0
XPAR_MICROBLAZE_ENDIANNESS 1
XENV_H 
XPAR_MICROBLAZE_DCACHE_ALWAYS_USED 0
__PMT(args) args
_P 020
putfsl_interruptible(val,id) asm volatile( "\n1:\n\tnput\t%0,rfsl" stringify(id) "\n\t" "addic\tr18,r0,0\n\t" "bnei\tr18,1b\n" ::"d"(val) : "r18")
XST_NAND_CACHE_ERROR 1450L
XAXIDMA_DESTADDR_MSB_OFFSET 0x0000001C
XPAR_MICROBLAZE_USE_STACK_PROTECTION 0
XPAR_AXI_DMA_0_SG_INCLUDE_STSCNTRL_STRM 0
XPAR_MICROBLAZE_EDK_SPECIAL microblaze
_REENT_GETDATE_ERR_P(ptr) (&((ptr)->_misc->_getdate_err))
XAXIDMA_RX_OFFSET 0x00000030
__SORD 0x2000
mtfsr(v) ({ __asm__ __volatile__("mts\trfsr,%0\n\tnop\n" ::"d"(v)); })
__COPYRIGHT(s) struct __hack
_flags2
_WIDE_ORIENT 1
short
unsigned signed
_REENT_MBTOWC_STATE(ptr) ((ptr)->_misc->_mbtowc_state)
XST_ERROR_COUNT_MAX 22L
XPAR_MICROBLAZE_DEBUG_TRACE_SIZE 8192
XPAR_MICROBLAZE_ICACHE_BASEADDR 0x00000000
XST_RECV_ERROR 27L
XPAR_MICROBLAZE_0_M_AXI_IC_ARUSER_WIDTH 5
XPAR_PS7_I2C_0_I2C_CLK_FREQ_HZ 108333336
__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL
ChanBase
_XDEBUG_H 
XPAR_MB_DMA_AXI_BRAM_CTRL_0_ECC 0U
XST_IPIF_ERROR 541L
XPAR_MICROBLAZE_0_PVR_USER1 0x00
XST_IIC_NOT_SLAVE 1088
XIN_IPR_OFFSET 4
XPAR_MICROBLAZE_0_PC_WIDTH 32
__LEAST64 "ll"
XPAR_MICROBLAZE_S3_AXIS_DATA_WIDTH 32
__SMBF 0x0080
XIL_EXCEPTION_ID_STACK_VIOLATION 7U
XAXIDMA_ALL_BDS 0x0FFFFFFF
shr(address,data) ({ __asm__ __volatile__("shr\t%0,%1,r0\n" ::"d"(data), "d"(address)); })
INT_LEAST16_MAX (__INT_LEAST16_MAX__)
XPAR_MICROBLAZE_0_M_AXI_DP_EXCLUSIVE_ACCESS 0
STDOUT_BASEADDRESS 0xE0000000
XPAR_MICROBLAZE_0_M_AXI_IC_BUSER_WIDTH 1
XAXIDMA_BD_TID_FIELD_MASK 0x00000F00
__UINT16_MAX__ 0xffff
XAxiDma_BdSetARUser(BdPtr,ARUser) { u32 val; val = (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_MCCTL_OFFSET) & ~XAXIDMA_BD_ARUSER_FIELD_MASK); val |= ((u32)(ARUser) << XAXIDMA_BD_ARUSER_FIELD_SHIFT); XAxiDma_BdWrite((BdPtr), XAXIDMA_BD_MCCTL_OFFSET, val); }
XIN_SVC_SGL_ISR_OPTION 1UL
_ST_INT32 __attribute__ ((__mode__ (__SI__)))
__alloc_align(x) __attribute__((__alloc_align__(x)))
XST_SPI_POLL_DONE 1163
XPAR_MICROBLAZE_CACHE_BYTE_SIZE 8192
XPAR_PS7_SPI_0_DEVICE_ID 0
__lock_try_acquire(lock) (_CAST_VOID 0)
XPAR_MICROBLAZE_ILL_OPCODE_EXCEPTION 0
XAXIDMA_SR_OFFSET 0x00000004
XPAR_MICROBLAZE_RESET_MSR_ICE 0
__CONCAT(x,y) __CONCAT1(x,y)
XPAR_BRAM_3_BASEADDR 0x04B00000U
XPAR_MICROBLAZE_AREA_OPTIMIZED 0
UnhandledInterrupts
__DBL_HAS_QUIET_NAN__ 1
__LDBL_MIN_10_EXP__ (-307)
PREVIEW_SZ (PREVIEW_TIME_SEC * AUDIO_SAMPLING_RATE * BYTES_PER_SAMP)
__DEC32_MANT_DIG__ 7
__NO_INLINE__ 1
XPAR_MICROBLAZE_0_S14_AXIS_DATA_WIDTH 32
XAXIDMA_BD_WORDLEN_MASK 0xFF
XPAR_MICROBLAZE_M8_AXIS_DATA_WIDTH 32
XPAR_MICROBLAZE_0_ICACHE_BASEADDR 0x00000000
XPAR_SHARE_AXI_BRAM_CTRL_0_S_AXI_CTRL_HIGHADDR 0xFFFFFFFFU
XPAR_FIFO_COUNT_AXI_GPIO_0_HIGHADDR 0x04B2FFFF
UINT8_C(x) __UINT8_C(x)
BYTES_PER_SAMP 2
XST_REGISTER_ERROR 14L
_REENT_ASCTIME_SIZE 26
__DEC_EVAL_METHOD__ 2
XPAR_PS7_ETHERNET_0_HIGHADDR 0xE000BFFF
XPAR_MICROBLAZE_0_AVOID_PRIMITIVES 0
__LDBL_HAS_INFINITY__ 1
__FLT_DIG__ 6
__SERR 0x0040
XPAR_BRAM_0_CE_COUNTER_WIDTH 0U
XPAR_MICROBLAZE_0_USE_INTERRUPT 1
_FSEEK_OPTIMIZATION 1
XPAR_XGPIOPS_0_DEVICE_ID XPAR_PS7_GPIO_0_DEVICE_ID
XST_EMAC_MEMORY_SIZE_ERROR 1001L
_IOFBF 0
XPAR_MICROBLAZE_FSL_EXCEPTION 0
XAxiDma_BdRead(BaseAddress,Offset) (*(u32 *)(((void *)(UINTPTR)(BaseAddress)) + (u32)(Offset)))
login
XPAR_MICROBLAZE_S14_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_ICACHE_LINE_LEN 4
XPAR_AXI_INTC_0_HIGHADDR 0x04B3FFFF
__u_char_defined 
XAXIDMA_DESTADDR_OFFSET 0x00000018
INT_FAST32_MAX (__INT_FAST32_MAX__)
XPAR_MICROBLAZE_0_DEBUG_COUNTER_WIDTH 32
XPAR_AXI_INTC_0_INT_AXI_GPIO_0_GPIO_IO_O_INTR 0U
stringify(s) tostring(s)
XST_NAND_WRITE_PROTECTED 1451L
XST_USB_BUF_ALIGN_ERROR 1411
Xil_DCacheInvalidateRange(Addr,Len) Xil_L2CacheInvalidateRange((Addr), (Len)); Xil_L1DCacheInvalidateRange((Addr), (Len));
XPAR_MICROBLAZE_0_USE_REORDER_INSTR 1
XST_NAND_TIMEOUT_ERROR 1446L
microblaze_nbwrite_cntlfsl(val,id) ncputfsl(val, id)
XPAR_FIFO_COUNT_AXI_GPIO_0_BASEADDR 0x04B20000
XST_SPI_MODE_FAULT 1151
num_users
__SIZEOF_LONG_DOUBLE__ 8
packing1
packing2
XPAR_MICROBLAZE_0_DC_AXI_MON 0
fropen(__cookie,__fn) funopen(__cookie, __fn, (int (*)())0, (fpos_t (*)())0, (int (*)())0)
uids
XPAR_MICROBLAZE_USE_MMU 0
__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324L)
__FLT_HAS_DENORM__ 1
XPAR_MICROBLAZE_0_SCO 0
XPAR_MICROBLAZE_0_LOCKSTEP_MASTER 0
XPAR_XEMACPS_0_BASEADDR 0xE000B000
XPAR_AXI_DMA_0_MM2S_BURST_SIZE 16
XPAR_PS7_GPIO_0_HIGHADDR 0xE000AFFF
XAxiDma_BdSetTDest(BdPtr,TDest) { u32 val; val = (XAxiDma_BdRead((BdPtr), XAXIDMA_BD_MCCTL_OFFSET) & ~XAXIDMA_BD_TDEST_FIELD_MASK); val |= ((u32)(TDest) << XAXIDMA_BD_TDEST_FIELD_SHIFT); XAxiDma_BdWrite((BdPtr), XAXIDMA_BD_MCCTL_OFFSET, val); }
mfzpr() ({ u32 _rval; __asm__ __volatile__("mfs\t%0,rzpr\n" : "=d"(_rval)); _rval; })
XPAR_PS7_UART_0_HAS_MODEM 0
XPAR_MICROBLAZE_0_M_AXI_DP_THREAD_ID_WIDTH 1
_GCC_MAX_ALIGN_T 
XST_USB_NO_DESC_AVAILABLE 1412
CyclicBd
XPAR_XEMACPS_0_ENET_SLCR_1000Mbps_DIV1 1
_sign
XPAR_DATA_LMB_BRAM_IF_CNTLR_1_CE_FAILING_REGISTERS 0U
_stdout_r(x) ((x)->_stdout)
XPAR_MICROBLAZE_S7_AXIS_DATA_WIDTH 32
XPAR_MICROBLAZE_0_FSL_EXCEPTION 0
XPAR_MICROBLAZE_M_AXI_DC_USER_VALUE 31
__SIZEOF_FLOAT__ 4
DATA_SYNC mbar(1)
main
__DEC128_EPSILON__ 1E-33DL
__SIZE_T__ 
_LITTLE_ENDIAN 1
__SIZE_TYPE__ unsigned int
XPAR_MICROBLAZE_USE_BRANCH_TARGET_CACHE 0
XPAR_AXI_DMA_0_ADDR_WIDTH 32
XST_FLASH_TIMEOUT_ERROR 1134L
XPAR_MICROBLAZE_0_DEBUG_TRACE_ASYNC_RESET 0
XPAR_XSDPS_0_HAS_EMIO 0
XST_IIC_RX_FIFO_REG_RESET_ERROR 1081
__UINT_LEAST8_TYPE__ unsigned char
_RAND48_SEED_1 (0xabcd)
__unreachable() __builtin_unreachable()
isalpha(__c) (__ctype_lookup(__c)&(_U|_L))
microblaze_bwrite_datafsl(val,id) putfsl(val, id)
__STRING(x) #x
XPAR_MICROBLAZE_S15_AXIS_DATA_WIDTH 32
XPAR_XUARTPS_0_HIGHADDR 0xE0000FFF
XAXIDMA_BD_STS_RXSOF_MASK 0x08000000
mfpvre(rn) ({ u32 _rval; __asm__ __volatile__("mfse\t%0,rpvr" stringify(rn) "\n" : "=d"(_rval)); _rval; })
XPAR_MICROBLAZE_0_M3_AXIS_PROTOCOL GENERIC
__CHAR16_TYPE__ short unsigned int
__time_t_defined 
_SYS_SELECT_H 
isspace(__c) (__ctype_lookup(__c)&_S)
XPAR_XSPIPS_0_DEVICE_ID XPAR_PS7_SPI_0_DEVICE_ID
Xil_L2CacheInvalidateRange(Addr,Len) microblaze_invalidate_cache_ext_range((Addr), (Len))
XPAR_MICROBLAZE_0_M_AXI_IC_WUSER_WIDTH 1
ispunct(__c) (__ctype_lookup(__c)&_P)
_r48
_funlockfile(fp) (((fp)->_flags & __SSTR) ? 0 : __lock_release_recursive((fp)->_lock))
mb_hibernate() ({ __asm__ __volatile__("hibernate\t"); })
XPAR_INS_LMB_BRAM_IF_CNTLR_0_CE_FAILING_REGISTERS 0U
FILENAME_MAX 1024
XPAR_MICROBLAZE_0_M12_AXIS_DATA_WIDTH 32
_REENT_CHECK_EMERGENCY(var) _REENT_CHECK(var, _emergency, char *, _REENT_EMERGENCY_SIZE, )
__THROW 
XPAR_MICROBLAZE_ICACHE_VICTIMS 0
WCHAR_MIN (__WCHAR_MIN__)
XPAR_MICROBLAZE_0_USE_EXT_NM_BRK 0
XPAR_MICROBLAZE_NUM_SYNC_FF_DBG_CLK 1
XPAR_MICROBLAZE_0_USE_DCACHE 0
XST_EMAC_MII_BUSY 1004L
DIGITAL_OUT
get_drm_song(d) ((char *)(&d.md) + d.md.md_size)
__need_NULL 
file_size
XIN_REAL_MODE 1
XPAR_MICROBLAZE_0_S5_AXIS_PROTOCOL GENERIC
XPAR_XSDPS_0_HAS_WP 0
__clockid_t_defined 
XPAR_MB_DMA_AXI_BRAM_CTRL_0_S_AXI_CTRL_HIGHADDR 0xFFFFFFFFU
timerisset(tvp) ((tvp)->tv_sec || (tvp)->tv_usec)
XST_FLASH_WRITE_SUSPENDED 1130L
putchar_unlocked(x) putc_unlocked(x, stdout)
XPAR_MICROBLAZE_DEBUG_INTERFACE 0
XAXIDMA_COALESCE_SHIFT 16
XPAR_XIICPS_0_HIGHADDR 0xE0004FFF
XPAR_XUARTPS_0_UART_CLK_FREQ_HZ 100000000
_MACHINE__TYPES_H 
__GNUC_MINOR__ 2
XPAR_XSPIPS_NUM_INSTANCES 1
__STDC_UTF_16__ 1
XPAR_MICROBLAZE_0_EDK_IPTYPE PROCESSOR
_read
_SUSECONDS_T_DECLARED 
XIN_INTC_LAST 3
Xil_Ntohs Xil_EndianSwap16
XPAR_MICROBLAZE_0_M7_AXIS_PROTOCOL GENERIC
XPAR_MICROBLAZE_M_AXI_DC_RUSER_WIDTH 1
XST_SPI_RECEIVE_OVERRUN 1154
PROVISIONED_PINS
_rand48
toupper(__c) __extension__ ({ __typeof__ (__c) __x = (__c); islower (__x) ? (int) __x - 'a' + 'A' : (int) __x;})
XPAR_MICROBLAZE_0_MMU_TLB_ACCESS 3
XPAR_MICROBLAZE_0_S2_AXIS_PROTOCOL GENERIC
__GNUC__ 6
__DEC64_MIN_EXP__ (-382)
XPAR_MB_DMA_AXI_BRAM_CTRL_0_DEVICE_ID 2U
XPAR_INS_LMB_BRAM_IF_CNTLR_0_WRITE_ACCESS 2U
XST_LOOPBACK_ERROR 17L
__MS_types__
XPAR_BRAM_2_CE_FAILING_REGISTERS 0U
__FLT_DENORM_MIN__ 1.4012984643248171e-45F
HasDRE
XST_DATA_LOST 26L
isalnum(__c) (__ctype_lookup(__c)&(_U|_L|_N))
_STDARG_H 
XPAR_INS_LMB_BRAM_IF_CNTLR_0_S_AXI_CTRL_BASEADDR 0xFFFFFFFFU
Xil_L1DCacheDisable() microblaze_disable_dcache()
Xil_L1DCacheFlushRange(Addr,Len) microblaze_invalidate_dcache_range((Addr), (Len))
__UINT_LEAST8_MAX__ 0xff
XAXIDMA_BD_TDEST_FIELD_SHIFT 0
XPAR_MICROBLAZE_DCACHE_VICTIMS 0
__UINT32_MAX__ 0xffffffffUL
_MACHSTDLIB_H_ 
__INT_LEAST8_MAX__ 0x7f
WINT_MAX (__WINT_MAX__)
_stdin_r(x) ((x)->_stdin)
_stderr_r(x) ((x)->_stderr)
getfsl_interruptible(val,id) asm volatile("\n1:\n\tnget\t%0,rfsl" stringify(id) "\n\t" "addic\tr18,r0,0\n\t" "bnei\tr18,1b\n" : "=d"(val)::"r18")
__INT64_C(c) c ## LL
XAxiDma_Out32 Xil_Out32
XPAR_INTC_0_INTC_TYPE 0U
XPAR_XSPIPS_0_BASEADDR 0xE0006000
__GNUC_PATCHLEVEL__ 0
FirstBdAddr
INT32_MAX (__INT32_MAX__)
init_uart
init_platform
disable_caches
cleanup_platform
../src/platform.c
enable_caches
Mm2SBurstSize
BaseAddr
u32NrSamples
S2MmDataWidth
PWM_H 
S2MmNumChannels
PWM_AXI_PERIOD_REG_OFFSET 8
Mm2sNumChannels
setLED
PWM_mReadReg(BaseAddress,RegOffset) Xil_In32((BaseAddress) + (RegOffset))
S2MmBurstSize
Xil_ExceptionHandler
HasMm2SDRE
XAxiDma_Config
SetUpInterruptSystem
pCfgPtr
Mm2SDataWidth
HasS2MmDRE
PWM_AXI_CTRL_REG_OFFSET 0
../src/util.c
fnConfigDma
XStatus
PWM_mWriteReg(BaseAddress,RegOffset,Data) Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
hdlr
PWM_AXI_DUTY_REG_OFFSET 64
enableLED
XIntcInstancePtr
fnAudioPlay
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/bin/../lib/gcc/microblaze-xilinx-elf/6.2.0/../../../../microblaze-xilinx-elf/lib/le/crt0.o
_vector_sw_exception
_vector_interrupt
_vector_hw_exception
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/bin/../lib/gcc/microblaze-xilinx-elf/6.2.0/le/crtbegin.o
__CTOR_LIST__
__DTOR_LIST__
deregister_tm_clones
__do_global_dtors_aux
completed.5083
dtor_idx.5085
frame_dummy
object.5095
lib_a-mallocr.o
malloc_extend_top
sbrk.o
heap_ptr
/opt/Xilinx/SDK/2017.4/gnu/microblaze/lin/bin/../lib/gcc/microblaze-xilinx-elf/6.2.0/le/crtend.o
__CTOR_END__
__do_global_ctors_aux
./src/main.o
sAxiDma
InterruptProcessed
InterruptController
xil_printf.o
getnum
padding.part.0
outnum
xintc.o
StubHandler
xil_assert.o
Xil_AssertCallbackRoutine
lib_a-ctype_.o
_ctype_b
lib_a-impure.o
impure_data
__sdata_start
__sbss2_end
__sdata2_start
strcpy
PROVISIONED_PINS
___CTORS_LIST___
PROVISIONED_RIDS
Xil_MemCpy
microblaze_enable_dcache
__malloc_unlock
MB_InterruptVectorTable
Xil_Assert
enable_caches
memmove
XUartPs_SendByte
__errno
Xil_ExceptionInit
__sbss_start
XIntc_BitPosMask
usleep
is_provisioned_rid
is_provisioned_uid
XIntc_ConfigTable
memcpy
__TMC_END__
USERNAMES
__DTOR_END__
init_platform
__rodata_end
XIntc_DeviceInterruptHandler
malloc
__udivsi3
XIntc_Start
__malloc_top_pad
is_locked
init_uart
_sbrk_r
_crtinit
__malloc_max_sbrked_mem
_heap_end
_global_impure_ptr
REGION_NAMES
__bss_end
__tbss_start
myISR
XAxiDma_ConfigTable
PWM_Set_Period
BLUE
Xil_ExceptionRegisterHandler
PWM_Set_Duty
__init
Xil_AssertWait
_heap_start
__sbss_end
XNullHandler
microblaze_register_handler
xil_printf
__umodsi3
PWM_Enable
XAxiDma_Busy
login
uid_to_username
__sbss2_start
share_song
_free_r
__call_exitprocs
USER_IDS
gen_song_md
__malloc_sbrk_base
play_song
__rodata_start
rid_to_region_name
_SDA_BASE_
SetUpInterruptSystem
PROVISIONED_UIDS
GREEN
__data_end
__mulsi3
__malloc_current_mallinfo
query_song
username_to_uid
__malloc_av_
outbyte
__malloc_lock
sbrk
query_player
__bss_start
_STACK_SIZE
__tdata_start
__tdata_end
fnAudioPlay
load_song_md
memset
main
XAxiDma_SimpleTransfer
__malloc_max_total_mem
_HEAP_SIZE
_malloc_r
_start1
_stack_end
Xil_AssertStatus
__sdata_end
_malloc_trim_r
___DTORS_LIST___
strcmp
XAxiDma_CfgInitialize
logout
XIntc_InterruptHandler
__fini
XAxiDma_Reset
__sdata2_end
XIntc_Connect
XIntc_Enable
setLED
___CTORS_END___
fnConfigDma
__stack
Xil_ExceptionEnable
__malloc_trim_threshold
_heap
_hw_exception_handler
microblaze_enable_interrupts
microblaze_enable_icache
__ctype_ptr__
XIntc_Initialize
__tbss_end
_ctype_
_program_init
_exit
XAxiDma_LookupConfig
strlen
XAxiDma_ResetIsDone
__data_start
_program_clean
REGION_IDS
_SDA2_BASE_
digital_out
enableLED
free
YELLOW
__interrupt_handler
.symtab
.strtab
.shstrtab
.vectors.reset
.vectors.sw_exception
.vectors.interrupt
.vectors.hw_exception
.text
.init
.fini
.ctors
.dtors
.rodata
.sdata2
.data
.sdata
.sbss
.bss
.heap
.stack
.debug_frame
.debug_info
.debug_abbrev
.debug_aranges
.debug_ranges
.debug_macro
.debug_line
.debug_str
```
### New Flags


```
dy`0
p)`0`
@x`2
!0""
MB> Could not find region ID '%d'
<unknown region>
MB> Could not find region name '%s'
MB> Could not find uid '%d'
<unknown user>
MB> Could not find username '%s'
MB> No user logged in
MB> User '%s' does not have access to this song
MB> User '%s' has access to this song
MB> Region Match. Full Song can be played. Unlocking...
MB> Invalid region
MB> Already logged in. Please log out first.
MB> Logged in for user '%s'
MB> Incorrect pin for user '%s'
MB> User not found
MB> Logging out...
MB> Not logged in
MB> Queried player (%d regions, %d users)
MB> Queried song (%d regions, %d users)
MB> No user is logged in. Cannot share song
MB> User '%s' is not song's owner. Cannot share song
MB> Username not found
MB> Shared song with '%s'
MB> Reading Audio File...
MB> Song length = %dB
MB> Song is locked.  Playing only %ds = %dB
MB> Song is unlocked. Playing full song
MB> Pausing... 
MB> Resuming... 
MB> Stopping playback...
MB> Restarting song... 
MB> Only playing 30 seconds
MB> 
MB> Dumping song (%dB)...
MB> Song dump finished
MB> DMA configuration ERROR
MB> Audio DRM Module has Booted
MB> Done Playing Song
1234567890
00000000
0987654321
drew
misha
United States
Japan
Australia
MB> No config found for %d
MB> Initialization failed %d
MB> Device configured as SG mode
0123456789ABCDEF
xintc_intr.c
xintc.c
         (((((                  
AAAAAA
BBBBBB
         (((((                  
AAAAAA
BBBBBB
.shstrtab
.vectors.reset
.vectors.sw_exception
.vectors.interrupt
.vectors.hw_exception
.text
.init
.fini
.ctors
.dtors
.rodata
.sdata2
.data
.sdata
.sbss
.bss
.heap
.stack
```
## gdb info functions
### original
```
All defined functions:

File ../src/main.c:
void digital_out();
int gen_song_md(char *);
int is_locked();
int is_provisioned_rid(char);
int is_provisioned_uid(char);
void load_song_md();
void login();
void logout();
int main();
void myISR(void);
void play_song();
void query_player();
void query_song();
int region_name_to_rid(char *, char *, int);
int rid_to_region_name(char, char **, int);
void share_song();
int uid_to_username(char, char **, int);
int username_to_uid(char *, char *, int);

File ../src/platform.c:
void cleanup_platform();
void disable_caches();
void enable_caches();
void init_platform();
void init_uart();

File ../src/util.c:
int SetUpInterruptSystem(XIntc *, XInterruptHandler);
void enableLED(u32 *);
u32 fnAudioPlay(XAxiDma, u32, u32);
XStatus fnConfigDma(XAxiDma *);
void setLED(u32 *, struct color);

Non-debugging symbols:
0x00006764  __interrupt_handler
0x00006764  _interrupt_handler
0x00006808  microblaze_register_handler
0x0000681c  usleep
0x00006844  Xil_ExceptionInit
0x0000684c  Xil_ExceptionEnable
0x0000686c  Xil_ExceptionRegisterHandler
0x00006894  Xil_MemCpy
0x00006904  getnum
0x00006980  padding.part
0x000069d8  outnum
0x00006be4  xil_printf
0x00007014  XAxiDma_Reset
0x00007178  XAxiDma_ResetIsDone
0x000071c4  XAxiDma_CfgInitialize
0x00007634  XAxiDma_Busy
0x0000766c  XAxiDma_SimpleTransfer
---Type <return> to continue, or q <return> to quit---
0x000077e0  XAxiDma_LookupConfig
0x00007808  PWM_Set_Period
0x00007814  PWM_Set_Duty
0x0000782c  PWM_Enable
0x0000783c  XIntc_InterruptHandler
0x00007898  XIntc_DeviceInterruptHandler
0x00007a2c  StubHandler
0x00007a7c  XIntc_Initialize
0x00007c90  XIntc_Start
0x00007d98  XIntc_Connect
0x00007e90  XIntc_Enable
0x00007f5c  outbyte
0x00007f88  Xil_Assert
0x00007fd0  XNullHandler
0x00007fd8  XUartPs_SendByte
0x00007ff4  __errno
0x00008004  __init
0x00008040  __fini
```
### new compiler flags

```
All defined functions:
```


```
dy`0
p)`0`
@x`2
!0""
MB> Could not find region ID '%d'
<unknown region>
MB> Could not find region name '%s'
MB> Could not find uid '%d'
<unknown user>
MB> Could not find username '%s'
MB> No user logged in
MB> User '%s' does not have access to this song
MB> User '%s' has access to this song
MB> Region Match. Full Song can be played. Unlocking...
MB> Invalid region
MB> Already logged in. Please log out first.
MB> Logged in for user '%s'
MB> Incorrect pin for user '%s'
MB> User not found
MB> Logging out...
MB> Not logged in
MB> Queried player (%d regions, %d users)
MB> Queried song (%d regions, %d users)
MB> No user is logged in. Cannot share song
MB> User '%s' is not song's owner. Cannot share song
MB> Username not found
MB> Shared song with '%s'
MB> Reading Audio File...
MB> Song length = %dB
MB> Song is locked.  Playing only %ds = %dB
MB> Song is unlocked. Playing full song
MB> Pausing... 
MB> Resuming... 
MB> Stopping playback...
MB> Restarting song... 
MB> Only playing 30 seconds
MB> 
MB> Dumping song (%dB)...
MB> Song dump finished
MB> DMA configuration ERROR
MB> Audio DRM Module has Booted
MB> Done Playing Song
1234567890
00000000
0987654321
drew
misha
United States
Japan
Australia
MB> No config found for %d
MB> Initialization failed %d
MB> Device configured as SG mode
0123456789ABCDEF
xintc_intr.c
xintc.c
         (((((                  
AAAAAA
BBBBBB
         (((((                  
AAAAAA
BBBBBB
.shstrtab
.vectors.reset
.vectors.sw_exception
.vectors.interrupt
.vectors.hw_exception
.text
.init
.fini
.ctors
.dtors
.rodata
.sdata2
.data
.sdata
.sbss
.bss
.heap
.stack
```
## gdb info functions
### original
```
All defined functions:

File ../src/main.c:
void digital_out();
int gen_song_md(char *);
int is_locked();
int is_provisioned_rid(char);
int is_provisioned_uid(char);
void load_song_md();
void login();
void logout();
int main();
void myISR(void);
void play_song();
void query_player();
void query_song();
int region_name_to_rid(char *, char *, int);
int rid_to_region_name(char, char **, int);
void share_song();
int uid_to_username(char, char **, int);
int username_to_uid(char *, char *, int);

File ../src/platform.c:
void cleanup_platform();
void disable_caches();
void enable_caches();
void init_platform();
void init_uart();

File ../src/util.c:
int SetUpInterruptSystem(XIntc *, XInterruptHandler);
void enableLED(u32 *);
u32 fnAudioPlay(XAxiDma, u32, u32);
XStatus fnConfigDma(XAxiDma *);
void setLED(u32 *, struct color);

Non-debugging symbols:
0x00006764  __interrupt_handler
0x00006764  _interrupt_handler
0x00006808  microblaze_register_handler
0x0000681c  usleep
0x00006844  Xil_ExceptionInit
0x0000684c  Xil_ExceptionEnable
0x0000686c  Xil_ExceptionRegisterHandler
0x00006894  Xil_MemCpy
0x00006904  getnum
0x00006980  padding.part
0x000069d8  outnum
0x00006be4  xil_printf
0x00007014  XAxiDma_Reset
0x00007178  XAxiDma_ResetIsDone
0x000071c4  XAxiDma_CfgInitialize
0x00007634  XAxiDma_Busy
0x0000766c  XAxiDma_SimpleTransfer
---Type <return> to continue, or q <return> to quit---
0x000077e0  XAxiDma_LookupConfig
0x00007808  PWM_Set_Period
0x00007814  PWM_Set_Duty
0x0000782c  PWM_Enable
0x0000783c  XIntc_InterruptHandler
0x00007898  XIntc_DeviceInterruptHandler
0x00007a2c  StubHandler
0x00007a7c  XIntc_Initialize
0x00007c90  XIntc_Start
0x00007d98  XIntc_Connect
0x00007e90  XIntc_Enable
0x00007f5c  outbyte
0x00007f88  Xil_Assert
0x00007fd0  XNullHandler
0x00007fd8  XUartPs_SendByte
0x00007ff4  __errno
0x00008004  __init
0x00008040  __fini
```
### new compiler flags

```
All defined functions:
```
