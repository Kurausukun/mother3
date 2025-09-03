.syntax unified
.global _._3Msg
_._3Msg: @ 0x0806E308
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806E330 @ =_vt.3Msg
	str r0, [r4, #8]
	ldr r0, [r4]
	cmp r0, #0
	beq _0806E31C
	bl __builtin_vec_delete
_0806E31C:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0806E32A
	adds r0, r4, #0
	bl __builtin_delete
_0806E32A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E330: .4byte _vt.3Msg
.syntax divided
