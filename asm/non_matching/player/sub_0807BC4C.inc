	.syntax unified
sub_0807BC4C:
	push {lr}
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r0, r2
	bl sub_0808AF1C
	pop {r0}
	bx r0
	.syntax divided
