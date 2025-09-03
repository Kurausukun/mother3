	.syntax unified
sub_080023A4:
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r0, #0
	ldrsh r1, [r3, r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	blt _080023D2
	ldrh r4, [r2, #4]
	adds r0, r0, r4
	cmp r1, r0
	bgt _080023D2
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r4, #2
	ldrsh r0, [r2, r4]
	cmp r1, r0
	blt _080023D2
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	cmp r1, r0
	ble _080023D6
_080023D2:
	movs r0, #0
	b _080023D8
_080023D6:
	movs r0, #1
_080023D8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
