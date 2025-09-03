	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0803639A
	bl sub_0803B860
	movs r0, #0
	str r0, [r4, #0x3c]
_0803639A:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
