	.syntax unified
sub_0809FD44:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __5GuestUs
	ldr r0, _0809FDE0
	str r0, [r5, #0x20]
	ldr r0, _0809FDE4
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
	ldr r0, _0809FDE8
	mov r8, r0
	ldr r0, _0809FDEC
	str r0, [sp, #0x20]
	ldr r0, _0809FDF0
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
	ldr r0, _0809FDF4
	str r0, [sp, #0x20]
	ldr r0, _0809FDF8
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
	ldr r0, _0809FDFC
	str r0, [r5, #0x20]
	ldr r0, _0809FE00
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809FDE0: .4byte vt_09F4D280
_0809FDE4: .4byte vt_09F4D2F8
_0809FDE8: .4byte _vt.3Unk
_0809FDEC: .4byte _vt.13UnitTurnBegin
_0809FDF0: .4byte gUnknown_080F741C
_0809FDF4: .4byte _vt.11UnitTurnEnd
_0809FDF8: .4byte gUnknown_080F7424
_0809FDFC: .4byte vt_09F4BD50
_0809FE00: .4byte vt_09F4BDC8
	.syntax divided
