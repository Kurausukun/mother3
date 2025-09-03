	.syntax unified
	push {lr}
	ldr r1, _08068730
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806872A
	movs r0, #1
_0806872A:
	pop {r1}
	bx r1
	.align 2, 0
_08068730: .4byte 0x0000043E
	.syntax divided
