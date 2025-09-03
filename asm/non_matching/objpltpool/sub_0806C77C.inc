	.syntax unified
	push {r4, lr}
	ldr r1, _0806C7A4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806C798
	ldr r4, _0806C7A8
	movs r0, #0x2c
	bl __builtin_new
	bl sub_0806C800
	str r0, [r4]
_0806C798:
	ldr r0, _0806C7A8
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806C7A4: .4byte gUnknown_02001D28
_0806C7A8: .4byte gUnknown_02001D2C
	.syntax divided
