	.syntax unified
sub_0806D4D0:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806D504
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #1
	beq _0806D4E8
	cmp r0, #2
	beq _0806D4F2
	b _0806D4FA
_0806D4E8:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D520
	b _0806D4FA
_0806D4F2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D52C
_0806D4FA:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
