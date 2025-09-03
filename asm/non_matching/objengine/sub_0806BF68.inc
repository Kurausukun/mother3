	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806BFA4
	str r0, [r4, #0x1c]
	bl sub_0806C7B8
	bl sub_0806C464
	bl sub_0806A9A4
	ldr r1, _0806BFA8
	bl sub_0806AFA4
	bl sub_0806A9B0
	ldr r1, _0806BFAC
	adds r0, r4, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0806BF96
	bl __builtin_vec_delete
_0806BF96:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806BFA4: .4byte vt_09F7F030
_0806BFA8: .4byte 0x0000EF9F
_0806BFAC: .4byte 0x00000938
	.syntax divided
