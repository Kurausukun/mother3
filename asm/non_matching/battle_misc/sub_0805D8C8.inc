	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _0805D8F4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0805D8E8
	bl sub_0805EF90
	adds r0, r4, #0
	bl sub_0805EFFC
	ldr r1, _0805D8F8
	str r0, [r1]
_0805D8E8:
	ldr r0, _0805D8F8
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805D8F4: .4byte gUnknown_02002010
_0805D8F8: .4byte sBattleInstance
	.syntax divided
