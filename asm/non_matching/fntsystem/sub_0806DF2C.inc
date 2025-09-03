	.syntax unified
sub_0806DF2C:
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x24]
	cmp r1, r0
	beq _0806DF42
	adds r0, r4, #0
	bl sub_0806E0FC
	adds r0, r4, #0
	bl sub_0806E150
_0806DF42:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
