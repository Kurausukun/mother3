    .syntax unified
    .global _._4Unit
    _._4Unit:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08074B94 @ =0x09F81418
	str r0, [r4, #0x20]
	ldr r0, _08074B98 @ =0x09F81490
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl unit_108__4Unit
	adds r0, r4, #0
	bl sub_08075840__4Unit
	adds r0, r4, #0
	bl sub_08075400__4Unit
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08074B72
	bl __builtin_vec_delete
_08074B72:
	adds r0, r4, #0
	adds r0, #0xdc
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _08074B80
	bl __builtin_vec_delete
_08074B80:
	ldr r0, _08074B9C @ =0x09F81A50
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08074B94: .4byte 0x09F81418
_08074B98: .4byte 0x09F81490
_08074B9C: .4byte 0x09F81A50
    .syntax divided
