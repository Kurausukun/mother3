	.syntax unified
	push {lr}
	ldr r0, [r0]
	cmp r0, #0
	beq _08088738
	ldrh r0, [r0, #2]
	b _0808873A
_08088738:
	movs r0, #0
_0808873A:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
