	.syntax unified
sub_080988DC:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08098934
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _08098938
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _080988FA
	bl __builtin_vec_delete
_080988FA:
	ldr r1, _0809893C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08098908
	bl __builtin_vec_delete
_08098908:
	ldr r1, _08098940
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08098916
	bl __builtin_vec_delete
_08098916:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08098926
	bl __builtin_vec_delete
_08098926:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08098934: .4byte vt_09F46450
_08098938: .4byte 0x00000F84
_0809893C: .4byte 0x00000F78
_08098940: .4byte 0x00000F6C
	.syntax divided
