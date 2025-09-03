	.syntax unified
sub_08087F10:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08087F38
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08087F24
	bl __builtin_vec_delete
_08087F24:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08087F32
	adds r0, r4, #0
	bl __builtin_delete
_08087F32:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08087F38: .4byte vt_09F85018
	.syntax divided
