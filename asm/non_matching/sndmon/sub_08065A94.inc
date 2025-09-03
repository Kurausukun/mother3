	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08065AEC
	str r0, [r6, #0x10]
	movs r4, #0
	adds r1, r6, #4
	ldr r0, [r1, #4]
	cmp r4, r0
	bge _08065ACE
	adds r5, r1, #0
_08065AAA:
	lsls r1, r4, #2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08065AC6
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08065AC6:
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _08065AAA
_08065ACE:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _08065AD8
	bl __builtin_vec_delete
_08065AD8:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08065AE6
	adds r0, r6, #0
	bl __builtin_delete
_08065AE6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065AEC: .4byte vt_09F7E240
	.syntax divided
