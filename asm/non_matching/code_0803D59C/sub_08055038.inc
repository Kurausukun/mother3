	.syntax unified
	push {lr}
	movs r1, #0
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _08055044
	movs r1, #1
_08055044:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
