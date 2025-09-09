	.syntax unified
sub_0809B420:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809B478
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _0809B47C
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B43E
	bl __builtin_vec_delete
_0809B43E:
	ldr r1, _0809B480
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B44C
	bl __builtin_vec_delete
_0809B44C:
	ldr r1, _0809B484
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B45A
	bl __builtin_vec_delete
_0809B45A:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B46A
	bl __builtin_vec_delete
_0809B46A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809B478: .4byte vt_09F46450
_0809B47C: .4byte 0x00000F84
_0809B480: .4byte 0x00000F78
_0809B484: .4byte 0x00000F6C
	.syntax divided
