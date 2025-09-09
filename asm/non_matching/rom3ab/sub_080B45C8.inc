	.syntax unified
sub_080B45C8:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl action_a0__6ActionP4Unit
	adds r0, r4, #0
	adds r1, r5, #0
	bl action_a0__6ActionP4Unit
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
