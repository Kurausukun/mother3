	.syntax unified
sub_080B13D4:
	push {r4, lr}
	movs r4, #0
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080B13EE
	movs r0, #0
	movs r1, #0x63
	bl randS32
	cmp r0, #0x1d
	bgt _080B13EE
	movs r4, #1
_080B13EE:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
