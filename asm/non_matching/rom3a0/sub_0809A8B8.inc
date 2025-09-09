	.syntax unified
sub_0809A8B8:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809A910
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _0809A914
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809A8D6
	bl __builtin_vec_delete
_0809A8D6:
	ldr r1, _0809A918
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809A8E4
	bl __builtin_vec_delete
_0809A8E4:
	ldr r1, _0809A91C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809A8F2
	bl __builtin_vec_delete
_0809A8F2:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809A902
	bl __builtin_vec_delete
_0809A902:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809A910: .4byte vt_09F46450
_0809A914: .4byte 0x00000F84
_0809A918: .4byte 0x00000F78
_0809A91C: .4byte 0x00000F6C
	.syntax divided
