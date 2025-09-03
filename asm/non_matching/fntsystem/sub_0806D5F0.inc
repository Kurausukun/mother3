	.syntax unified
	push {lr}
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, _0806D600
	cmp r1, r0
	bne _0806D604
	ldrh r0, [r2, #4]
	b _0806D606
	.align 2, 0
_0806D600: .4byte 0x20676363
_0806D604:
	movs r0, #1
_0806D606:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
