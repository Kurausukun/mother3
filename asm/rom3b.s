.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_080C08A4
sub_080C08A4: @ 0x080C08A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x54
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080C0940
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C08C4
sub_080C08C4: @ 0x080C08C4
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C08E4
sub_080C08E4: @ 0x080C08E4
	push {r4, lr}
	ldr r2, [r0, #0x1c]
	movs r3, #0x84
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r0, r0, r3
	ldr r1, [r1, #0x20]
	ldr r2, [r2, #4]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C0904
sub_080C0904: @ 0x080C0904
	push {lr}
	ldr r1, [r0, #0x1c]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C0920
sub_080C0920: @ 0x080C0920
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x54
	bl __builtin_new
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080C0A20
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C0940
sub_080C0940: @ 0x080C0940
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080830F0
	ldr r0, _080C09FC @ =vt_09F7DD98
	str r0, [r5, #0x1c]
	bl get__13BattleManager
	adds r6, r0, #0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r0, _080C0A00 @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080C0A04 @ =_vt.10RoundBegin
	str r0, [sp, #0x20]
	movs r0, #0
	strh r0, [r4, #0x20]
	ldr r0, _080C0A08 @ =gUnknown_080FB708
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080C0A0C @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080C0A10 @ =gUnknown_080FB710
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080C0A14 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080C0A18 @ =gUnknown_080FB718
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
	ldr r0, _080C0A1C @ =vt_09F7DC80
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C09FC: .4byte vt_09F7DD98
_080C0A00: .4byte _vt.3Unk
_080C0A04: .4byte _vt.10RoundBegin
_080C0A08: .4byte gUnknown_080FB708
_080C0A0C: .4byte _vt.13UnitTurnBegin
_080C0A10: .4byte gUnknown_080FB710
_080C0A14: .4byte _vt.11UnitTurnEnd
_080C0A18: .4byte gUnknown_080FB718
_080C0A1C: .4byte vt_09F7DC80

	thumb_func_start sub_080C0A20
sub_080C0A20: @ 0x080C0A20
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080830F0
	ldr r0, _080C0AD8 @ =vt_09F7DD98
	str r0, [r5, #0x1c]
	bl get__13BattleManager
	adds r6, r0, #0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r0, _080C0ADC @ =_vt.3Unk
	mov r8, r0
	ldr r0, _080C0AE0 @ =_vt.10RoundBegin
	str r0, [sp, #0x20]
	movs r0, #0
	strh r0, [r4, #0x20]
	ldr r0, _080C0AE4 @ =gUnknown_080FB708
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080C0AE8 @ =_vt.13UnitTurnBegin
	str r0, [sp, #0x20]
	ldr r0, _080C0AEC @ =gUnknown_080FB710
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
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080C0AF0 @ =_vt.11UnitTurnEnd
	str r0, [sp, #0x20]
	ldr r0, _080C0AF4 @ =gUnknown_080FB718
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
_080C0AD8: .4byte vt_09F7DD98
_080C0ADC: .4byte _vt.3Unk
_080C0AE0: .4byte _vt.10RoundBegin
_080C0AE4: .4byte gUnknown_080FB708
_080C0AE8: .4byte _vt.13UnitTurnBegin
_080C0AEC: .4byte gUnknown_080FB710
_080C0AF0: .4byte _vt.11UnitTurnEnd
_080C0AF4: .4byte gUnknown_080FB718

	thumb_func_start sub_080C0AF8
sub_080C0AF8: @ 0x080C0AF8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _080C0B3C
	ldr r1, [r5, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	movs r0, #1
	movs r1, #3
	bl randS32
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl InitHeal
	movs r0, #0x28
	bl setsleep
_080C0B3C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C0B44
sub_080C0B44: @ 0x080C0B44
	push {lr}
	ldr r2, _080C0B54 @ =vt_09F7DD98
	str r2, [r0, #0x1c]
	bl sub_08083144
	pop {r0}
	bx r0
	.align 2, 0
_080C0B54: .4byte vt_09F7DD98

	thumb_func_start nullsub_147
nullsub_147: @ 0x080C0B58
	bx lr
	.align 2, 0

	thumb_func_start nullsub_148
nullsub_148: @ 0x080C0B5C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_149
nullsub_149: @ 0x080C0B60
	bx lr
	.align 2, 0

	thumb_func_start sub_080C0B64
sub_080C0B64: @ 0x080C0B64
	push {lr}
	ldr r2, _080C0B74 @ =vt_09F7DD98
	str r2, [r0, #0x1c]
	bl sub_08083144
	pop {r0}
	bx r0
	.align 2, 0
_080C0B74: .4byte vt_09F7DD98

	thumb_func_start sub_080C0B78
sub_080C0B78: @ 0x080C0B78
	push {lr}
	movs r0, #0x38
	bl __builtin_new
	bl sub_08065DEC
	pop {r1}
	bx r1

	thumb_func_start sub_080C0B88
sub_080C0B88: @ 0x080C0B88
	ldr r0, _080C0B8C @ =gUnknown_080FD558
	bx lr
	.align 2, 0
_080C0B8C: .4byte gUnknown_080FD558

	thumb_func_start sub_080C0B90
sub_080C0B90: @ 0x080C0B90
	push {lr}
	ldr r2, _080C0BA0 @ =vt_09F7E458
	str r2, [r0, #0x1c]
	bl sub_0807113C
	pop {r0}
	bx r0
	.align 2, 0
_080C0BA0: .4byte vt_09F7E458

	thumb_func_start sub_080C0BA4
sub_080C0BA4: @ 0x080C0BA4
	push {lr}
	ldr r2, _080C0BB4 @ =vt_09F7E660
	str r2, [r0, #0x1c]
	bl sub_08071CB0
	pop {r0}
	bx r0
	.align 2, 0
_080C0BB4: .4byte vt_09F7E660

	thumb_func_start sub_080C0BB8
sub_080C0BB8: @ 0x080C0BB8
	push {lr}
	ldr r2, _080C0BC8 @ =vt_09F7E890
	str r2, [r0, #0x1c]
	bl sub_0806D9A4
	pop {r0}
	bx r0
	.align 2, 0
_080C0BC8: .4byte vt_09F7E890

	thumb_func_start sub_080C0BCC
sub_080C0BCC: @ 0x080C0BCC
	push {lr}
	ldr r2, _080C0BDC @ =vt_09F7E988
	str r2, [r0, #0x1c]
	bl sub_08071B7C
	pop {r0}
	bx r0
	.align 2, 0
_080C0BDC: .4byte vt_09F7E988

	thumb_func_start sub_080C0BE0
sub_080C0BE0: @ 0x080C0BE0
	push {lr}
	movs r0, #0xb3
	lsls r0, r0, #2
	bl __builtin_new
	bl __3Irc
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080C0BF4
sub_080C0BF4: @ 0x080C0BF4
	ldr r0, _080C0BF8 @ =gUnknown_080FEDE0
	bx lr
	.align 2, 0
_080C0BF8: .4byte gUnknown_080FEDE0
