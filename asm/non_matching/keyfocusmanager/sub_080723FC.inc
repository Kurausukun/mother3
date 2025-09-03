	.syntax unified
sub_080723FC:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08072420
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _08072410
	bl __builtin_vec_delete
_08072410:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08072420: .4byte vt_09F81160
	.syntax divided
