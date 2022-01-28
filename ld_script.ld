OUTPUT_ARCH(arm)

gNumMusicPlayers = 4;

SECTIONS
{
    . = 0x02000000;
    EWRAM (NOLOAD) :
    ALIGN(4)
    {
        INCLUDE "sym_ewram.txt"
    }

    . = 0x03000000;
    IWRAM (NOLOAD) :
    ALIGN(4)
    {
        INCLUDE "sym_iwram.txt"
    }
    
	. = 0x08000000;
    .text :
	ALIGN(4)
	{
        asm/crt0.o(.text);
        src/main.o(.text);
        asm/rom.o(.text);
        src/script.o(.text);
        asm/code_0801BEE0.o(.text);
        src/core/system.o(.text);
        asm/battle.o(.text);
        asm/guest.o(.text);
        src/guest.o(.text);
        asm/goods.o(.text);
        asm/sndmon.o(.text);
        asm/code_0805D74C.o(.text);
        src/core/singleton.o(.text);
        src/core/base.o(.text);
        asm/gcc_fcvt.o(.text);
        src/core/fit.o(.text);
        src/core/irc.o(.text);
        src/core/clock.o(.text);
        src/core/clock_2.o(.text);
        asm/gengine.o(.text);
        asm/bgengine.o(.text);
        asm/objengine.o(.text);
        asm/objchrpool.o(.text);
        asm/objpltpool.o(.text);
        asm/keypad.o(.text);
        src/core/keypad.o(.text);
        asm/fntsystem.o(.text);
        asm/rassystem.o(.text);
        asm/efcsystem.o(.text);
        asm/sndsystem.o(.text);
        asm/keyfocusmanager.o(.text);
        asm/rhythm.o(.text);
        asm/unit.o(.text);
        src/core/unit.o(.text);
        asm/rom2.o(.text);
        src/skill.o(.text);
        asm/player.o(.text);
        asm/playerskill.o(.text);
        asm/guestskill.o(.text);
        src/guestskill.o(.text);
        asm/monster.o(.text);
        asm/monsterskill.o(.text);
        asm/psi.o(.text);
        asm/rom2d.o(.text);
		asm/m4a_1.o(.text);
        asm/libc.o(.text);
        *libc.a:libcfunc.o(.text);
        *libc.a:malloc.o(.text);
        *libc.a:mallocr.o(.text);
        *libc.a:memcpy.o(.text);
        *libc.a:memset.o(.text);
        *libc.a:mlock.o(.text);
        *libc.a:sbrkr.o(.text);
        *libc.a:strcmp.o(.text);
        *libc.a:syscalls.o(.text);
        *libc.a:vsprintf.o(.text);
        *libc.a:errno.o(.text);
        *libc.a:freer.o(.text);
        *libc.a:strlen.o(.text);
        *libc.a:vfprintf.o(.text);
        *libc.a:wsetup.o(.text);
        *libc.a:dtoa.o(.text);
        *libc.a:fflush.o(.text);
        *libc.a:findfp.o(.text);
        *libc.a:fvwrite.o(.text);
        *libc.a:fwalk.o(.text);
        *libc.a:locale.o(.text);
        *libc.a:makebuf.o(.text);
        *libc.a:mbtowc_r.o(.text);
        *libc.a:memchr.o(.text);
        *libc.a:memmove.o(.text);
        *libc.a:mprec.o(.text);
        *libc.a:s_isinf.o(.text);
        *libc.a:s_isnan.o(.text);
        *libc.a:stdio.o(.text);
        *libc.a:writer.o(.text);
        *libc.a:callocr.o(.text);
        *libc.a:closer.o(.text);
        *libc.a:fstatr.o(.text);
        *libc.a:lseekr.o(.text);
        *libc.a:readr.o(.text);
        src/rom3.o(.text);
        asm/rom3a.o(.text);
		asm/rom3.o(.text);
        src/goods2.o(.text);
        asm/rom3b.o(.text);
        src/core/inst.o(.text);
        asm/rom4.o(.text);
	} = 0

    .data :
	ALIGN(4)
    {

        data/data1.o(.data);
        data/data2.o(.data);

        *libc.a:syscalls.o(.rodata);
        *libc.a:vfprintf.o(.rodata);
        *libc.a:dtoa.o(.rodata);
        *libc.a:locale.o(.rodata);
        *libc.a:mprec.o(.rodata);

        data/data3.o(.data);
        data/vtables.o(.data);

    } = 0
    _vt.1D = 0x09f44f08;
    _vt.15SystemAllocator = 0x09F44F28;
    _vt.3Unk = 0x09F44FF0;
    _vt.6System = 0x09F44F38;
    _vt.13SystemManager = 0x09F44FD8;
    _vt.9Singleton = 0x09F7EA90;
    __vt_5Goods = 0x09F797A0;
    _vt.4Base = 0x09F7EAA8;
    _vt.12FitAllocator = 0x09F7EB10;
    _vt.3Irc = 0x09f7eb20;
    _vt.10IrcManager = 0x09f7eb88;
    _vt.5Clock = 0x09F7EBA0;
    _vt.12ClockManager = 0x09f7ec08;
    _vt.12PostSysClock = 0x09f7ec20;
    _vt.21PostSysClockSingleton = 0x09f7ec88;
    _vt.12PostAppClock = 0x09f7eca0;
    _vt.21PostAppClockSingleton = 0x09f7ed08;
    _vt.8AppClock = 0x09f7ed20;
    _vt.17AppClockSingleton = 0x09f7ed88;
    _vt.11PreAppClock = 0x09f7eda0;
    _vt.20PreAppClockSingleton = 0x09f7ee08;
    _vt.8SysClock = 0x09f7ee20;
    _vt.17SysClockSingleton = 0x09f7ee88;
    _vt.11PreSysClock = 0x09f7eea0;
    _vt.20PreSysClockSingleton = 0x09f7ef08;
    _vt.Q215struct_0806A57C1A = 0x09f7ef20;
    _vt.6KeyPad = 0x09f7fbb0;
    _vt.10UpKeyPress = 0x09f7fb30;
    _vt.12DownKeyPress = 0x09f7fa30;
    _vt.12LeftKeyPress = 0x09f7f930;
    _vt.13RightKeyPress = 0x09f7f830;
    _vt.9AKeyPress = 0x09f7f730;
    _vt.9BKeyPress = 0x09f7f630;
    _vt.9RKeyPress = 0x09f7f430;
    _vt.9LKeyPress = 0x09f7f530;
    _vt.13StartKeyPress = 0x09f7f330;
    _vt.14SelectKeyPress = 0x09f7f230;
    _vt.14UpKeyLongPress = 0x09f7fab0;
    _vt.16DownKeyLongPress = 0x09f7f9b0;
    _vt.16LeftKeyLongPress = 0x09f7f8b0;
    _vt.17RightKeyLongPress = 0x09f7f7b0;
    _vt.13AKeyLongPress = 0x09f7f6b0;
    _vt.13BKeyLongPress = 0x09f7f5b0;
    _vt.13LKeyLongPress = 0x09f7f4b0;
    _vt.13RKeyLongPress = 0x09f7f3b0;
    _vt.17StartKeyLongPress = 0x09f7f2b0;
    _vt.18SelectKeyLongPress = 0x09f7f1b0;
    _vt.4Unit.6Object = 0x09f81418;
    _vt.4Unit = 0x09f81490;
    _vt.6Object = 0x09f81a50;

    _impure_ptr = 0x09f44aac;

    __malloc_av_ = 0x09f44ab0;
    __malloc_top_pad = 0x09f44ebc;
    __malloc_current_mallinfo = 0x09f44ecc;
    __malloc_sbrk_base = 0x09f44ec0;
    __malloc_trim_threshold = 0x09f44eb8;
    __malloc_max_sbrked_mem = 0x09f44ec4;
    __malloc_max_total_mem = 0x09f44ec8;

    __mb_cur_max = 0x09f44ef4;

    __mprec_tens = 0x08cdb398;
    __mprec_bigtens = 0x08cdb460;

    endl__FR7ostream = 0;
    _t24__default_alloc_template2b0i0._S_free_list = 0;

    ROM_END = .;
    
    /* DWARF debug sections.
       Symbols in the DWARF debugging sections are relative to the beginning
       of the section so we begin them at 0.  */

    /* DWARF 1 */
    .debug          0 : { *(.debug) }
    .line           0 : { *(.line) }

    /* GNU DWARF 1 extensions */
    .debug_srcinfo  0 : { *(.debug_srcinfo) }
    .debug_sfnames  0 : { *(.debug_sfnames) }

    /* DWARF 1.1 and DWARF 2 */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }

    /* DWARF 2 */
    .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
