	.syntax unified
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _080822EA
	movs r0, #1
_080822EA:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
