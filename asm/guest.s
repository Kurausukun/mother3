.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_0805EE80
sub_0805EE80: @ 0x0805EE80
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805EE9C @ =vt_09F45058
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x60
	bl sub_08071F8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EE9C: .4byte vt_09F45058

	thumb_func_start sub_0805EEA0
sub_0805EEA0: @ 0x0805EEA0
	ldr r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0805EEA4
sub_0805EEA4: @ 0x0805EEA4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl __4Base
	ldr r0, _0805EEBC @ =_vt.11UnitTurnEnd
	str r0, [r4, #0x1c]
	str r5, [r4, #0x20]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EEBC: .4byte _vt.11UnitTurnEnd

	thumb_func_start sub_0805EEC0
sub_0805EEC0: @ 0x0805EEC0
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805EED4 @ =_vt.11UnitTurnEnd
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EED4: .4byte _vt.11UnitTurnEnd

	thumb_func_start sub_0805EED8
sub_0805EED8: @ 0x0805EED8
	ldr r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0805EEDC
sub_0805EEDC: @ 0x0805EEDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl __4Base
	ldr r0, _0805EEF4 @ =_vt.13UnitTurnBegin
	str r0, [r4, #0x1c]
	str r5, [r4, #0x20]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EEF4: .4byte _vt.13UnitTurnBegin

	thumb_func_start sub_0805EEF8
sub_0805EEF8: @ 0x0805EEF8
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805EF0C @ =_vt.13UnitTurnBegin
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF0C: .4byte _vt.13UnitTurnBegin

	thumb_func_start sub_0805EF10
sub_0805EF10: @ 0x0805EF10
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0805EF14
sub_0805EF14: @ 0x0805EF14
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl __4Base
	ldr r0, _0805EF30 @ =_vt.8RoundEnd
	str r0, [r5, #0x1c]
	strh r4, [r5, #0x20]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF30: .4byte _vt.8RoundEnd

	thumb_func_start sub_0805EF34
sub_0805EF34: @ 0x0805EF34
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805EF4C @ =_vt.8RoundEnd
	str r0, [r4, #0x1c]
	movs r0, #0
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF4C: .4byte _vt.8RoundEnd

	thumb_func_start sub_0805EF50
sub_0805EF50: @ 0x0805EF50
	ldrh r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_0805EF54
sub_0805EF54: @ 0x0805EF54
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl __4Base
	ldr r0, _0805EF70 @ =_vt.10RoundBegin
	str r0, [r5, #0x1c]
	strh r4, [r5, #0x20]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF70: .4byte _vt.10RoundBegin

	thumb_func_start sub_0805EF74
sub_0805EF74: @ 0x0805EF74
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805EF8C @ =_vt.10RoundBegin
	str r0, [r4, #0x1c]
	movs r0, #0
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF8C: .4byte _vt.10RoundBegin

	thumb_func_start sub_0805EF90
sub_0805EF90: @ 0x0805EF90
	push {r4, lr}
	movs r4, #0
_0805EF94:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0805EFD4 @ =sub_08097A0C
	bl sub_0805EFEC
	adds r4, #1
	cmp r4, #0x40
	bls _0805EF94
	ldr r1, _0805EFD8 @ =MasterEddyBattle_ctor
	movs r0, #0x32
	bl sub_0805EFEC
	ldr r1, _0805EFDC @ =PorkyBotBattle_ctor
	movs r0, #0x25
	bl sub_0805EFEC
	ldr r1, _0805EFE0 @ =PorkyBattle_ctor
	movs r0, #0x38
	bl sub_0805EFEC
	ldr r1, _0805EFE4 @ =MaskedManBattleA_ctor
	movs r0, #0x39
	bl sub_0805EFEC
	ldr r1, _0805EFE8 @ =MaskedManBattleB_ctor
	movs r0, #0x3a
	bl sub_0805EFEC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EFD4: .4byte sub_08097A0C
_0805EFD8: .4byte MasterEddyBattle_ctor
_0805EFDC: .4byte PorkyBotBattle_ctor
_0805EFE0: .4byte PorkyBattle_ctor
_0805EFE4: .4byte MaskedManBattleA_ctor
_0805EFE8: .4byte MaskedManBattleB_ctor

	thumb_func_start sub_0805EFEC
sub_0805EFEC: @ 0x0805EFEC
	lsls r0, r0, #0x10
	ldr r2, _0805EFF8 @ =gUnknown_02002018
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_0805EFF8: .4byte gUnknown_02002018

	thumb_func_start sub_0805EFFC
sub_0805EFFC: @ 0x0805EFFC
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0805F014 @ =gUnknown_02002018
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r1}
	bx r1
	.align 2, 0
_0805F014: .4byte gUnknown_02002018

	thumb_func_start sub_0805F018
sub_0805F018: @ 0x0805F018
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x48
	adds r5, r0, #0
	bl __4Base
	ldr r0, _0805F0AC @ =vt_09F466F0
	str r0, [r5, #0x1c]
	movs r0, #0
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	adds r0, r5, #0
	bl nullsub_26
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0805F0B0 @ =_vt.3Unk
	mov sb, r0
	ldr r0, _0805F0B4 @ =_vt.13ShowDownAsWin
	str r0, [sp, #0x20]
	ldr r0, _0805F0B8 @ =gUnknown_080F3870
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__12ClockManager
	mov r8, r0
	add r0, sp, #0x24
	bl __4Base
	ldr r0, _0805F0BC @ =_vt.8AppClock
	str r0, [sp, #0x40]
	add r6, sp, #0x24
	ldr r0, _0805F0C0 @ =gUnknown_080F3878
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, sb
	str r0, [sp, #0x40]
	adds r0, r6, #0
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x48
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805F0AC: .4byte vt_09F466F0
_0805F0B0: .4byte _vt.3Unk
_0805F0B4: .4byte _vt.13ShowDownAsWin
_0805F0B8: .4byte gUnknown_080F3870
_0805F0BC: .4byte _vt.8AppClock
_0805F0C0: .4byte gUnknown_080F3878

	thumb_func_start nullsub_26
nullsub_26: @ 0x0805F0C4
	bx lr
	.align 2, 0

	thumb_func_start sub_0805F0C8
sub_0805F0C8: @ 0x0805F0C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805F0F8 @ =vt_09F466F0
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	cmp r2, #0
	beq _0805F0E8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805F0E8:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F0F8: .4byte vt_09F466F0

	thumb_func_start sub_0805F0FC
sub_0805F0FC: @ 0x0805F0FC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r2, [r4, #0x24]
	cmp r2, #0
	beq _0805F11A
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805F11A:
	ldr r0, _0805F130 @ =0x00000544
	bl __builtin_new
	adds r1, r5, #0
	bl sub_0806EDF0
	str r0, [r4, #0x24]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F130: .4byte 0x00000544

	thumb_func_start sub_0805F134
sub_0805F134: @ 0x0805F134
	ldr r0, [r0, #0x24]
	bx lr

	thumb_func_start sub_0805F138
sub_0805F138: @ 0x0805F138
	movs r1, #1
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0

	thumb_func_start sub_0805F140
sub_0805F140: @ 0x0805F140
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _0805F1BA
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r6, r0, #0
	cmp r5, #0
	ble _0805F196
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r2, r1, #0
	adds r2, #0x98
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r3, r0, r1
	subs r0, r5, #4
	movs r1, #0
	cmp r1, r0
	bge _0805F18E
	adds r1, r0, #0
_0805F18E:
	ldr r2, [r2, #4]
	adds r0, r3, #0
	bl _call_via_r2
_0805F196:
	cmp r6, #0x9f
	bgt _0805F1BA
	ldr r0, [r4, #0x24]
	ldr r1, [r0, #0x1c]
	adds r2, r1, #0
	adds r2, #0xa0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r3, r0, r1
	adds r0, r6, #4
	movs r1, #0xa0
	cmp r1, r0
	ble _0805F1B2
	adds r1, r0, #0
_0805F1B2:
	ldr r2, [r2, #4]
	adds r0, r3, #0
	bl _call_via_r2
_0805F1BA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0805F1C0
sub_0805F1C0: @ 0x0805F1C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov r8, r0
	bl __4Base
	ldr r0, _0805F428 @ =vt_09F46768
	mov r1, r8
	str r0, [r1, #0x1c]
	mov r0, r8
	adds r0, #0x24
	movs r6, #0
	str r6, [r1, #0x24]
	str r6, [r0, #4]
	str r6, [r0, #8]
	adds r0, #0xc
	str r6, [r1, #0x30]
	str r6, [r0, #4]
	str r6, [r0, #8]
	bl sub_080728B8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	ldr r0, _0805F42C @ =_vt.8UnitJoin
	mov sl, r0
	str r0, [sp, #0x20]
	ldr r0, _0805F430 @ =gUnknown_080F3F00
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434 @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434 @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434 @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	ldr r0, _0805F438 @ =_vt.10UnitRevive
	mov sl, r0
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434 @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434 @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434 @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	ldr r0, _0805F43C @ =_vt.10UnitEscape
	mov sl, r0
	str r0, [sp, #0x20]
	ldr r0, _0805F440 @ =gUnknown_080F3F08
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r7, r5, #0
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434 @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434 @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434 @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728B8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	ldr r0, _0805F444 @ =_vt.7UnitDie
	mov sl, r0
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434 @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728D8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434 @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl sub_080728F8
	mov sb, r0
	add r0, sp, #4
	bl __4Base
	str r6, [sp, #0x24]
	mov r0, sl
	str r0, [sp, #0x20]
	str r7, [sp]
	adds r3, r4, #0
	mov r0, r8
	mov r1, sb
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	ldr r1, _0805F434 @ =_vt.3Unk
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	mov r0, r8
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805F428: .4byte vt_09F46768
_0805F42C: .4byte _vt.8UnitJoin
_0805F430: .4byte gUnknown_080F3F00
_0805F434: .4byte _vt.3Unk
_0805F438: .4byte _vt.10UnitRevive
_0805F43C: .4byte _vt.10UnitEscape
_0805F440: .4byte gUnknown_080F3F08
_0805F444: .4byte _vt.7UnitDie

	thumb_func_start sub_0805F448
sub_0805F448: @ 0x0805F448
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805F474 @ =vt_09F46768
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0805F45C
	bl __builtin_vec_delete
_0805F45C:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0805F466
	bl __builtin_vec_delete
_0805F466:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F474: .4byte vt_09F46768

	thumb_func_start sub_0805F478
sub_0805F478: @ 0x0805F478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	movs r3, #0
	mov r1, sl
	adds r1, #0x24
	ldr r0, [r1, #4]
	cmp r3, r0
	bge _0805F4D4
	adds r4, r1, #0
_0805F494:
	lsls r0, r3, #3
	ldr r1, [r4, #8]
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0805F4CC
	adds r6, r4, #0
	ldr r2, [r4, #4]
	subs r7, r3, #1
	cmp r3, r2
	bge _0805F4CA
	adds r0, r3, #1
	subs r0, r2, r0
	adds r5, r1, #0
	adds r5, #8
	adds r3, r1, #0
	cmp r0, #0
	ble _0805F4C4
	adds r2, r0, #0
_0805F4BA:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F4BA
_0805F4C4:
	ldr r0, [r6, #4]
	subs r0, #1
	str r0, [r6, #4]
_0805F4CA:
	adds r3, r7, #0
_0805F4CC:
	adds r3, #1
	ldr r0, [r4, #4]
	cmp r3, r0
	blt _0805F494
_0805F4D4:
	movs r0, #0x24
	add r0, sl
	mov r8, r0
	movs r1, #0x30
	add r1, sl
	mov sb, r1
	b _0805F570
_0805F4E2:
	mov r2, sb
	ldr r0, [r2, #8]
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, _0805F620 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	str r0, [sp, #4]
	mov r5, r8
	ldr r0, [r5, #4]
	adds r4, r0, #1
	mov r1, sl
	ldr r0, [r1, #0x24]
	cmp r0, r4
	bge _0805F53A
	lsls r0, r4, #1
	movs r1, #4
	cmp r1, r0
	bge _0805F50A
	adds r1, r0, #0
_0805F50A:
	adds r4, r1, #0
	lsls r0, r4, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	mov r2, r8
	ldr r6, [r2, #8]
	adds r3, r7, #0
	ldr r0, [r2, #4]
	cmp r0, #0
	ble _0805F52C
	adds r2, r0, #0
_0805F522:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F522
_0805F52C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0805F536
	bl __builtin_vec_delete
_0805F536:
	str r4, [r5]
	str r7, [r5, #8]
_0805F53A:
	ldr r3, [r5, #4]
	ldr r0, [r5, #8]
	lsls r2, r3, #3
	adds r2, r2, r0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
	adds r3, #1
	str r3, [r5, #4]
	mov r5, sb
	ldr r2, [r5, #4]
	cmp r2, #0
	ble _0805F570
	ldr r0, [r5, #8]
	subs r1, r2, #1
	adds r4, r0, #4
	adds r3, r0, #0
	cmp r1, #0
	ble _0805F56C
_0805F562:
	ldm r4!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805F562
_0805F56C:
	subs r0, r2, #1
	str r0, [r5, #4]
_0805F570:
	movs r1, #0
	mov r2, sb
	ldr r0, [r2, #4]
	cmp r0, #0
	bgt _0805F57C
	movs r1, #1
_0805F57C:
	cmp r1, #0
	beq _0805F4E2
	movs r5, #0
	mov r1, r8
	ldr r0, [r1, #4]
	cmp r5, r0
	bge _0805F5A4
	mov r6, r8
_0805F58C:
	lsls r0, r5, #3
	ldr r4, [r6, #8]
	adds r4, r4, r0
	ldr r1, [r4]
	mov r0, sl
	bl sub_0805F624
	strh r0, [r4, #4]
	adds r5, #1
	ldr r0, [r6, #4]
	cmp r5, r0
	blt _0805F58C
_0805F5A4:
	movs r2, #0
	mov ip, r2
	mov r1, r8
	ldr r0, [r1, #4]
	cmp ip, r0
	bge _0805F60E
	mov sl, r8
_0805F5B2:
	mov r2, sl
	ldr r0, [r2, #4]
	subs r2, r0, #1
	subs r0, #2
	mov r1, ip
	adds r1, #1
	str r1, [sp, #8]
	cmp r0, ip
	blt _0805F602
	mov sb, r8
_0805F5C6:
	lsls r6, r2, #3
	mov r0, sb
	ldr r1, [r0, #8]
	adds r3, r1, r6
	subs r7, r2, #1
	lsls r5, r7, #3
	adds r1, r1, r5
	ldrh r0, [r3, #4]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bhs _0805F5FA
	ldr r4, [r3, #4]
	ldr r3, [r3]
	mov r1, r8
	ldr r0, [r1, #8]
	adds r2, r6, r0
	adds r0, r5, r0
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	mov r2, r8
	ldr r0, [r2, #8]
	adds r0, r5, r0
	str r3, [r0]
	str r4, [r0, #4]
_0805F5FA:
	adds r2, r7, #0
	subs r0, r2, #1
	cmp r0, ip
	bge _0805F5C6
_0805F602:
	ldr r0, [sp, #8]
	mov ip, r0
	mov r1, sl
	ldr r0, [r1, #4]
	cmp ip, r0
	blt _0805F5B2
_0805F60E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F620: .4byte 0xFFFF0000

	thumb_func_start sub_0805F624
sub_0805F624: @ 0x0805F624
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r5, r0, #0
	subs r0, r5, #4
	adds r1, r5, #4
	bl randS32
	movs r5, #0
	cmp r0, #0
	blt _0805F654
	adds r5, r0, #0
	cmp r5, #0xff
	ble _0805F654
	movs r5, #0xff
_0805F654:
	adds r0, r4, #0
	bl tryCastPlayer__5GoodsP4Unit
	adds r4, r0, #0
	cmp r4, #0
	beq _0805F6A2
	ldr r1, [r4, #0x1c]
	movs r3, #0xca
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	beq _0805F6A2
	ldr r1, [r4, #0x1c]
	movs r3, #0xca
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0x8c
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0805F6A4
_0805F6A2:
	movs r0, #2
_0805F6A4:
	lsls r0, r0, #8
	adds r0, #0xff
	subs r0, r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805F6B0
sub_0805F6B0: @ 0x0805F6B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	bl sub_0805F95C
	adds r5, r0, #0
	adds r4, r7, #0
	adds r4, #0x24
	ldr r6, [r4, #4]
	cmp r5, r6
	bge _0805F778
	lsls r0, r5, #3
	ldr r2, [r4, #8]
	adds r2, r2, r0
	adds r3, r2, #0
	ldm r3!, {r0, r1}
	str r0, [sp]
	str r1, [sp, #4]
	mov ip, r4
	adds r0, r5, #1
	subs r0, r6, r0
	adds r5, r2, #0
	cmp r0, #0
	ble _0805F6F0
	adds r2, r0, #0
_0805F6E6:
	ldm r3!, {r0, r1}
	stm r5!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F6E6
_0805F6F0:
	ldr r0, [r4, #4]
	subs r0, #1
	str r0, [r4, #4]
	mov r5, ip
	mov r8, sp
	ldr r0, [r5, #4]
	adds r4, r0, #1
	ldr r0, [r7, #0x24]
	cmp r0, r4
	bge _0805F73C
	lsls r1, r4, #1
	movs r0, #4
	cmp r0, r1
	bge _0805F70E
	adds r0, r1, #0
_0805F70E:
	adds r4, r0, #0
	lsls r0, r4, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r6, [r5, #8]
	adds r3, r7, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _0805F72E
	adds r2, r0, #0
_0805F724:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F724
_0805F72E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0805F738
	bl __builtin_vec_delete
_0805F738:
	str r4, [r5]
	str r7, [r5, #8]
_0805F73C:
	ldr r1, [r5, #8]
	ldr r3, [r5, #4]
	adds r2, r1, #0
	adds r2, #8
	lsls r0, r3, #3
	subs r0, #8
	adds r4, r1, r0
	adds r2, r2, r0
	cmp r3, #0
	ble _0805F762
_0805F750:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	str r0, [r2]
	str r1, [r2, #4]
	subs r4, #8
	subs r2, #8
	subs r3, #1
	cmp r3, #0
	bne _0805F750
_0805F762:
	ldr r0, [r5, #8]
	mov r3, r8
	ldr r1, [r3]
	ldr r2, [r3, #4]
	str r1, [r0]
	str r2, [r0, #4]
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
	movs r0, #1
	b _0805F77A
_0805F778:
	movs r0, #0
_0805F77A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805F788
sub_0805F788: @ 0x0805F788
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	bl sub_0805F95C
	adds r5, r0, #0
	adds r4, r7, #0
	adds r4, #0x24
	ldr r6, [r4, #4]
	cmp r5, r6
	bge _0805F82E
	lsls r0, r5, #3
	ldr r2, [r4, #8]
	adds r2, r2, r0
	adds r3, r2, #0
	ldm r3!, {r0, r1}
	str r0, [sp]
	str r1, [sp, #4]
	mov ip, r4
	adds r0, r5, #1
	subs r0, r6, r0
	adds r5, r2, #0
	cmp r0, #0
	ble _0805F7C8
	adds r2, r0, #0
_0805F7BE:
	ldm r3!, {r0, r1}
	stm r5!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F7BE
_0805F7C8:
	ldr r0, [r4, #4]
	subs r0, #1
	str r0, [r4, #4]
	mov r4, ip
	mov r8, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x24]
	cmp r0, r5
	bge _0805F814
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805F7E6
	adds r0, r1, #0
_0805F7E6:
	adds r5, r0, #0
	lsls r0, r5, #3
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r6, [r4, #8]
	adds r3, r7, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805F806
	adds r2, r0, #0
_0805F7FC:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, #1
	cmp r2, #0
	bne _0805F7FC
_0805F806:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805F810
	bl __builtin_vec_delete
_0805F810:
	str r5, [r4]
	str r7, [r4, #8]
_0805F814:
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	lsls r2, r3, #3
	adds r2, r2, r0
	mov r5, r8
	ldr r0, [r5]
	ldr r1, [r5, #4]
	str r0, [r2]
	str r1, [r2, #4]
	adds r3, #1
	str r3, [r4, #4]
	movs r0, #1
	b _0805F830
_0805F82E:
	movs r0, #0
_0805F830:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805F83C
sub_0805F83C: @ 0x0805F83C
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start sub_0805F840
sub_0805F840: @ 0x0805F840
	push {lr}
	cmp r1, #0
	blt _0805F85A
	adds r2, r0, #0
	adds r2, #0x24
	ldr r0, [r2, #4]
	cmp r1, r0
	bge _0805F85A
	lsls r1, r1, #3
	ldr r0, [r2, #8]
	adds r0, r0, r1
	ldr r0, [r0]
	b _0805F85C
_0805F85A:
	movs r0, #0
_0805F85C:
	pop {r1}
	bx r1

	thumb_func_start sub_0805F860
sub_0805F860: @ 0x0805F860
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	bl sub_080726B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0805F882
	ldr r0, [r4, #0x20]
	bl typeIsMonster
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0805F8DE
_0805F882:
	ldr r0, [r4, #0x20]
	str r0, [sp]
	adds r4, r6, #0
	adds r4, #0x30
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r6, #0x30]
	cmp r0, r5
	bge _0805F8CE
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805F8A0
	adds r0, r1, #0
_0805F8A0:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805F8C0
	adds r1, r0, #0
_0805F8B6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805F8B6
_0805F8C0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805F8CA
	bl __builtin_vec_delete
_0805F8CA:
	str r5, [r4]
	str r6, [r4, #8]
_0805F8CE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0805F8DE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805F8E8
sub_0805F8E8: @ 0x0805F8E8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x20]
	bl sub_0805F95C
	adds r1, r0, #0
	adds r2, r4, #0
	adds r2, #0x24
	ldr r0, [r2, #4]
	cmp r1, r0
	bge _0805F90C
	lsls r0, r1, #3
	ldr r1, [r2, #8]
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
_0805F90C:
	ldr r0, [r5, #0x20]
	str r0, [sp]
	adds r5, r4, #0
	adds r5, #0x30
	mov r7, sp
	movs r4, #0
	ldr r3, [r5, #4]
	cmp r4, r3
	bge _0805F954
	ldr r6, [r5, #8]
_0805F920:
	lsls r0, r4, #2
	adds r2, r0, r6
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _0805F94C
	adds r0, r4, #1
	subs r0, r3, r0
	adds r3, r2, #4
	adds r1, r2, #0
	subs r4, #1
	cmp r0, #0
	ble _0805F946
	adds r2, r0, #0
_0805F93C:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0805F93C
_0805F946:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_0805F94C:
	adds r4, #1
	ldr r3, [r5, #4]
	cmp r4, r3
	blt _0805F920
_0805F954:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0805F95C
sub_0805F95C: @ 0x0805F95C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r3, #0
	adds r0, #0x24
	ldr r2, [r0, #4]
	cmp r3, r2
	bge _0805F982
	adds r1, r2, #0
	ldr r2, [r0, #8]
_0805F970:
	ldr r0, [r2]
	cmp r0, r4
	bne _0805F97A
	adds r0, r3, #0
	b _0805F984
_0805F97A:
	adds r2, #8
	adds r3, #1
	cmp r3, r1
	blt _0805F970
_0805F982:
	ldr r0, [r5, #0x28]
_0805F984:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805F98C
sub_0805F98C: @ 0x0805F98C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl __4Base
	ldr r0, _0805FA34 @ =vt_09F467F8
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x28
	movs r0, #0
	str r0, [r7, #0x28]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x34]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x40]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x4c]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0x10
	str r0, [r7, #0x5c]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x68]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r7, #0x74]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0xc
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r1, _0805FA38 @ =gSave
	str r1, [r7, #0x24]
	adds r1, r7, #0
	adds r1, #0x58
	strb r0, [r1]
	ldr r1, [r7, #0x24]
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	adds r0, r7, #0
	bl sub_0805FA48
	bl get__12ClockManager
	adds r5, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r6, _0805FA3C @ =_vt.3Unk
	ldr r0, _0805FA40 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _0805FA44 @ =gUnknown_080F4590
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	str r6, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r7, #0
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805FA34: .4byte vt_09F467F8
_0805FA38: .4byte gSave
_0805FA3C: .4byte _vt.3Unk
_0805FA40: .4byte _vt.8AppClock
_0805FA44: .4byte gUnknown_080F4590

	thumb_func_start sub_0805FA48
sub_0805FA48: @ 0x0805FA48
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r6, _0805FA88 @ =gLevelStatTable
_0805FA50:
	ldr r0, [r4, #0x24]
	adds r0, r0, r5
	ldrb r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r6
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805FA7C
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
_0805FA7C:
	adds r5, #1
	cmp r5, #4
	ble _0805FA50
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FA88: .4byte gLevelStatTable

	thumb_func_start sub_0805FA8C
sub_0805FA8C: @ 0x0805FA8C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0805FB2C @ =vt_09F467F8
	str r0, [r6, #0x1c]
	movs r4, #0
	adds r1, r6, #0
	adds r1, #0x5c
	ldr r0, [r1, #4]
	cmp r4, r0
	bge _0805FAC8
	adds r5, r1, #0
_0805FAA4:
	lsls r1, r4, #2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0805FAC0
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805FAC0:
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _0805FAA4
_0805FAC8:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0805FAD6
	bl __builtin_vec_delete
_0805FAD6:
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	beq _0805FAE0
	bl __builtin_vec_delete
_0805FAE0:
	ldr r0, [r6, #0x70]
	cmp r0, #0
	beq _0805FAEA
	bl __builtin_vec_delete
_0805FAEA:
	ldr r0, [r6, #0x64]
	cmp r0, #0
	beq _0805FAF4
	bl __builtin_vec_delete
_0805FAF4:
	ldr r0, [r6, #0x54]
	cmp r0, #0
	beq _0805FAFE
	bl __builtin_vec_delete
_0805FAFE:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	beq _0805FB08
	bl __builtin_vec_delete
_0805FB08:
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _0805FB12
	bl __builtin_vec_delete
_0805FB12:
	ldr r0, [r6, #0x30]
	cmp r0, #0
	beq _0805FB1C
	bl __builtin_vec_delete
_0805FB1C:
	adds r0, r6, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FB2C: .4byte vt_09F467F8

	thumb_func_start sub_0805FB30
sub_0805FB30: @ 0x0805FB30
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _0805FBA4 @ =0xFFFF0000
	ldr r2, [sp]
	ands r2, r3
	orrs r2, r1
	str r2, [sp]
	adds r4, r0, #0
	adds r4, #0x28
	mov r7, sp
	ldr r1, [r4, #4]
	adds r5, r1, #1
	ldr r0, [r0, #0x28]
	cmp r0, r5
	bge _0805FB8A
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805FB5C
	adds r0, r1, #0
_0805FB5C:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805FB7C
	adds r1, r0, #0
_0805FB72:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FB72
_0805FB7C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805FB86
	bl __builtin_vec_delete
_0805FB86:
	str r5, [r4]
	str r6, [r4, #8]
_0805FB8A:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FBA4: .4byte 0xFFFF0000

	thumb_func_start sub_0805FBA8
sub_0805FBA8: @ 0x0805FBA8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _0805FC0E
	adds r4, r2, #0
	adds r4, #0x34
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r2, #0x34]
	cmp r0, r5
	bge _0805FBFE
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805FBD0
	adds r0, r1, #0
_0805FBD0:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805FBF0
	adds r1, r0, #0
_0805FBE6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FBE6
_0805FBF0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805FBFA
	bl __builtin_vec_delete
_0805FBFA:
	str r5, [r4]
	str r6, [r4, #8]
_0805FBFE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0805FC0E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805FC18
sub_0805FC18: @ 0x0805FC18
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _0805FC7E
	adds r4, r2, #0
	adds r4, #0x40
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r2, #0x40]
	cmp r0, r5
	bge _0805FC6E
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805FC40
	adds r0, r1, #0
_0805FC40:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805FC60
	adds r1, r0, #0
_0805FC56:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FC56
_0805FC60:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805FC6A
	bl __builtin_vec_delete
_0805FC6A:
	str r5, [r4]
	str r6, [r4, #8]
_0805FC6E:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0805FC7E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805FC88
sub_0805FC88: @ 0x0805FC88
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r2, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	cmp r0, #0
	beq _0805FCEE
	adds r4, r2, #0
	adds r4, #0x4c
	mov r7, sp
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r2, #0x4c]
	cmp r0, r5
	bge _0805FCDE
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0805FCB0
	adds r0, r1, #0
_0805FCB0:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0805FCD0
	adds r1, r0, #0
_0805FCC6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FCC6
_0805FCD0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0805FCDA
	bl __builtin_vec_delete
_0805FCDA:
	str r5, [r4]
	str r6, [r4, #8]
_0805FCDE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
_0805FCEE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0805FCF8
sub_0805FCF8: @ 0x0805FCF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0805FD10
	movs r0, #0
	b _0805FE24
_0805FD10:
	movs r0, #0
	mov r8, r0
	movs r7, #0
	b _0805FD98
_0805FD18:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0805FD96
	ldr r1, [r6, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _0805FD96
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0x78
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	movs r3, #1
	add r8, r3
_0805FD96:
	adds r7, #1
_0805FD98:
	ldr r1, [r6, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r7, r0
	blt _0805FD18
	movs r7, #0
	b _0805FE06
_0805FDB0:
	ldr r1, [r6, #0x1c]
	adds r1, #0xc8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _0805FE04
	ldr r1, [r6, #0x1c]
	adds r5, r1, #0
	adds r5, #0x80
	movs r0, #0
	ldrsh r4, [r5, r0]
	adds r4, r6, r4
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	movs r3, #1
	add r8, r3
_0805FE04:
	adds r7, #1
_0805FE06:
	ldr r1, [r6, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r7, r0
	blt _0805FDB0
	movs r0, #0
	mov r3, r8
	cmp r3, #0
	ble _0805FE24
	movs r0, #1
_0805FE24:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805FE30
sub_0805FE30: @ 0x0805FE30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	ble _0805FE4E
	b _0806001C
_0805FE4E:
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r2, r8
	adds r2, #0x28
	ldr r1, [r2, #4]
	adds r0, r0, r1
	movs r1, #4
	mov sb, r2
	cmp r1, r0
	ble _0805FE72
	adds r1, r0, #0
_0805FE72:
	adds r7, r1, #0
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r0, #0x34
	add r0, r8
	mov sl, r0
	mov r1, r8
	adds r1, #0x40
	str r1, [sp, #8]
	mov r2, r8
	adds r2, #0x4c
	str r2, [sp, #0xc]
	cmp r4, r7
	bge _0805FEDC
	mov r5, sb
_0805FEA0:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r5, #8]
	ldrh r2, [r0]
	mov r0, r8
	bl sub_08060038
	ldr r2, [r5, #4]
	adds r6, r4, #1
	movs r0, #0
	cmp r0, r2
	bge _0805FED6
	mov r1, sb
	ldr r0, [r1, #8]
	subs r1, r2, #1
	adds r4, r0, #4
	adds r3, r0, #0
	cmp r1, #0
	ble _0805FED0
_0805FEC6:
	ldm r4!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FEC6
_0805FED0:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_0805FED6:
	adds r4, r6, #0
	cmp r4, r7
	blt _0805FEA0
_0805FEDC:
	mov r4, sl
	b _0805FF14
_0805FEE0:
	ldr r0, [r4, #8]
	ldr r1, [r0]
	mov r0, r8
	bl sub_08060340
	mov ip, r4
	movs r7, #0
	ldr r1, [r4, #4]
	cmp r7, r1
	bge _0805FF14
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp r7, r2
	bge _0805FF0E
	adds r1, r2, #0
_0805FF04:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FF04
_0805FF0E:
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #4]
_0805FF14:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _0805FF1E
	movs r1, #1
_0805FF1E:
	cmp r1, #0
	beq _0805FEE0
	ldr r4, [sp, #8]
	b _0805FF5A
_0805FF26:
	ldr r0, [r4, #8]
	ldr r1, [r0]
	mov r0, r8
	bl sub_080604CC
	mov ip, r4
	movs r7, #0
	ldr r1, [r4, #4]
	cmp r7, r1
	bge _0805FF5A
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp r7, r2
	bge _0805FF54
	adds r1, r2, #0
_0805FF4A:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FF4A
_0805FF54:
	subs r0, r6, #1
	mov r1, ip
	str r0, [r1, #4]
_0805FF5A:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _0805FF64
	movs r1, #1
_0805FF64:
	cmp r1, #0
	beq _0805FF26
	ldr r4, [sp, #0xc]
	b _0805FFA0
_0805FF6C:
	ldr r0, [r4, #8]
	ldr r1, [r0]
	mov r0, r8
	bl sub_080608BC
	mov ip, r4
	movs r7, #0
	ldr r1, [r4, #4]
	cmp r7, r1
	bge _0805FFA0
	ldr r0, [r4, #8]
	subs r2, r1, #1
	adds r5, r0, #4
	adds r3, r0, #0
	adds r6, r1, #0
	cmp r7, r2
	bge _0805FF9A
	adds r1, r2, #0
_0805FF90:
	ldm r5!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0805FF90
_0805FF9A:
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #4]
_0805FFA0:
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _0805FFAA
	movs r1, #1
_0805FFAA:
	cmp r1, #0
	beq _0805FF6C
	movs r6, #0
	b _08060006
_0805FFB2:
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0xa0
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl _call_via_r2
	adds r5, r0, #0
	ldr r4, [r5, #0x1c]
	movs r0, #0xd0
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r2, r8
	ldr r1, [r2, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	mov r0, sp
	adds r2, r6, #0
	bl sub_08060E38
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, sp
	movs r1, #2
	bl sub_08060E8C
	adds r6, #1
_08060006:
	mov r0, r8
	ldr r1, [r0, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r0, r8
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r6, r0
	blt _0805FFB2
_0806001C:
	mov r1, r8
	adds r1, #0x58
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08060038
sub_08060038: @ 0x08060038
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r7, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08061004
	str r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08060072
	b _080601CC
_08060072:
	adds r4, r7, #0
	adds r4, #0x5c
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x5c]
	movs r1, #0x68
	adds r1, r1, r7
	mov sl, r1
	add r2, sp, #0x20
	mov sb, r2
	cmp r0, r5
	bge _080600C6
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08060098
	adds r0, r1, #0
_08060098:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _080600B8
	adds r1, r0, #0
_080600AE:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080600AE
_080600B8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080600C2
	bl __builtin_vec_delete
_080600C2:
	str r5, [r4]
	str r6, [r4, #8]
_080600C6:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r4, sl
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x68]
	cmp r0, r5
	bge _08060120
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080600F2
	adds r0, r1, #0
_080600F2:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08060112
	adds r1, r0, #0
_08060108:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08060108
_08060112:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806011C
	bl __builtin_vec_delete
_0806011C:
	str r5, [r4]
	str r6, [r4, #8]
_08060120:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r1, _080601BC @ =_vt.3Unk
	mov r8, r1
	ldr r0, _080601C0 @ =_vt.7Suspend
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r7, r5
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _080601C4 @ =_vt.8UnitJoin
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sb
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x3c]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r0, _080601C8 @ =_vt.6Resume
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	b _08060320
	.align 2, 0
_080601BC: .4byte _vt.3Unk
_080601C0: .4byte _vt.7Suspend
_080601C4: .4byte _vt.8UnitJoin
_080601C8: .4byte _vt.6Resume
_080601CC:
	adds r4, r7, #0
	adds r4, #0x5c
	add r3, sp, #0x44
	mov r8, r3
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x5c]
	movs r1, #0x80
	adds r1, r1, r7
	mov sb, r1
	cmp r0, r5
	bge _0806021C
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080601EE
	adds r0, r1, #0
_080601EE:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _0806020E
	adds r1, r0, #0
_08060204:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08060204
_0806020E:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08060218
	bl __builtin_vec_delete
_08060218:
	str r5, [r4]
	str r6, [r4, #8]
_0806021C:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r4, sb
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	cmp r0, r5
	bge _08060276
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08060248
	adds r0, r1, #0
_08060248:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08060268
	adds r1, r0, #0
_0806025E:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _0806025E
_08060268:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08060272
	bl __builtin_vec_delete
_08060272:
	str r5, [r4]
	str r6, [r4, #8]
_08060276:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r1, _08060330 @ =_vt.3Unk
	mov r8, r1
	ldr r0, _08060334 @ =_vt.7Suspend
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r7, r5
	ldr r6, [sp, #0x44]
	mov r0, sp
	bl __4Base
	str r6, [sp, #0x20]
	ldr r0, _08060338 @ =_vt.7UnitDie
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r0, _0806033C @ =_vt.6Resume
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r2, r8
	str r2, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
_08060320:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060330: .4byte _vt.3Unk
_08060334: .4byte _vt.7Suspend
_08060338: .4byte _vt.7UnitDie
_0806033C: .4byte _vt.6Resume

	thumb_func_start sub_08060340
sub_08060340: @ 0x08060340
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov sb, r0
	str r1, [sp, #0x44]
	mov r6, sb
	adds r6, #0x68
	add r7, sp, #0x44
	movs r5, #0
	ldr r3, [r6, #4]
	mov r8, r7
	cmp r5, r3
	bge _0806039C
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08060366:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _08060390
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08060388
	adds r2, r0, #0
_0806037E:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _0806037E
_08060388:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _0806039E
_08060390:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08060366
_0806039C:
	movs r0, #0
_0806039E:
	cmp r0, #0
	bne _080603A4
	b _080604AA
_080603A4:
	mov r4, sb
	adds r4, #0x74
	ldr r0, [r4, #4]
	adds r5, r0, #1
	mov r1, sb
	ldr r0, [r1, #0x74]
	adds r6, r4, #0
	add r3, sp, #0x20
	mov sl, r3
	cmp r0, r5
	bge _080603F2
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _080603C4
	adds r0, r1, #0
_080603C4:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r6, #8]
	adds r2, r7, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _080603E4
	adds r1, r0, #0
_080603DA:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _080603DA
_080603E4:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080603EE
	bl __builtin_vec_delete
_080603EE:
	str r5, [r4]
	str r7, [r4, #8]
_080603F2:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	adds r1, r6, #0
	bl sub_08060A48
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r3, _080604BC @ =_vt.3Unk
	mov r8, r3
	ldr r0, _080604C0 @ =_vt.7Suspend
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _080604C4 @ =_vt.10UnitEscape
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x3c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _080604C8 @ =_vt.6Resume
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
_080604AA:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080604BC: .4byte _vt.3Unk
_080604C0: .4byte _vt.7Suspend
_080604C4: .4byte _vt.10UnitEscape
_080604C8: .4byte _vt.6Resume

	thumb_func_start sub_080604CC
sub_080604CC: @ 0x080604CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov sb, r0
	str r1, [sp, #0x44]
	bl sub_08060664
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080604EA
	b _08060642
_080604EA:
	mov r6, sb
	adds r6, #0x68
	add r7, sp, #0x44
	movs r5, #0
	ldr r3, [r6, #4]
	mov r8, r7
	cmp r5, r3
	bge _08060536
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_08060500:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _0806052A
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08060522
	adds r2, r0, #0
_08060518:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _08060518
_08060522:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _08060538
_0806052A:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _08060500
_08060536:
	movs r0, #0
_08060538:
	cmp r0, #0
	bne _0806053E
	b _08060642
_0806053E:
	mov r4, sb
	adds r4, #0x80
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r4]
	adds r6, r4, #0
	add r1, sp, #0x20
	mov sl, r1
	cmp r0, r5
	bge _0806058A
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _0806055C
	adds r0, r1, #0
_0806055C:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r6, #8]
	adds r2, r7, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _0806057C
	adds r1, r0, #0
_08060572:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08060572
_0806057C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08060586
	bl __builtin_vec_delete
_08060586:
	str r5, [r4]
	str r7, [r4, #8]
_0806058A:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	adds r1, r6, #0
	bl sub_08060A48
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r3, _08060654 @ =_vt.3Unk
	mov r8, r3
	ldr r0, _08060658 @ =_vt.7Suspend
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb0
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _0806065C @ =_vt.7UnitDie
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x3c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _08060660 @ =_vt.6Resume
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
_08060642:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060654: .4byte _vt.3Unk
_08060658: .4byte _vt.7Suspend
_0806065C: .4byte _vt.7UnitDie
_08060660: .4byte _vt.6Resume

	thumb_func_start sub_08060664
sub_08060664: @ 0x08060664
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	mov sb, r0
	adds r7, r1, #0
	bl sub_08072778
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08060682
	b _080608A4
_08060682:
	movs r0, #0x32
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806069A
	bl sub_08072EA8
	cmp r0, #0
	bgt _0806069A
	b _080608A4
_0806069A:
	movs r0, #0x39
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080606B8
	movs r0, #0x3a
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080606B8
	b _08060874
_080606B8:
	adds r0, r7, #0
	movs r1, #2
	bl unitIsPlayer
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080606CA
	b _08060874
_080606CA:
	b _080608A4
_080606CC:
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	add r0, sp, #4
	bl __4Base
	ldr r0, _08060864 @ =_vt.7Suspend
	str r0, [sp, #0x20]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	bl _call_via_r2
	ldr r2, _08060868 @ =_vt.3Unk
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	add r0, sp, #0x10
	mov r8, r0
	mov r1, sl
	bl getName__5GoodsUs
	ldr r2, [r7, #0x1c]
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r5, sp, #0x24
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r4, sp, #0x30
	adds r0, r4, #0
	bl __3Msg
	ldr r1, _0806086C @ =0x000001D5
	str r4, [sp]
	add r0, sp, #4
	mov r2, r8
	adds r3, r5, #0
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x3c
	movs r6, #0
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	movs r0, #0x20
	adds r1, r7, #0
	adds r2, r7, #0
	bl playSeq
	ldr r0, [r7, #0x1c]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r2, #0
	ldrsh r4, [r5, r2]
	adds r4, r7, r4
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl _call_via_r2
	ldr r1, [r7, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, r8
	mov r1, sl
	bl getName__5GoodsUs
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	add r5, sp, #0x1c
	adds r0, r5, #0
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	movs r1, #0xeb
	lsls r1, r1, #1
	str r4, [sp]
	add r0, sp, #4
	mov r2, r8
	adds r3, r5, #0
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x40
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r1, [r7, #0x1c]
	movs r2, #0x81
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	add r0, sp, #4
	bl __4Base
	ldr r0, _08060870 @ =_vt.6Resume
	str r0, [sp, #0x20]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	add r1, sp, #4
	bl _call_via_r2
	ldr r2, _08060868 @ =_vt.3Unk
	str r2, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	movs r0, #1
	b _080608A6
	.align 2, 0
_08060864: .4byte _vt.7Suspend
_08060868: .4byte _vt.3Unk
_0806086C: .4byte 0x000001D5
_08060870: .4byte _vt.6Resume
_08060874:
	movs r5, #0
	ldr r4, _080608B8 @ =gUnknown_080F4598
_08060878:
	ldr r1, [r7, #0x1c]
	movs r0, #0x87
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldrh r2, [r4]
	mov sl, r2
	ldr r2, [r1, #4]
	mov r1, sl
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806089C
	b _080606CC
_0806089C:
	adds r4, #2
	adds r5, #1
	cmp r5, #6
	bls _08060878
_080608A4:
	movs r0, #0
_080608A6:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080608B8: .4byte gUnknown_080F4598

	thumb_func_start sub_080608BC
sub_080608BC: @ 0x080608BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov sb, r0
	str r1, [sp, #0x44]
	mov r6, sb
	adds r6, #0x80
	add r7, sp, #0x44
	movs r5, #0
	ldr r3, [r6, #4]
	mov r8, r7
	cmp r5, r3
	bge _08060918
	ldr r0, [r6, #8]
	adds r4, r0, #4
	adds r2, r0, #0
_080608E2:
	ldr r1, [r2]
	ldr r0, [r7]
	cmp r1, r0
	bne _0806090C
	adds r0, r5, #1
	subs r0, r3, r0
	adds r3, r4, #0
	adds r1, r2, #0
	ldr r4, [r6, #4]
	cmp r0, #0
	ble _08060904
	adds r2, r0, #0
_080608FA:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bne _080608FA
_08060904:
	subs r0, r4, #1
	str r0, [r6, #4]
	movs r0, #1
	b _0806091A
_0806090C:
	adds r4, #4
	adds r2, #4
	adds r5, #1
	ldr r3, [r6, #4]
	cmp r5, r3
	blt _080608E2
_08060918:
	movs r0, #0
_0806091A:
	cmp r0, #0
	bne _08060920
	b _08060A26
_08060920:
	mov r4, sb
	adds r4, #0x68
	ldr r0, [r4, #4]
	adds r5, r0, #1
	mov r1, sb
	ldr r0, [r1, #0x68]
	adds r6, r4, #0
	add r3, sp, #0x20
	mov sl, r3
	cmp r0, r5
	bge _0806096E
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08060940
	adds r0, r1, #0
_08060940:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r7, r0, #0
	ldr r3, [r6, #8]
	adds r2, r7, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	ble _08060960
	adds r1, r0, #0
_08060956:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08060956
_08060960:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0806096A
	bl __builtin_vec_delete
_0806096A:
	str r5, [r4]
	str r7, [r4, #8]
_0806096E:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	mov r0, sb
	adds r1, r6, #0
	bl sub_08060A48
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r3, _08060A38 @ =_vt.3Unk
	mov r8, r3
	ldr r0, _08060A3C @ =_vt.7Suspend
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _08060A40 @ =_vt.10UnitRevive
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sl
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x3c]
	mov r0, sl
	movs r1, #2
	bl _._4Base
	mov r0, sb
	ldr r4, [r0, #0x1c]
	adds r4, #0x50
	movs r1, #0
	ldrsh r5, [r4, r1]
	add r5, sb
	mov r0, sp
	bl __4Base
	ldr r0, _08060A44 @ =_vt.6Resume
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
_08060A26:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060A38: .4byte _vt.3Unk
_08060A3C: .4byte _vt.7Suspend
_08060A40: .4byte _vt.10UnitRevive
_08060A44: .4byte _vt.6Resume

	thumb_func_start sub_08060A48
sub_08060A48: @ 0x08060A48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r1
	movs r0, #0
	mov sb, r0
	b _08060AD2
_08060A5C:
	mov r1, r8
	ldr r0, [r1, #4]
	subs r5, r0, #1
	subs r0, #2
	mov r3, sb
	adds r3, #1
	str r3, [sp]
	cmp r0, sb
	blt _08060ACC
	movs r0, #0xbc
	lsls r0, r0, #1
	mov sl, r0
_08060A74:
	lsls r7, r5, #2
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	add r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	adds r4, r0, #0
	subs r6, r5, #1
	lsls r5, r6, #2
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	add r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #4]
	bl _call_via_r1
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	bhs _08060AC4
	mov r1, r8
	ldr r0, [r1, #8]
	adds r2, r7, r0
	ldr r3, [r2]
	adds r0, r5, r0
	ldr r1, [r0]
	str r1, [r2]
	str r3, [r0]
_08060AC4:
	adds r5, r6, #0
	subs r0, r5, #1
	cmp r0, sb
	bge _08060A74
_08060ACC:
	ldr r3, [sp]
	mov sb, r3
	mov r1, r8
_08060AD2:
	ldr r0, [r1, #4]
	cmp sb, r0
	blt _08060A5C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08060AE8
sub_08060AE8: @ 0x08060AE8
	ldr r0, [r0, #0x60]
	bx lr

	thumb_func_start sub_08060AEC
sub_08060AEC: @ 0x08060AEC
	lsls r1, r1, #2
	ldr r0, [r0, #0x64]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08060AF8
sub_08060AF8: @ 0x08060AF8
	ldr r0, [r0, #0x6c]
	bx lr

	thumb_func_start sub_08060AFC
sub_08060AFC: @ 0x08060AFC
	lsls r1, r1, #2
	ldr r0, [r0, #0x70]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08060B08
sub_08060B08: @ 0x08060B08
	ldr r0, [r0, #0x78]
	bx lr

	thumb_func_start sub_08060B0C
sub_08060B0C: @ 0x08060B0C
	adds r0, #0x80
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_08060B14
sub_08060B14: @ 0x08060B14
	adds r0, #0x80
	lsls r1, r1, #2
	ldr r0, [r0, #8]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr

	thumb_func_start sub_08060B20
sub_08060B20: @ 0x08060B20
	push {r4, lr}
	sub sp, #4
	str r1, [sp]
	adds r0, #0x80
	movs r2, #0
	ldr r1, [r0, #4]
	cmp r2, r1
	bge _08060B48
	ldr r4, [sp]
	adds r3, r1, #0
	ldr r1, [r0, #8]
_08060B36:
	ldr r0, [r1]
	cmp r0, r4
	bne _08060B40
	movs r0, #1
	b _08060B4A
_08060B40:
	adds r1, #4
	adds r2, #1
	cmp r2, r3
	blt _08060B36
_08060B48:
	movs r0, #0
_08060B4A:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start tellExperience
tellExperience: @ 0x08060B54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x44
	adds r7, r0, #0
	mov sb, r1
	bl metalMonkeyCheck
	mov r0, sb
	cmp r0, #0
	bgt _08060B6E
	b _08060CE8
_08060B6E:
	ldr r1, [r7, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _08060B84
	b _08060CE8
_08060B84:
	add r0, sp, #4
	bl __3Msg
	ldr r1, [r7, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	bgt _08060C16
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x1c
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r6, sp, #0x28
	adds r0, r6, #0
	mov r1, sb
	bl sub_0806E1C8
	add r5, sp, #0x34
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0x7d
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460__3MsgiRC3MsgN22
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_0806E2E8__3MsgRC3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	b _08060C8C
_08060C16:
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #0x1c
	mov r8, r0
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	add r6, sp, #0x28
	adds r0, r6, #0
	mov r1, sb
	bl sub_0806E1C8
	add r5, sp, #0x34
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #0x7e
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460__3MsgiRC3MsgN22
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_0806E2E8__3MsgRC3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
_08060C8C:
	add r1, sp, #0x40
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	movs r4, #0
	b _08060CCC
_08060CA2:
	ldr r1, [r7, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	ldr r2, [r0, #0x1c]
	movs r3, #0xcc
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	mov r1, sb
	bl _call_via_r2
	adds r4, #1
_08060CCC:
	ldr r1, [r7, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08060CA2
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
_08060CE8:
	add sp, #0x44
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start metalMonkeyCheck
metalMonkeyCheck: @ 0x08060CF8
	push {r4, r5, r6, lr}
	sub sp, #0x38
	bl sub_080725E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08060D6E
	bl sub_08072608
	ldrb r0, [r0]
	cmp r0, #0x35
	bne _08060D6E
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x87
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x34
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	movs r0, #1
	b _08060D70
_08060D6E:
	movs r0, #0
_08060D70:
	add sp, #0x38
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08060D78
sub_08060D78: @ 0x08060D78
	push {lr}
	sub sp, #0x2c
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0
	beq _08060D98
	mov r0, sp
	bl sub_08061024
	mov r0, sp
	bl tellPresent
	mov r0, sp
	movs r1, #2
	bl sub_08061048
_08060D98:
	add sp, #0x2c
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08060DA0
sub_08060DA0: @ 0x08060DA0
	push {lr}
	cmp r1, #0
	blt _08060DB6
	ldr r2, [r0, #0x24]
	ldr r0, [r2, #8]
	ldr r3, _08060DBC @ =0x000F423F
	adds r0, r0, r1
	cmp r0, r3
	bls _08060DB4
	adds r0, r3, #0
_08060DB4:
	str r0, [r2, #8]
_08060DB6:
	pop {r0}
	bx r0
	.align 2, 0
_08060DBC: .4byte 0x000F423F

	thumb_func_start sub_08060DC0
sub_08060DC0: @ 0x08060DC0
	push {lr}
	cmp r1, #0
	blt _08060DD6
	ldr r2, [r0, #0x24]
	ldr r0, [r2, #0xc]
	ldr r3, _08060DDC @ =0x000F423F
	adds r0, r0, r1
	cmp r0, r3
	bls _08060DD4
	adds r0, r3, #0
_08060DD4:
	str r0, [r2, #0xc]
_08060DD6:
	pop {r0}
	bx r0
	.align 2, 0
_08060DDC: .4byte 0x000F423F

	thumb_func_start sub_08060DE0
sub_08060DE0: @ 0x08060DE0
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r0, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r1, #0
	cmp r0, #0
	ble _08060E02
	movs r1, #1
_08060E02:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08060E0C
sub_08060E0C: @ 0x08060E0C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r0, #0x24]
	adds r0, #0x10
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_08060E1C
sub_08060E1C: @ 0x08060E1C
	push {lr}
	ldr r1, [r0, #0x1c]
	adds r1, #0x60
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08060E34
sub_08060E34: @ 0x08060E34
	movs r0, #4
	bx lr

	thumb_func_start sub_08060E38
sub_08060E38: @ 0x08060E38
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r2, #0
	subs r1, #1
	cmp r1, #3
	bgt _08060E60
	cmp r0, #3
	bgt _08060E60
	ldr r2, _08060E5C @ =gUnknown_080F4C28
	lsls r0, r0, #1
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_08060E80
	b _08060E66
	.align 2, 0
_08060E5C: .4byte gUnknown_080F4C28
_08060E60:
	adds r0, r4, #0
	bl sub_08060E70
_08060E66:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08060E70
sub_08060E70: @ 0x08060E70
	ldr r1, _08060E7C @ =vt_09F46900
	str r1, [r0, #4]
	movs r1, #8
	strh r1, [r0]
	bx lr
	.align 2, 0
_08060E7C: .4byte vt_09F46900

	thumb_func_start sub_08060E80
sub_08060E80: @ 0x08060E80
	ldr r2, _08060E88 @ =vt_09F46900
	str r2, [r0, #4]
	strh r1, [r0]
	bx lr
	.align 2, 0
_08060E88: .4byte vt_09F46900

	thumb_func_start sub_08060E8C
sub_08060E8C: @ 0x08060E8C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08060EA8 @ =vt_09F46900
	str r0, [r2, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08060EA2
	adds r0, r2, #0
	bl __builtin_delete
_08060EA2:
	pop {r0}
	bx r0
	.align 2, 0
_08060EA8: .4byte vt_09F46900

	thumb_func_start sub_08060EAC
sub_08060EAC: @ 0x08060EAC
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_08060EB0
sub_08060EB0: @ 0x08060EB0
	push {lr}
	ldr r2, [r0, #4]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x14]
	bl _call_via_r1
	movs r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bhi _08060ECC
	movs r1, #1
_08060ECC:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08060ED4
sub_08060ED4: @ 0x08060ED4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, _08060F5C @ =gUnknown_020021A8
	ldr r3, [r6]
	cmp r3, #0
	bne _08060F28
	ldr r0, _08060F60 @ =gUnknown_02002188
	movs r1, #0x1e
	movs r2, #0x90
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x3c
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x5a
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x78
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0x96
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0xb4
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	movs r1, #0xd2
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r0, #4
	strh r3, [r0]
	strh r3, [r0, #2]
	movs r0, #1
	str r0, [r6]
_08060F28:
	ldr r1, [r4, #4]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x1c]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08060F64
	ldr r1, [r4, #4]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r1, _08060F60 @ =gUnknown_02002188
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
	b _08060F6E
	.align 2, 0
_08060F5C: .4byte gUnknown_020021A8
_08060F60: .4byte gUnknown_02002188
_08060F64:
	mov r2, sp
	movs r1, #0
	mov r0, sp
	strh r1, [r0]
	strh r1, [r2, #2]
_08060F6E:
	ldr r0, [sp]
	str r0, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08060F7C
sub_08060F7C: @ 0x08060F7C
	movs r0, #2
	bx lr

	thumb_func_start sub_08060F80
sub_08060F80: @ 0x08060F80
	push {r4, lr}
	movs r4, #0
_08060F84:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08060FD4 @ =sub_0809BEF4
	bl sub_08060FF4
	adds r4, #1
	cmp r4, #0xf
	bls _08060F84
	ldr r1, _08060FD8 @ =sub_0809BE90
	movs r0, #1
	bl sub_08060FF4
	ldr r1, _08060FDC @ =sub_0809BE6C
	movs r0, #2
	bl sub_08060FF4
	ldr r1, _08060FE0 @ =sub_0809BE48
	movs r0, #4
	bl sub_08060FF4
	ldr r1, _08060FE4 @ =sub_0809BE24
	movs r0, #3
	bl sub_08060FF4
	ldr r1, _08060FE8 @ =sub_0809BE00
	movs r0, #5
	bl sub_08060FF4
	ldr r1, _08060FEC @ =sub_0809BDDC
	movs r0, #6
	bl sub_08060FF4
	ldr r1, _08060FF0 @ =sub_0809BDB8
	movs r0, #0xd
	bl sub_08060FF4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060FD4: .4byte sub_0809BEF4
_08060FD8: .4byte sub_0809BE90
_08060FDC: .4byte sub_0809BE6C
_08060FE0: .4byte sub_0809BE48
_08060FE4: .4byte sub_0809BE24
_08060FE8: .4byte sub_0809BE00
_08060FEC: .4byte sub_0809BDDC
_08060FF0: .4byte sub_0809BDB8

	thumb_func_start sub_08060FF4
sub_08060FF4: @ 0x08060FF4
	lsls r0, r0, #0x10
	ldr r2, _08061000 @ =gUnknown_020021C0
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08061000: .4byte gUnknown_020021C0

	thumb_func_start sub_08061004
sub_08061004: @ 0x08061004
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08061020 @ =gUnknown_020021C0
	lsls r2, r1, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_08061020: .4byte gUnknown_020021C0

	thumb_func_start sub_08061024
sub_08061024: @ 0x08061024
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl __4Base
	ldr r0, _08061044 @ =vt_09F490E8
	str r0, [r5, #0x1c]
	strh r4, [r5, #0x24]
	movs r0, #2
	str r0, [r5, #0x28]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08061044: .4byte vt_09F490E8

	thumb_func_start sub_08061048
sub_08061048: @ 0x08061048
	push {lr}
	ldr r2, _08061058 @ =vt_09F490E8
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_08061058: .4byte vt_09F490E8

	thumb_func_start tellPresent
tellPresent: @ 0x0806105C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	adds r5, r0, #0
	add r6, sp, #0x10
	adds r0, r6, #0
	bl __3Msg
	add r0, sp, #0x1c
	mov r8, r0
	bl __3Msg
	add r7, sp, #0x28
	adds r0, r7, #0
	bl __3Msg
	str r7, [sp]
	add r0, sp, #4
	movs r1, #0x88
	adds r2, r6, #0
	mov r3, r8
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x40
	movs r0, #0
	mov sl, r0
	mov r0, sl
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	bl __3Msg
	ldrh r1, [r5, #0x24]
	mov r0, r8
	bl getName__5GoodsUs
	adds r0, r7, #0
	bl __3Msg
	add r1, sp, #0x34
	mov sb, r1
	mov r0, sb
	bl __3Msg
	mov r0, sb
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x89
	mov r2, r8
	adds r3, r7, #0
	bl sub_08073460__3MsgiRC3MsgN22
	add r0, sp, #4
	adds r1, r6, #0
	bl sub_0806E2E8__3MsgRC3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	movs r1, #2
	bl _._3Msg
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	adds r1, r5, #0
	add r2, sp, #4
	bl druggedPresentCheck
	add r0, sp, #4
	adds r1, r6, #0
	bl sub_0806E2E8__3MsgRC3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	add r1, sp, #0x44
	mov r0, sl
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	adds r0, r5, #0
	bl reqInventorySlot
	adds r4, r0, #0
	cmp r4, #0
	beq _080611D2
	ldr r2, [r4, #0x1c]
	movs r1, #0xce
	lsls r1, r1, #2
	adds r2, r2, r1
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r5, #0x24]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r4, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r0, r8
	ldr r2, [r2, #4]
	adds r1, r4, r1
	bl _call_via_r2
	ldrh r1, [r5, #0x24]
	adds r0, r7, #0
	bl getName__5GoodsUs
	mov r0, sb
	bl __3Msg
	mov r1, sb
	str r1, [sp]
	adds r0, r6, #0
	movs r1, #0x8b
	mov r2, r8
	adds r3, r7, #0
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x48
	mov r0, sl
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r0, r6, #0
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	movs r1, #2
	bl _._3Msg
	adds r0, r7, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	b _08061230
_080611D2:
	adds r0, r6, #0
	adds r1, r5, #0
	bl tellPlayerInventoryFull
	add r1, sp, #0x4c
	strb r4, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	adds r0, r6, #0
	movs r2, #1
	bl sub_0807362C
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	cmp r4, #0
	bne _08061204
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08061954
	b _0806122A
_08061204:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08061954
	b _0806122A
_08061210:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0806121C
	cmp r0, #1
	beq _08061224
	b _0806122A
_0806121C:
	adds r0, r5, #0
	bl throwAwayItem
	b _0806122A
_08061224:
	adds r0, r5, #0
	bl checkGiveUpItem
_0806122A:
	ldr r0, [r5, #0x28]
	cmp r0, #2
	bne _08061210
_08061230:
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	movs r0, #1
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start druggedPresentCheck
druggedPresentCheck: @ 0x0806124C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	movs r0, #0x37
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x30
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x34
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x33
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x35
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080612AA
	movs r0, #0x36
	bl sub_08072648
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080612EA
_080612AA:
	ldrh r1, [r4, #0x24]
	add r0, sp, #4
	bl getName__5GoodsUs
	add r5, sp, #0x10
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x8a
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460__3MsgiRC3MsgN22
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	b _080612F2
_080612EA:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0806E2B8
_080612F2:
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start reqInventorySlot
reqInventorySlot: @ 0x080612FC
	push {r4, r5, lr}
	movs r5, #0
	b _08061328
_08061302:
	adds r0, r5, #0
	bl sub_080729F8
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0xf
	bgt _08061326
	adds r0, r4, #0
	b _08061332
_08061326:
	adds r5, #1
_08061328:
	bl getPartyCount
	cmp r5, r0
	blt _08061302
	movs r0, #0
_08061332:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start tellPlayerInventoryFull
tellPlayerInventoryFull: @ 0x08061338
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	bl getPartyCount
	cmp r0, #1
	bgt _080613A0
	movs r0, #0
	bl sub_080729F8
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldrh r1, [r4, #0x24]
	add r5, sp, #0x10
	adds r0, r5, #0
	bl getName__5GoodsUs
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x8c
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460__3MsgiRC3MsgN22
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	b _080613F6
_080613A0:
	movs r0, #0
	bl sub_080729F8
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldrh r1, [r4, #0x24]
	add r5, sp, #0x10
	adds r0, r5, #0
	bl getName__5GoodsUs
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x8d
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460__3MsgiRC3MsgN22
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
_080613F6:
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start throwAwayItem
throwAwayItem: @ 0x08061400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x9c
	mov sb, r0
	bl sub_08061678
	adds r7, r0, #0
	cmp r7, #0
	bne _0806141E
	mov r0, sb
	movs r1, #1
	b _08061656
_0806141E:
	add r4, sp, #0x84
	adds r0, r4, #0
	mov r1, sb
	adds r2, r7, #0
	bl sub_080616C4
	ldrh r0, [r4]
	mov sl, r4
	cmp r0, #0
	beq _080614B8
	mov r0, sl
	ldrh r1, [r0]
	ldrh r3, [r0, #2]
	add r0, sp, #4
	adds r2, r7, #0
	bl __5GoodsUsP4UnitUs
	add r0, sp, #4
	bl isKeyItem__C5Goods
	adds r4, r0, #0
	add r0, sp, #4
	movs r1, #2
	bl _._5Goods
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	cmp r4, #1
	beq _080614C4
	mov r2, sl
	ldrh r1, [r2]
	add r3, sp, #0x60
	mov r8, r3
	mov r0, r8
	bl getName__5GoodsUs
	add r6, sp, #0x6c
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x78
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #0x54
	adds r0, r4, #0
	movs r1, #0x92
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x88
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r0, r4, #0
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
_080614B8:
	mov r0, sb
	movs r1, #0
	movs r2, #1
	bl sub_08061954
	b _08061668
_080614C4:
	mov r0, sl
	ldrh r1, [r0]
	add r6, sp, #0x10
	adds r0, r6, #0
	bl getName__5GoodsUs
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x8e
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x8c
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_0807362C
	mov r8, r0
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r1, r8
	cmp r1, #0
	beq _0806152A
	b _0806165E
_0806152A:
	movs r4, #0
	mov r2, sp
	adds r2, #0x40
	str r2, [sp, #0x94]
	mov r3, sp
	adds r3, #0x4c
	str r3, [sp, #0x98]
	add r0, sp, #0x58
	mov r8, r0
	add r6, sp, #0x34
	add r5, sp, #0x90
	b _0806159C
_08061542:
	ldr r1, [r7, #0x1c]
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	mov r2, sl
	ldrh r1, [r2, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bne _0806159A
	ldr r1, [r7, #0x1c]
	movs r3, #0x86
	lsls r3, r3, #3
	adds r1, r1, r3
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #4]
	adds r1, r4, #0
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0806159A
	ldr r2, [r7, #0x1c]
	movs r3, #0x8a
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sl
	ldrh r1, [r3]
	ldr r2, [r2, #4]
	bl _call_via_r2
_0806159A:
	adds r4, #1
_0806159C:
	ldr r1, [r7, #0x1c]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	blt _08061542
	ldr r2, [r7, #0x1c]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r2, r2, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sl
	ldrh r1, [r3, #2]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r7, #0x1c]
	movs r0, #0xce
	lsls r0, r0, #2
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r7, r0
	mov r3, sb
	ldrh r1, [r3, #0x24]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r2, [r7, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, [sp, #0x94]
	ldr r2, [r2, #4]
	adds r1, r7, r1
	bl _call_via_r2
	add r0, sp, #0x84
	ldrh r1, [r0]
	ldr r0, [sp, #0x98]
	bl getName__5GoodsUs
	mov r0, sb
	ldrh r1, [r0, #0x24]
	mov r0, r8
	bl getName__5GoodsUs
	mov r1, r8
	str r1, [sp]
	adds r0, r6, #0
	movs r1, #0x91
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x98]
	bl sub_08073460__3MsgiRC3MsgN22
	movs r0, #0
	add r1, sp, #0x90
	strb r0, [r1]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #0x98]
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #0x94]
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	movs r1, #2
_08061656:
	movs r2, #0
	bl sub_08061954
	b _08061668
_0806165E:
	mov r0, sb
	movs r1, #1
	movs r2, #0
	bl sub_08061954
_08061668:
	add sp, #0x9c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08061678
sub_08061678: @ 0x08061678
	push {r4, lr}
	sub sp, #0x180
	movs r0, #0
	bl sub_080729F8
	adds r2, r0, #0
	mov r0, sp
	movs r1, #2
	bl __16UnitTargetChoiceUsP4Unit
	mov r0, sp
	bl sub_08076B30
	cmp r0, #0
	beq _080616A2
	mov r0, sp
	movs r1, #2
	bl _._16UnitTargetChoice
	movs r0, #0
	b _080616BA
_080616A2:
	mov r0, sp
	movs r1, #0
	bl attackdata_118__10UnitTargeti
	bl tryCastPlayer__5GoodsP4Unit
	adds r4, r0, #0
	mov r0, sp
	movs r1, #2
	bl _._16UnitTargetChoice
	adds r0, r4, #0
_080616BA:
	add sp, #0x180
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080616C4
sub_080616C4: @ 0x080616C4
	push {r4, r5, lr}
	ldr r4, _08061744 @ =0xFFFFF948
	add sp, r4
	adds r5, r0, #0
	adds r1, r2, #0
	mov r0, sp
	bl sub_0807D3F4
	mov r0, sp
	movs r1, #0
	bl sub_0807DE28
	cmp r0, #0
	bne _08061750
	mov r0, sp
	bl sub_0807E448
	ldr r1, [r0, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08061748 @ =0xFFFF0000
	ands r4, r1
	orrs r4, r0
	mov r0, sp
	bl sub_0807E448
	ldr r1, [r0, #0x1c]
	movs r2, #0xa8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	ldr r1, _0806174C @ =0x0000FFFF
	ands r4, r1
	orrs r4, r0
	mov r0, sp
	bl sub_0807E448
	adds r2, r0, #0
	cmp r2, #0
	beq _08061752
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _08061752
	.align 2, 0
_08061744: .4byte 0xFFFFF948
_08061748: .4byte 0xFFFF0000
_0806174C: .4byte 0x0000FFFF
_08061750:
	movs r4, #0
_08061752:
	str r4, [r5]
	mov r0, sp
	movs r1, #2
	bl sub_0807DCE8
	adds r0, r5, #0
	movs r3, #0xd7
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start checkGiveUpItem
checkGiveUpItem: @ 0x0806176C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov sl, r0
	ldrh r1, [r0, #0x24]
	add r6, sp, #0x10
	adds r0, r6, #0
	bl getName__5GoodsUs
	add r5, sp, #0x1c
	adds r0, r5, #0
	bl __3Msg
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	add r0, sp, #4
	movs r1, #0x8f
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x64
	movs r7, #0
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	add r0, sp, #4
	movs r2, #1
	bl sub_0807362C
	mov r8, r0
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	cmp r0, #0
	bne _08061804
	add r4, sp, #0x34
	adds r0, r4, #0
	mov r1, sl
	bl tellGaveUpItem
	add r1, sp, #0x68
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	adds r0, r4, #0
	movs r2, #1
	bl print__3MsgRC13PrintSettingsb
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	mov r0, sl
	movs r1, #2
	b _08061868
_08061804:
	add r0, sp, #0x40
	mov r8, r0
	bl __3Msg
	add r6, sp, #0x4c
	adds r0, r6, #0
	bl __3Msg
	add r5, sp, #0x58
	adds r0, r5, #0
	bl __3Msg
	str r5, [sp]
	add r4, sp, #0x34
	adds r0, r4, #0
	movs r1, #0x90
	mov r2, r8
	adds r3, r6, #0
	bl sub_08073460__3MsgiRC3MsgN22
	add r1, sp, #0x6c
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	adds r0, r4, #0
	movs r2, #1
	bl sub_0807362C
	mov sb, r0
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	mov r0, r8
	movs r1, #2
	bl _._3Msg
	mov r0, sb
	cmp r0, #0
	bne _08061870
	mov r0, sl
	movs r1, #0
_08061868:
	movs r2, #0
	bl sub_08061954
	b _0806187A
_08061870:
	mov r0, sl
	movs r1, #1
	movs r2, #1
	bl sub_08061954
_0806187A:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start tellGaveUpItem
tellGaveUpItem: @ 0x0806188C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r1, #0
	bl getPartyCount
	cmp r0, #1
	bgt _080618F4
	movs r0, #0
	bl sub_080729F8
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldrh r1, [r4, #0x24]
	add r5, sp, #0x10
	adds r0, r5, #0
	bl getName__5GoodsUs
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x93
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460__3MsgiRC3MsgN22
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
	b _0806194A
_080618F4:
	movs r0, #0
	bl sub_080729F8
	adds r1, r0, #0
	ldr r2, [r1, #0x1c]
	movs r0, #0xc4
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0
	ldrsh r3, [r2, r0]
	add r0, sp, #4
	ldr r2, [r2, #4]
	adds r1, r1, r3
	bl _call_via_r2
	ldrh r1, [r4, #0x24]
	add r5, sp, #0x10
	adds r0, r5, #0
	bl getName__5GoodsUs
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __3Msg
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x94
	add r2, sp, #4
	adds r3, r5, #0
	bl sub_08073460__3MsgiRC3MsgN22
	adds r0, r4, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r5, #0
	movs r1, #2
	bl _._3Msg
	add r0, sp, #4
	movs r1, #2
	bl _._3Msg
_0806194A:
	adds r0, r6, #0
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08061954
sub_08061954: @ 0x08061954
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x28]
	cmp r0, r1
	bne _08061966
	cmp r2, #1
	bne _0806196C
_08061966:
	str r1, [r3, #0x28]
	movs r0, #1
	b _0806196E
_0806196C:
	movs r0, #0
_0806196E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08061974
sub_08061974: @ 0x08061974
	push {r4, lr}
	movs r4, #0
_08061978:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08061A00 @ =sub_0809D880
	bl sub_08061A3C
	adds r4, #1
	cmp r4, #0x3f
	bls _08061978
	ldr r1, _08061A04 @ =sub_0809D860
	movs r0, #1
	bl sub_08061A3C
	ldr r1, _08061A08 @ =sub_0809D698
	movs r0, #0x25
	bl sub_08061A3C
	ldr r1, _08061A0C @ =sub_0809D538
	movs r0, #0x26
	bl sub_08061A3C
	ldr r1, _08061A10 @ =sub_0809D678
	movs r0, #0x27
	bl sub_08061A3C
	ldr r1, _08061A14 @ =sub_0809D658
	movs r0, #0x28
	bl sub_08061A3C
	ldr r1, _08061A18 @ =sub_0809D638
	movs r0, #0x29
	bl sub_08061A3C
	ldr r1, _08061A1C @ =sub_0809D618
	movs r0, #0x2a
	bl sub_08061A3C
	ldr r1, _08061A20 @ =sub_0809D5F8
	movs r0, #0x2e
	bl sub_08061A3C
	ldr r1, _08061A24 @ =sub_0809D5D8
	movs r0, #0x2f
	bl sub_08061A3C
	ldr r1, _08061A28 @ =sub_0809D5B8
	movs r0, #0x30
	bl sub_08061A3C
	ldr r1, _08061A2C @ =sub_0809D598
	movs r0, #3
	bl sub_08061A3C
	ldr r1, _08061A30 @ =sub_0809D578
	movs r0, #0x19
	bl sub_08061A3C
	ldr r1, _08061A34 @ =sub_0809D558
	movs r0, #6
	bl sub_08061A3C
	ldr r1, _08061A38 @ =sub_0809D518
	movs r0, #0x2c
	bl sub_08061A3C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061A00: .4byte sub_0809D880
_08061A04: .4byte sub_0809D860
_08061A08: .4byte sub_0809D698
_08061A0C: .4byte sub_0809D538
_08061A10: .4byte sub_0809D678
_08061A14: .4byte sub_0809D658
_08061A18: .4byte sub_0809D638
_08061A1C: .4byte sub_0809D618
_08061A20: .4byte sub_0809D5F8
_08061A24: .4byte sub_0809D5D8
_08061A28: .4byte sub_0809D5B8
_08061A2C: .4byte sub_0809D598
_08061A30: .4byte sub_0809D578
_08061A34: .4byte sub_0809D558
_08061A38: .4byte sub_0809D518

	thumb_func_start sub_08061A3C
sub_08061A3C: @ 0x08061A3C
	lsls r0, r0, #0x10
	ldr r2, _08061A48 @ =gUnknown_02002218
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08061A48: .4byte gUnknown_02002218

	thumb_func_start sub_08061A4C
sub_08061A4C: @ 0x08061A4C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08061A64 @ =gUnknown_02002218
	lsls r2, r0, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_08061A64: .4byte gUnknown_02002218

	thumb_func_start sub_08061A68
sub_08061A68: @ 0x08061A68
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	bl __4Base
	ldr r0, _08061AD8 @ =vt_09F4B948
	str r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #0
	str r0, [r5, #0x24]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r1, #0x10
	str r0, [r5, #0x34]
	str r0, [r1, #4]
	str r0, [r1, #8]
	subs r1, #4
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08061AE8
	bl get__12ClockManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _08061ADC @ =_vt.3Unk
	mov r8, r0
	ldr r0, _08061AE0 @ =_vt.8AppClock
	str r0, [sp, #0x20]
	ldr r0, _08061AE4 @ =gUnknown_080F6704
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r0, r8
	str r0, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08061AD8: .4byte vt_09F4B948
_08061ADC: .4byte _vt.3Unk
_08061AE0: .4byte _vt.8AppClock
_08061AE4: .4byte gUnknown_080F6704

	thumb_func_start sub_08061AE8
sub_08061AE8: @ 0x08061AE8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r6, _08061B28 @ =gLevelStatTable
_08061AF0:
	ldr r0, _08061B2C @ =gSave
	adds r0, r4, r0
	ldrb r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r6
	adds r0, #0xbc
	ldrb r0, [r0]
	cmp r0, #1
	bne _08061B1C
	ldr r1, [r5, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #4]
	adds r1, r3, #0
	bl _call_via_r2
_08061B1C:
	adds r4, #1
	cmp r4, #4
	ble _08061AF0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061B28: .4byte gLevelStatTable
_08061B2C: .4byte gSave

	thumb_func_start sub_08061B30
sub_08061B30: @ 0x08061B30
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08061B90 @ =vt_09F4B948
	str r0, [r6, #0x1c]
	movs r4, #0
	adds r1, r6, #0
	adds r1, #0x34
	ldr r0, [r1, #4]
	cmp r4, r0
	bge _08061B6C
	adds r5, r1, #0
_08061B48:
	lsls r1, r4, #2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08061B64
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08061B64:
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _08061B48
_08061B6C:
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _08061B76
	bl __builtin_vec_delete
_08061B76:
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq _08061B80
	bl __builtin_vec_delete
_08061B80:
	adds r0, r6, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061B90: .4byte vt_09F4B948

	thumb_func_start sub_08061B94
sub_08061B94: @ 0x08061B94
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08061C08 @ =0xFFFF0000
	ldr r2, [sp]
	ands r2, r3
	orrs r2, r1
	str r2, [sp]
	adds r4, r0, #0
	adds r4, #0x24
	mov r7, sp
	ldr r1, [r4, #4]
	adds r5, r1, #1
	ldr r0, [r0, #0x24]
	cmp r0, r5
	bge _08061BEE
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08061BC0
	adds r0, r1, #0
_08061BC0:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08061BE0
	adds r1, r0, #0
_08061BD6:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08061BD6
_08061BE0:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08061BEA
	bl __builtin_vec_delete
_08061BEA:
	str r5, [r4]
	str r6, [r4, #8]
_08061BEE:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r7]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061C08: .4byte 0xFFFF0000

	thumb_func_start sub_08061C0C
sub_08061C0C: @ 0x08061C0C
	push {lr}
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start sub_08061C1C
sub_08061C1C: @ 0x08061C1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r0, #0x30
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bgt _08061CB0
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r6, #0
	adds r2, #0x24
	ldr r1, [r2, #4]
	adds r0, r0, r1
	movs r1, #3
	mov sb, r2
	cmp r1, r0
	ble _08061C58
	adds r1, r0, #0
_08061C58:
	mov r8, r1
	ldr r1, [r6, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	cmp r4, r8
	bge _08061CB0
	mov r5, sb
	movs r0, #0
	mov sl, r0
_08061C76:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r5, #8]
	ldrh r2, [r0]
	adds r0, r6, #0
	bl sub_08061CC8
	ldr r2, [r5, #4]
	adds r7, r4, #1
	cmp sl, r2
	bge _08061CAA
	mov r1, sb
	ldr r0, [r1, #8]
	subs r1, r2, #1
	adds r4, r0, #4
	adds r3, r0, #0
	cmp r1, #0
	ble _08061CA4
_08061C9A:
	ldm r4!, {r0}
	stm r3!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08061C9A
_08061CA4:
	ldr r0, [r5, #4]
	subs r0, #1
	str r0, [r5, #4]
_08061CAA:
	adds r4, r7, #0
	cmp r4, r8
	blt _08061C76
_08061CB0:
	adds r1, r6, #0
	adds r1, #0x30
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08061CC8
sub_08061CC8: @ 0x08061CC8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x48
	adds r7, r0, #0
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	bl create__12GuestFactoryUs
	str r0, [sp, #0x44]
	adds r4, r7, #0
	adds r4, #0x34
	add r0, sp, #0x44
	mov r8, r0
	ldr r0, [r4, #4]
	adds r5, r0, #1
	ldr r0, [r7, #0x34]
	add r1, sp, #0x20
	mov sb, r1
	cmp r0, r5
	bge _08061D2C
	lsls r1, r5, #1
	movs r0, #4
	cmp r0, r1
	bge _08061CFE
	adds r0, r1, #0
_08061CFE:
	adds r5, r0, #0
	lsls r0, r5, #2
	bl __builtin_vec_new
	adds r6, r0, #0
	ldr r3, [r4, #8]
	adds r2, r6, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _08061D1E
	adds r1, r0, #0
_08061D14:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bne _08061D14
_08061D1E:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08061D28
	bl __builtin_vec_delete
_08061D28:
	str r5, [r4]
	str r6, [r4, #8]
_08061D2C:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	lsls r0, r2, #2
	adds r0, r0, r1
	mov r3, r8
	ldr r1, [r3]
	str r1, [r0]
	adds r2, #1
	str r2, [r4, #4]
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r1, _08061DD4 @ =_vt.3Unk
	mov r8, r1
	ldr r0, _08061DD8 @ =_vt.7Suspend
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r3, r8
	str r3, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r0, #0
	ldrsh r5, [r4, r0]
	adds r5, r7, r5
	ldr r6, [sp, #0x44]
	add r0, sp, #0x20
	bl __4Base
	str r6, [sp, #0x40]
	ldr r0, _08061DDC @ =_vt.8UnitJoin
	str r0, [sp, #0x3c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sb
	bl _call_via_r2
	mov r1, r8
	str r1, [sp, #0x3c]
	mov r0, sb
	movs r1, #2
	bl _._4Base
	ldr r4, [r7, #0x1c]
	adds r4, #0x50
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r7, r5
	mov r0, sp
	bl __4Base
	ldr r0, _08061DE0 @ =_vt.6Resume
	str r0, [sp, #0x1c]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	mov r1, sp
	bl _call_via_r2
	mov r0, r8
	str r0, [sp, #0x1c]
	mov r0, sp
	movs r1, #2
	bl _._4Base
	add sp, #0x48
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061DD4: .4byte _vt.3Unk
_08061DD8: .4byte _vt.7Suspend
_08061DDC: .4byte _vt.8UnitJoin
_08061DE0: .4byte _vt.6Resume

	thumb_func_start sub_08061DE4
sub_08061DE4: @ 0x08061DE4
	ldr r0, [r0, #0x38]
	bx lr

	thumb_func_start sub_08061DE8
sub_08061DE8: @ 0x08061DE8
	lsls r1, r1, #2
	ldr r0, [r0, #0x3c]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
