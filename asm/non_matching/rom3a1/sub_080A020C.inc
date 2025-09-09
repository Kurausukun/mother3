	.syntax unified
sub_080A020C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __5GuestUs
	ldr r0, _080A02A0
	str r0, [r5, #0x20]
	ldr r0, _080A02A4
	str r0, [r5, #0x1c]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _080A02A8
	mov r8, r0
	ldr r0, _080A02AC
	str r0, [sp, #0x20]
	ldr r0, _080A02B0
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
	ldr r0, _080A02B4
	str r0, [sp, #0x20]
	ldr r0, _080A02B8
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
_080A02A0: .4byte vt_09F4D280
_080A02A4: .4byte vt_09F4D2F8
_080A02A8: .4byte _vt.3Unk
_080A02AC: .4byte _vt.13UnitTurnBegin
_080A02B0: .4byte gUnknown_080F741C
_080A02B4: .4byte _vt.11UnitTurnEnd
_080A02B8: .4byte gUnknown_080F7424
	.syntax divided
