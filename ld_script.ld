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
        src/core/base.o(.text);
        asm/code_080689D4.o(.text);
        src/core/fit.o(.text);
        asm/rom2.o(.text);
        src/goods.o(.text);
        asm/rom3.o(.text);
	} = 0

    .data :
	ALIGN(4)
    {
        data/data1.o(.data);
        data/data2.o(.data);
    } = 0
    __vt_5Goods = 0x09F797A0;
    __vt_4Base = 0x09F7EAA8;
    __vt_12FitAllocator = 0x09F7EB10;

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
