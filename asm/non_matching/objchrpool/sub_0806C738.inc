	.syntax unified
	push {lr}
	movs r2, #0
	adds r0, #0x20
	movs r1, #3
_0806C740:
	str r2, [r0, #4]
	adds r0, #0xc
	subs r1, #1
	cmp r1, #0
	bge _0806C740
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
