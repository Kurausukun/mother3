	.syntax unified
sub_080C0940:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080830F0
	ldr r0, _080C09FC
	str r0, [r5, #0x1c]
	bl get__13BattleManager
	adds r6, r0, #0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r0, _080C0A00
	mov r8, r0
	ldr r0, _080C0A04
	str r0, [sp, #0x20]
	movs r0, #0
	strh r0, [r4, #0x20]
	ldr r0, _080C0A08
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
	ldr r0, _080C0A0C
	str r0, [sp, #0x20]
	ldr r0, _080C0A10
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
	ldr r0, _080C0A14
	str r0, [sp, #0x20]
	ldr r0, _080C0A18
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
	ldr r0, _080C0A1C
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
	.syntax divided
