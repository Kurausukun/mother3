	.syntax unified
	push {r4, r5, lr}
	movs r5, #1
_08035118:
	adds r0, r5, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08035138
	str r0, [r4, #0x40]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #4
	bls _08035118
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
