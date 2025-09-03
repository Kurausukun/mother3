	.syntax unified
	push {lr}
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	beq _080805C0
	movs r0, #1
_080805C0:
	pop {r1}
	bx r1
	.syntax divided
