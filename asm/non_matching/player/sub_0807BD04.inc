	.syntax unified
sub_0807BD04:
	push {lr}
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_0808AF2C
	pop {r1}
	bx r1
	.syntax divided
