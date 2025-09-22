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
        build/mother3/asm/crt0.o(.text);
        build/mother3/src/main.o(.text);
        build/mother3/src/rom.o(.text);
        build/mother3/src/overworld/script.o(.text);
        build/mother3/src/code_08021920.o(.text);
        build/mother3/asm/code_0803D0E4.o(.text);
        build/mother3/src/code_0803D59C.o(.text);
        build/mother3/src/common.o(.text);
        build/mother3/src/battle/system.o(.text);
        build/mother3/src/battle/battle_misc.o(.text);
        build/mother3/src/battle/battle.o(.text);
        build/mother3/src/battle/guest.o(.text);
        build/mother3/src/battle/guestFactory.o(.text);
        build/mother3/src/battle/goods.o(.text);
        build/mother3/src/battle/sndmon.o(.text);
        build/mother3/src/battle/code_0805D74C.o(.text);
        build/mother3/src/singleton.o(.text);
        build/mother3/src/base.o(.text);
        build/mother3/asm/gcc_fcvt.o(.text);
        build/mother3/asm/gcc_fcvt2.o(.text);
        build/mother3/src/allocator.o(.text);
        build/mother3/src/battle/irc.o(.text);
        build/mother3/src/battle/clock.o(.text);
        build/mother3/src/battle/fader.o(.text);
        build/mother3/src/battle/gengine.o(.text);
        build/mother3/src/battle/bgengine.o(.text);
        build/mother3/src/battle/objengine.o(.text);
        build/mother3/src/battle/objchrpool.o(.text);
        build/mother3/src/battle/objpltpool.o(.text);
        build/mother3/src/battle/keypad.o(.text);
        build/mother3/src/battle/fntsystem.o(.text);
        build/mother3/src/battle/rassystem.o(.text);
        build/mother3/src/battle/efcsystem.o(.text);
        build/mother3/src/battle/sndsystem.o(.text);
        build/mother3/src/battle/keyfocusmanager.o(.text);
        build/mother3/src/battle/battleData.o(.text);
        build/mother3/src/battle/rhythm.o(.text);
        build/mother3/src/battle/unit.o(.text);
        build/mother3/src/battle/unitTarget.o(.text);
        build/mother3/src/battle/rom2.o(.text);
        build/mother3/src/battle/action.o(.text);
        build/mother3/src/battle/player.o(.text);
        build/mother3/src/battle/playerskill.o(.text);
        build/mother3/src/battle/guestSkill.o(.text);
        build/mother3/src/battle/monster.o(.text);
        build/mother3/src/battle/monsterskill.o(.text);
        build/mother3/src/battle/psi.o(.text);
        build/mother3/src/battle/rom2d.o(.text);
        build/mother3/src/battle/archive.o(.text);
        build/mother3/src/battle/rom2e.o(.text);

        build/mother3/asm/m4a_1.o(.text);
        build/mother3/src/m4a.o(.text);
        build/mother3/asm/libc.o(.text);

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

        *.o(.gnu.linkonce.t._._6ResPtr);
        build/mother3/src/rom3.o(.text);
        build/mother3/src/rom3a0.o(.text);
        build/mother3/src/rom3a1.o(.text);
        build/mother3/asm/monsterImplTmp.o(.text);
        build/mother3/src/battle/monsterImpl.o(.text);
        build/mother3/src/rom3aa.o(.text);
        build/mother3/src/battle/monsterImpl2.o(.text);
        build/mother3/src/rom3ab.o(.text);
        build/mother3/src/battle/goods2.o(.text);
        build/mother3/src/battle/goodsImpl.o(.text);
        build/mother3/src/battle/goods2.o(.gnu.linkonce.t.*);

        build/mother3/src/rom3b.o(.text);
        build/mother3/src/inst.o(.text);
        build/mother3/asm/rom4.o(.text);

        build/mother3/data/data1.o(.rodata);
        build/mother3/src/data/playerSkillData.o(.rodata);
        build/mother3/src/data/guestSkillData.o(.rodata);
        build/mother3/src/data/monsterData.o(.rodata);
        build/mother3/src/data/monsterSkillData.o(.rodata);
        build/mother3/data/data1b.o(.rodata);
        build/mother3/data/data2.o(.rodata);
		build/mother3/src/m4a_tables.o(.rodata);
		build/mother3/data/sound_data.o(.rodata);
		build/mother3/data/temp.o(.rodata);

        *libc.a:impure.o(.rodata);
        *libc.a:syscalls.o(.rodata);
        *libc.a:vfprintf.o(.rodata);
        *libc.a:dtoa.o(.rodata);
        *libc.a:locale.o(.rodata);
        *libc.a:mprec.o(.rodata);

        *.o(.rodata);

        build/mother3/data/data3.o(.data);
        build/mother3/assets/misctext.o(.data);
        build/mother3/data/data3a.o(.data);
        build/mother3/assets/mainscript.o(.data);
        build/mother3/data/data4.o(.data);

        *libc.a:impure.o(.data);
        *libc.a:mallocr.o(.data);
        *libc.a:locale.o(.data);

        build/mother3/data/vtables.o(.data);
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
