	.syntax unified
sub_0805D880:
	push {r4, r5, lr}
	ldr r1, _0805D8B4
	ldr r0, [r1]
	cmp r0, #0
	ble _0805D8AC
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _0805D8AC
	ldr r5, _0805D8B8
	ldr r2, [r5]
	cmp r2, #0
	beq _0805D8AA
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805D8AA:
	str r4, [r5]
_0805D8AC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D8B4: .4byte gUnknown_02002010
_0805D8B8: .4byte sBattleInstance
	.syntax divided
