	.syntax unified
sub_080B4598:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #2
_080B45A0:
	adds r0, r6, #0
	adds r1, r5, #0
	bl action_a0__6ActionP4Unit
	subs r4, #1
	cmp r4, #0
	bge _080B45A0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
