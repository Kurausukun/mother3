	.syntax unified
	push {lr}
	adds r0, #0x38
	bl sub_0808882C
	pop {r1}
	bx r1
	.syntax divided
