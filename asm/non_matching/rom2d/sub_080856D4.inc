	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x2c]
	cmp r0, #1
	bne _080856E2
	movs r0, #2
	str r0, [r1, #0x2c]
_080856E2:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
