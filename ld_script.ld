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
        asm/rom.o(.text);
        src/script.o(.text);
        src/core/irc_2.o(.text);
        asm/code_0801BEE0.o(.text);
        src/core/system.o(.text);
        asm/code_0805D74C.o(.text);
        src/core/singleton.o(.text);
        src/core/base.o(.text);
        asm/code_080689D4.o(.text);
        src/core/fit.o(.text);
        asm/code_0806988C.o(.text);
        src/core/irc.o(.text);
        asm/rom2.o(.text);
        src/core/clock.o(.text);
        src/core/clock_2.o(.text);
        asm/rom2b.o(.text);
        src/keypad.o(.text);
        asm/rom2c.o(.text);
		asm/m4a_1.o(.text);
        asm/libc.o(.text);
		asm/rom3.o(.text);
        src/goods.o(.text);
        asm/rom3b.o(.text);
        src/core/inst.o(.text);
        asm/rom4.o(.text);
	} = 0

    .data :
	ALIGN(4)
    {
        data/data1.o(.data);
        data/data2.o(.data);
    } = 0
    _vt.15SystemAllocator = 0x09F44F28;
    _vt.3Unk = 0x09F44FF0;
    _vt.6System = 0x09F44F38;
    _vt.13SystemManager = 0x09F44FD8;
    _vt.9Singleton = 0x09F7EA90;
    __vt_5Goods = 0x09F797A0;
    _vt.4Base = 0x09F7EAA8;
    _vt.12FitAllocator = 0x09F7EB10;
    _vt.3Irc = 0x09f7eb20;
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
