	.syntax unified
sub_0809FEE4:
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl __5GuestUs
	ldr r0, _0809FF90
	str r0, [r5, #0x20]
	ldr r0, _0809FF94
	str r0, [r5, #0x1c]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #0
	mov sb, r1
	str r1, [r0]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FF98
	mov r8, r0
	ldr r0, _0809FF9C
	str r0, [sp, #0x20]
	ldr r0, _0809FFA0
	ldr r3, [r0]
	ldr r4, [r0, #4]
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl listen__4BasePvRC4BaseG9ClockData
	mov r1, r8
	str r1, [sp, #0x20]
	add r0, sp, #4
	movs r1, #2
	bl _._4Base
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809FFA4
	str r0, [sp, #0x20]
	ldr r0, _0809FFA8
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
	ldr r0, _0809FFAC
	str r0, [r5, #0x20]
	ldr r0, _0809FFB0
	str r0, [r5, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	mov r1, sb
	str r1, [r0]
	adds r0, r5, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809FF90: .4byte vt_09F4D280
_0809FF94: .4byte vt_09F4D2F8
_0809FF98: .4byte _vt.3Unk
_0809FF9C: .4byte _vt.13UnitTurnBegin
_0809FFA0: .4byte gUnknown_080F741C
_0809FFA4: .4byte _vt.11UnitTurnEnd
_0809FFA8: .4byte gUnknown_080F7424
_0809FFAC: .4byte vt_09F4C468
_0809FFB0: .4byte vt_09F4C4E0
	.syntax divided
