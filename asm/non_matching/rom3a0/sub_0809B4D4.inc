	.syntax unified
sub_0809B4D4:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809B52C
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809BCE0
	ldr r1, _0809B530
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B4F2
	bl __builtin_vec_delete
_0809B4F2:
	ldr r1, _0809B534
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B500
	bl __builtin_vec_delete
_0809B500:
	ldr r1, _0809B538
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B50E
	bl __builtin_vec_delete
_0809B50E:
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0809B51E
	bl __builtin_vec_delete
_0809B51E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805DB84
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809B52C: .4byte vt_09F46450
_0809B530: .4byte 0x00000F84
_0809B534: .4byte 0x00000F78
_0809B538: .4byte 0x00000F6C
	.syntax divided
