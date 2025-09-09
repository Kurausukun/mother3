	.syntax unified
sub_080B4B14:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #5
_080B4B1C:
	adds r0, r6, #0
	adds r1, r5, #0
	bl action_a0__6ActionP4Unit
	subs r4, #1
	cmp r4, #0
	bge _080B4B1C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
