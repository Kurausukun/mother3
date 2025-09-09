	.syntax unified
sub_0809C540:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0807A904
	ldr r0, _0809C5CC
	str r0, [r5, #0x20]
	ldr r0, _0809C5D0
	str r0, [r5, #0x1c]
	bl get__13BattleManager
	adds r6, r0, #0
	add r0, sp, #4
	bl __4Base
	ldr r0, _0809C5D4
	mov r8, r0
	ldr r0, _0809C5D8
	str r0, [sp, #0x20]
	ldr r0, _0809C5DC
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
	ldr r0, _0809C5E0
	str r0, [sp, #0x20]
	ldr r0, _0809C5E4
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
_0809C5CC: .4byte vt_09F48BF8
_0809C5D0: .4byte vt_09F48C70
_0809C5D4: .4byte _vt.3Unk
_0809C5D8: .4byte _vt.13UnitTurnBegin
_0809C5DC: .4byte gUnknown_080F52C8
_0809C5E0: .4byte _vt.11UnitTurnEnd
_0809C5E4: .4byte gUnknown_080F52D0
	.syntax divided
