	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08061B90
	str r0, [r6, #0x1c]
	movs r4, #0
	adds r1, r6, #0
	adds r1, #0x34
	ldr r0, [r1, #4]
	cmp r4, r0
	bge _08061B6C
	adds r5, r1, #0
_08061B48:
	lsls r1, r4, #2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08061B64
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_08061B64:
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _08061B48
_08061B6C:
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _08061B76
	bl __builtin_vec_delete
_08061B76:
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq _08061B80
	bl __builtin_vec_delete
_08061B80:
	adds r0, r6, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061B90: .4byte vt_09F4B948
	.syntax divided
