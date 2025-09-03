	.syntax unified
cmd_play_sound:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl play_sound
	lsls r6, r4, #0x10
	asrs r0, r6, #0x10
	movs r7, #1
	rsbs r7, r7, #0
	cmp r0, r7
	beq _08020E54
	adds r0, r5, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	beq _08020E54
	lsrs r0, r6, #0x10
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_08020E54:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
