	.syntax unified
	push {lr}
	ldr r0, [r0]
	cmp r0, #0
	beq _08088724
	ldrh r0, [r0]
	b _08088726
_08088724:
	movs r0, #0
_08088726:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
