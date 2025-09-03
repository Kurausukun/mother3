	.syntax unified
	push {lr}
	ldr r0, [r0, #0x48]
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	beq _08082290
	movs r0, #1
_08082290:
	pop {r1}
	bx r1
	.syntax divided
