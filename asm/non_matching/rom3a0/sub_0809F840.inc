	.syntax unified
sub_0809F840:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xa
	bl sub_08077D8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
