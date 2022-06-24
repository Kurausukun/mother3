OUTPUT_ARCH(arm)

gNumMusicPlayers = 10;
gMaxLines = 0;

MEMORY {
    ewram (w!x) : ORIGIN = 0x02000000, LENGTH = 256K
    iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
    rom (rx) : ORIGIN = 0x08000000, LENGTH = 34M
}

SECTIONS
{
    ewram (NOLOAD) : ALIGN(4)
    {
        INCLUDE "sym_ewram.txt"
    } >ewram

    iwram (NOLOAD) : ALIGN(4)
    {
        INCLUDE "sym_iwram.txt"
    } >iwram

    rom : ALIGN(4)
	{
        FILL(0)
        asm/crt0.o(.text);
        src/main.o(.text);
        asm/rom.o(.text);
        src/overworld/script.o(.text);
        asm/code_0801BEE0.o(.text);
        src/common.o(.text);
        asm/code_0805C1DC.o(.text);
        src/battle/system.o(.text);
        asm/battle_misc.o(.text);
        src/battle.o(.text);
        asm/battle.o(.text);
        asm/guest.o(.text);
        src/battle/guest.o(.text);
        src/battle/guestFactory.o(.text);
        asm/goods.o(.text);
        src/battle/goods.o(.text);
        asm/sndmon.o(.text);
        asm/code_0805D74C.o(.text);
        src/singleton.o(.text);
        src/base.o(.text);
        asm/gcc_fcvt.o(.text);
        asm/gcc_fcvt2.o(.text);
        src/allocator.o(.text);
        src/battle/irc.o(.text);
        src/battle/clock.o(.text);
        src/battle/clock_2.o(.text);
        asm/gengine.o(.text);
        asm/bgengine.o(.text);
        asm/objengine.o(.text);
        asm/objchrpool.o(.text);
        asm/objpltpool.o(.text);
        asm/keypad.o(.text);
        src/battle/keypad.o(.text);
        asm/fntsystem.o(.text);
        asm/rassystem.o(.text);
        asm/efcsystem.o(.text);
        asm/sndsystem.o(.text);
        asm/keyfocusmanager.o(.text);
        src/battle/battleData.o(.text);
        asm/rhythm.o(.text);
        src/battle/unit.o(.text);
        src/battle/unitTarget.o(.text);
        asm/rom2.o(.text);
        src/battle/action.o(.text);
        src/battle/player.o(.text);
        asm/player.o(.text);
        asm/playerskill.o(.text);
        src/battle/guestSkill.o(.text);
        asm/monster.o(.text);
        asm/monsterskill.o(.text);
        asm/psi.o(.text);
        asm/rom2d.o(.text);
        src/battle/archive.o(.text);
        asm/rom2e.o(.text);

        asm/m4a_1.o(.text);
        src/m4a.o(.text);
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

        *libc.a:*(.text);

        src/rom3.o(.text);
        asm/rom3a.o(.text);
        asm/rom3.o(.text);
        src/battle/goods2.o(.text);
        src/battle/goodsImpl.o(.text);
        src/battle/goods2.o(.gnu.linkonce.t.dg_3__12DefaultGoods);
        src/battle/goods2.o(.gnu.linkonce.t.isConsumable__C12DefaultGoodsP4Unit);
        src/battle/goods2.o(.gnu.linkonce.t.hitChance__C12DefaultGoods);
        src/battle/goods2.o(.gnu.linkonce.t.dg_2__12DefaultGoodsP4Unit);
        src/battle/goods2.o(.gnu.linkonce.t.action_a0__12DefaultGoodsP4Unit);
        src/battle/goods2.o(.gnu.linkonce.t.isResisted__12DefaultGoodsP4Unit);
        src/battle/goods2.o(.gnu.linkonce.t.dogTax__12DefaultGoods);
        src/battle/goods2.o(.gnu.linkonce.t.tellUseMessage__12DefaultGoods);
        src/battle/goods2.o(.gnu.linkonce.t._._12DefaultGoods);

        asm/rom3b.o(.text);
        src/inst.o(.text);
        asm/rom4.o(.text);

        data/data1.o(.rodata);
        src/data/playerSkillData.o(.rodata);
        src/data/guestSkillData.o(.rodata);
        src/data/monsterData.o(.rodata);
        src/data/monsterSkillData.o(.rodata);
        data/data1b.o(.rodata);
        data/data2.o(.rodata);

        *libc.a:impure.o(.rodata);
        *libc.a:syscalls.o(.rodata);
        *libc.a:vfprintf.o(.rodata);
        *libc.a:dtoa.o(.rodata);
        *libc.a:locale.o(.rodata);
        *libc.a:mprec.o(.rodata);

        *.o(.rodata);

        data/data3.o(.data);
        assets/misctext.o(.data);
        data/data3a.o(.data);
        assets/mainscript.o(.data);
        data/data4.o(.data);

        *libc.a:impure.o(.data);
        *libc.a:mallocr.o(.data);
        *libc.a:locale.o(.data);

        data/vtables.o(.data);
     } >rom = 0

    endl__FR7ostream = 0;
    .LI1_809 = 0;

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
