	.syntax unified
	push {lr}
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0808AF2C
	pop {r1}
	bx r1
	.syntax divided
