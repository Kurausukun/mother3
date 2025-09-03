	.syntax unified
	push {r4, lr}
	ldr r1, _0806C450
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806C444
	ldr r4, _0806C454
	movs r0, #0x50
	bl __builtin_new
	bl sub_0806C4AC
	str r0, [r4]
_0806C444:
	ldr r0, _0806C454
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806C450: .4byte gUnknown_02001D14
_0806C454: .4byte gUnknown_02001D18
	.syntax divided
