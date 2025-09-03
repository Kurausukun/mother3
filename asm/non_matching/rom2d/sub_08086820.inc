	.syntax unified
sub_08086820:
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x2c]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08086834
	adds r0, r2, #0
	bl sub_08086838
_08086834:
	pop {r0}
	bx r0
	.syntax divided
