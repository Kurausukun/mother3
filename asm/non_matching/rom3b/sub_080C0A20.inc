	.syntax unified
sub_080C0A20:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080830F0
	ldr r0, _080C0AD8
	str r0, [r5, #0x1c]
	bl get__13BattleManager
	adds r6, r0, #0
	add r4, sp, #4
	adds r0, r4, #0
	bl __4Base
	ldr r0, _080C0ADC
	mov r8, r0
	ldr r0, _080C0AE0
	str r0, [sp, #0x20]
	movs r0, #0
	strh r0, [r4, #0x20]
	ldr r0, _080C0AE4
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
	ldr r0, _080C0AE8
	str r0, [sp, #0x20]
	ldr r0, _080C0AEC
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
	ldr r0, _080C0AF0
	str r0, [sp, #0x20]
	ldr r0, _080C0AF4
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
	.syntax divided
