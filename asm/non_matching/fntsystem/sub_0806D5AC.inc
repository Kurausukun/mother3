	.syntax unified
sub_0806D5AC:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0806D5BC
	bl __builtin_vec_delete
_0806D5BC:
	movs r0, #0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D5F0
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #1
	beq _0806D5D6
	cmp r0, #2
	beq _0806D5E0
	b _0806D5E8
_0806D5D6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D60C
	b _0806D5E8
_0806D5E0:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D618
_0806D5E8:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
