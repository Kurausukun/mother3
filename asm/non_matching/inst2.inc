.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start init__16FntSystemManager
init__16FntSystemManager: @ 0x080C143C
	push {lr}
	movs r0, #0xa4
	bl __builtin_new
	bl __9FntSystem
	pop {r1}
	bx r1

	thumb_func_start getName__16FntSystemManager
getName__16FntSystemManager: @ 0x080C144C
	ldr r0, _080C1450 @ =const_classname_FntSystem
	bx lr
	.align 2, 0
_080C1450: .4byte const_classname_FntSystem

	thumb_func_start init__16RasSystemManager
init__16RasSystemManager: @ 0x080C1454
	push {lr}
	movs r0, #0x38
	bl __builtin_new
	bl __9RasSystem
	pop {r1}
	bx r1

	thumb_func_start getName__16RasSystemManager
getName__16RasSystemManager: @ 0x080C1464
	ldr r0, _080C1468 @ =const_classname_RasSystem
	bx lr
	.align 2, 0
_080C1468: .4byte const_classname_RasSystem

	thumb_func_start init__16EfcSystemManager
init__16EfcSystemManager: @ 0x080C146C
	push {lr}
	movs r0, #0x40
	bl __builtin_new
	bl __9EfcSystem
	pop {r1}
	bx r1

	thumb_func_start getName__16EfcSystemManager
getName__16EfcSystemManager: @ 0x080C147C
	ldr r0, _080C1480 @ =const_classname_EfcSystem
	bx lr
	.align 2, 0
_080C1480: .4byte const_classname_EfcSystem

	thumb_func_start init__16SndSystemManager
init__16SndSystemManager: @ 0x080C1484
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __9SndSystem
	pop {r1}
	bx r1

	thumb_func_start getName__16SndSystemManager
getName__16SndSystemManager: @ 0x080C1494
	ldr r0, _080C1498 @ =const_classname_SndSystem
	bx lr
	.align 2, 0
_080C1498: .4byte const_classname_SndSystem

	thumb_func_start init__22KeyFocusManagerManager
init__22KeyFocusManagerManager: @ 0x080C149C
	push {lr}
	movs r0, #0x2c
	bl __builtin_new
	bl __15KeyFocusManager
	pop {r1}
	bx r1

	thumb_func_start getName__22KeyFocusManagerManager
getName__22KeyFocusManagerManager: @ 0x080C14AC
	ldr r0, _080C14B0 @ =const_classname_KeyFocusManager
	bx lr
	.align 2, 0
_080C14B0: .4byte const_classname_KeyFocusManager

	thumb_func_start init__13RhythmOutRTTI
init__13RhythmOutRTTI: @ 0x080C14B4
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C14D0 @ =_vt.9RhythmOut
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C14D0: .4byte _vt.9RhythmOut

	thumb_func_start getName__13RhythmOutRTTI
getName__13RhythmOutRTTI: @ 0x080C14D4
	ldr r0, _080C14D8 @ =const_classname_RhythmOut
	bx lr
	.align 2, 0
_080C14D8: .4byte const_classname_RhythmOut

	thumb_func_start _._9RhythmOut
_._9RhythmOut: @ 0x080C14DC
	push {lr}
	ldr r2, _080C14EC @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C14EC: .4byte _vt.5Event

	thumb_func_start init__12RhythmInRTTI
init__12RhythmInRTTI: @ 0x080C14F0
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080C150C @ =_vt.8RhythmIn
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080C150C: .4byte _vt.8RhythmIn

	thumb_func_start getName__12RhythmInRTTI
getName__12RhythmInRTTI: @ 0x080C1510
	ldr r0, _080C1514 @ =const_classname_RhythmIn
	bx lr
	.align 2, 0
_080C1514: .4byte const_classname_RhythmIn

	thumb_func_start _._8RhythmIn
_._8RhythmIn: @ 0x080C1518
	push {lr}
	ldr r2, _080C1528 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1528: .4byte _vt.5Event

	thumb_func_start init__13RhythmBgmRTTI
init__13RhythmBgmRTTI: @ 0x080C152C
	push {lr}
	movs r0, #0x60
	bl __builtin_new
	bl __9RhythmBgm
	pop {r1}
	bx r1

	thumb_func_start getName__13RhythmBgmRTTI
getName__13RhythmBgmRTTI: @ 0x080C153C
	ldr r0, _080C1540 @ =const_classname_RhythmBgm
	bx lr
	.align 2, 0
_080C1540: .4byte const_classname_RhythmBgm

	thumb_func_start init__11UnitDieRTTI
