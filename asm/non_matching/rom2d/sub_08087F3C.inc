	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08087F4C
	bl __builtin_vec_delete
_08087F4C:
	movs r0, #0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08087F80
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #1
	beq _08087F66
	cmp r0, #2
	beq _08087F70
	b _08087F78
_08087F66:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08087F9C
	b _08087F78
_08087F70:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08087FA8
_08087F78:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
