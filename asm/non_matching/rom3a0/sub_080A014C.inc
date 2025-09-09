	.syntax unified
sub_080A014C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __5GuestUs
	ldr r0, _080A01E8
	str r0, [r5, #0x20]
	ldr r0, _080A01EC
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
	ldr r0, _080A01F0
	mov r8, r0
	ldr r0, _080A01F4
	str r0, [sp, #0x20]
	ldr r0, _080A01F8
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
	ldr r0, _080A01FC
	str r0, [sp, #0x20]
	ldr r0, _080A0200
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
	ldr r0, _080A0204
	str r0, [r5, #0x20]
	ldr r0, _080A0208
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A01E8: .4byte vt_09F4D280
_080A01EC: .4byte vt_09F4D2F8
_080A01F0: .4byte _vt.3Unk
_080A01F4: .4byte _vt.13UnitTurnBegin
_080A01F8: .4byte gUnknown_080F741C
_080A01FC: .4byte _vt.11UnitTurnEnd
_080A0200: .4byte gUnknown_080F7424
_080A0204: .4byte vt_09F4CF00
_080A0208: .4byte vt_09F4CF78
	.syntax divided