init__11UnitDieRTTI: @ 0x080C1544
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __7UnitDie
	pop {r1}
	bx r1

	thumb_func_start getName__11UnitDieRTTI
getName__11UnitDieRTTI: @ 0x080C1554
	ldr r0, _080C1558 @ =const_classname_UnitDie
	bx lr
	.align 2, 0
_080C1558: .4byte const_classname_UnitDie

	thumb_func_start _._7UnitDie
_._7UnitDie: @ 0x080C155C
	push {lr}
	ldr r2, _080C156C @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C156C: .4byte _vt.5Event

	thumb_func_start init__14UnitEscapeRTTI
init__14UnitEscapeRTTI: @ 0x080C1570
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __10UnitEscape
	pop {r1}
	bx r1

	thumb_func_start getName__14UnitEscapeRTTI
getName__14UnitEscapeRTTI: @ 0x080C1580
	ldr r0, _080C1584 @ =const_classname_UnitEscape
	bx lr
	.align 2, 0
_080C1584: .4byte const_classname_UnitEscape

	thumb_func_start _._10UnitEscape
_._10UnitEscape: @ 0x080C1588
	push {lr}
	ldr r2, _080C1598 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1598: .4byte _vt.5Event

	thumb_func_start init__14UnitReviveRTTI
init__14UnitReviveRTTI: @ 0x080C159C
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __10UnitRevive
	pop {r1}
	bx r1

	thumb_func_start getName__14UnitReviveRTTI
getName__14UnitReviveRTTI: @ 0x080C15AC
	ldr r0, _080C15B0 @ =const_classname_UnitRevive
	bx lr
	.align 2, 0
_080C15B0: .4byte const_classname_UnitRevive

	thumb_func_start _._10UnitRevive
_._10UnitRevive: @ 0x080C15B4
	push {lr}
	ldr r2, _080C15C4 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C15C4: .4byte _vt.5Event

	thumb_func_start init__12UnitJoinRTTI
init__12UnitJoinRTTI: @ 0x080C15C8
	push {lr}
	movs r0, #0x24
	bl __builtin_new
	bl __8UnitJoin
	pop {r1}
	bx r1

	thumb_func_start getName__12UnitJoinRTTI
getName__12UnitJoinRTTI: @ 0x080C15D8
	ldr r0, _080C15DC @ =const_classname_UnitJoin
	bx lr
	.align 2, 0
_080C15DC: .4byte const_classname_UnitJoin

	thumb_func_start _._8UnitJoin
_._8UnitJoin: @ 0x080C15E0
	push {lr}
	ldr r2, _080C15F0 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C15F0: .4byte _vt.5Event

	thumb_func_start init__10ResumeRTTI
init__10ResumeRTTI: @ 0x080C15F4
	push {lr}
	movs r0, #0x20
	bl __builtin_new
	bl __6Resume
	pop {r1}
	bx r1

	thumb_func_start getName__10ResumeRTTI
getName__10ResumeRTTI: @ 0x080C1604
	ldr r0, _080C1608 @ =const_classname_Resume
	bx lr
	.align 2, 0
_080C1608: .4byte const_classname_Resume

	thumb_func_start _._6Resume
_._6Resume: @ 0x080C160C
	push {lr}
	ldr r2, _080C161C @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C161C: .4byte _vt.5Event

	thumb_func_start init__11SuspendRTTI
init__11SuspendRTTI: @ 0x080C1620
	push {lr}
	movs r0, #0x20
	bl __builtin_new
	bl __7Suspend
	pop {r1}
	bx r1

	thumb_func_start getName__11SuspendRTTI
getName__11SuspendRTTI: @ 0x080C1630
	ldr r0, _080C1634 @ =const_classname_Suspend
	bx lr
	.align 2, 0
_080C1634: .4byte const_classname_Suspend

	thumb_func_start _._7Suspend
_._7Suspend: @ 0x080C1638
	push {lr}
	ldr r2, _080C1648 @ =_vt.5Event
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_080C1648: .4byte _vt.5Event

	thumb_func_start _._6Object
_._6Object: @ 0x080C164C
	push {lr}
	adds r2, r0, #0
	ldr r0, _080C1668 @ =_vt.6Object
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1662
	adds r0, r2, #0
	bl __builtin_delete
_080C1662:
	pop {r0}
	bx r0
	.align 2, 0
_080C1668: .4byte _vt.6Object

	thumb_func_start init__10PlayerRTTI
init__10PlayerRTTI: @ 0x080C166C
	push {lr}
	movs r0, #0x87
	lsls r0, r0, #2
	bl __builtin_new
	bl __6Player
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start getName__10PlayerRTTI
getName__10PlayerRTTI: @ 0x080C1680
	ldr r0, _080C1684 @ =const_classname_Player
	bx lr
	.align 2, 0
