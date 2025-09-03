	.syntax unified
sub_0805FA8C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0805FB2C
	str r0, [r6, #0x1c]
	movs r4, #0
	adds r1, r6, #0
	adds r1, #0x5c
	ldr r0, [r1, #4]
	cmp r4, r0
	bge _0805FAC8
	adds r5, r1, #0
_0805FAA4:
	lsls r1, r4, #2
	ldr r0, [r5, #8]
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _0805FAC0
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0805FAC0:
	adds r4, #1
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _0805FAA4
_0805FAC8:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0805FAD6
	bl __builtin_vec_delete
_0805FAD6:
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	beq _0805FAE0
	bl __builtin_vec_delete
_0805FAE0:
	ldr r0, [r6, #0x70]
	cmp r0, #0
	beq _0805FAEA
	bl __builtin_vec_delete
_0805FAEA:
	ldr r0, [r6, #0x64]
	cmp r0, #0
	beq _0805FAF4
	bl __builtin_vec_delete
_0805FAF4:
	ldr r0, [r6, #0x54]
	cmp r0, #0
	beq _0805FAFE
	bl __builtin_vec_delete
_0805FAFE:
	ldr r0, [r6, #0x48]
	cmp r0, #0
	beq _0805FB08
	bl __builtin_vec_delete
_0805FB08:
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _0805FB12
	bl __builtin_vec_delete
_0805FB12:
	ldr r0, [r6, #0x30]
	cmp r0, #0
	beq _0805FB1C
	bl __builtin_vec_delete
_0805FB1C:
	adds r0, r6, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FB2C: .4byte vt_09F467F8
	.syntax divided
