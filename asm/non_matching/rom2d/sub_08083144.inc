	.syntax unified
sub_08083144:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08083170
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08083158
	bl __builtin_vec_delete
_08083158:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _08083162
	bl __builtin_vec_delete
_08083162:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08083170: .4byte vt_09F83C28
	.syntax divided
