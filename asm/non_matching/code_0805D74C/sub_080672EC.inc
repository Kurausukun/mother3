	.syntax unified
	push {lr}
	movs r2, #0x88
	lsls r2, r2, #3
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	bne _080672FE
	movs r0, #1
	str r0, [r1]
_080672FE:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