_080C1684: .4byte const_classname_Player

	thumb_func_start sub_080C1688
sub_080C1688: @ 0x080C1688
	push {lr}
	ldr r2, _080C1698 @ =vt_09F826C8
	str r2, [r0, #0x1c]
	bl sub_0807113C
	pop {r0}
	bx r0
	.align 2, 0
_080C1698: .4byte vt_09F826C8

	thumb_func_start sub_080C169C
sub_080C169C: @ 0x080C169C
	push {lr}
	ldr r2, _080C16AC @ =vt_09F82898
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_080C16AC: .4byte vt_09F82898

	thumb_func_start init__15PlayerSkillRTTI
init__15PlayerSkillRTTI: @ 0x080C16B0
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl __11PlayerSkill
	pop {r1}
	bx r1

	thumb_func_start getName__15PlayerSkillRTTI
getName__15PlayerSkillRTTI: @ 0x080C16C0
	ldr r0, _080C16C4 @ =const_classname_PlayerSkill
	bx lr
	.align 2, 0
_080C16C4: .4byte const_classname_PlayerSkill

	thumb_func_start init__14GuestSkillRTTI
init__14GuestSkillRTTI: @ 0x080C16C8
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl __10GuestSkill
	pop {r1}
	bx r1

	thumb_func_start getName__14GuestSkillRTTI
getName__14GuestSkillRTTI: @ 0x080C16D8
	ldr r0, _080C16DC @ =const_classname_GuestSkill
	bx lr
	.align 2, 0
_080C16DC: .4byte const_classname_GuestSkill

	thumb_func_start init__11MonsterRTTI
init__11MonsterRTTI: @ 0x080C16E0
	push {lr}
	movs r0, #0xa0
	lsls r0, r0, #1
	bl __builtin_new
	bl sub_08081C08
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start getName__11MonsterRTTI
getName__11MonsterRTTI: @ 0x080C16F4
	ldr r0, _080C16F8 @ =const_classname_Monster
	bx lr
	.align 2, 0
_080C16F8: .4byte const_classname_Monster

	thumb_func_start init__16MonsterSkillRTTI
init__16MonsterSkillRTTI: @ 0x080C16FC
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl __12MonsterSkill
	pop {r1}
	bx r1

	thumb_func_start getName__16MonsterSkillRTTI
getName__16MonsterSkillRTTI: @ 0x080C170C
	ldr r0, _080C1710 @ =const_classname_MonsterSkill
	bx lr
	.align 2, 0
_080C1710: .4byte const_classname_MonsterSkill

	thumb_func_start init__7PsiRTTI
init__7PsiRTTI: @ 0x080C1714
	push {lr}
	movs r0, #0x4c
	bl __builtin_new
	bl __3Psi
	pop {r1}
	bx r1

	thumb_func_start getName__7PsiRTTI
getName__7PsiRTTI: @ 0x080C1724
	ldr r0, _080C1728 @ =const_classname_Psi
	bx lr
	.align 2, 0
_080C1728: .4byte const_classname_Psi

	thumb_func_start sub_080C172C
sub_080C172C: @ 0x080C172C
	push {lr}
	ldr r2, _080C173C @ =vt_09F83E40
	str r2, [r0, #0x1c]
	bl sub_0808AE24
	pop {r0}
	bx r0
	.align 2, 0
_080C173C: .4byte vt_09F83E40

	thumb_func_start sub_080C1740
sub_080C1740: @ 0x080C1740
	push {lr}
	adds r2, r0, #0
	ldr r0, _080C175C @ =vt_09F84CA8
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1756
	adds r0, r2, #0
	bl __builtin_delete
_080C1756:
	pop {r0}
	bx r0
	.align 2, 0
_080C175C: .4byte vt_09F84CA8

	thumb_func_start sub_080C1760
sub_080C1760: @ 0x080C1760
	push {lr}
	bl sub_08089664
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C176C
sub_080C176C: @ 0x080C176C
	push {lr}
	ldr r2, _080C177C @ =vt_09F85378
	str r2, [r0, #0x1c]
	bl sub_080895C0
	pop {r0}
	bx r0
	.align 2, 0
_080C177C: .4byte vt_09F85378

	thumb_func_start sub_080C1780
sub_080C1780: @ 0x080C1780
	push {lr}
	adds r2, r0, #0
	ldr r0, _080C179C @ =vt_09F85E70
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C1796
	adds r0, r2, #0
	bl __builtin_delete
_080C1796:
	pop {r0}
	bx r0
	.align 2, 0
_080C179C: .4byte vt_09F85E70
    .syntax divided
