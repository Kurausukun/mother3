	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805F474
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0805F45C
	bl __builtin_vec_delete
_0805F45C:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0805F466
	bl __builtin_vec_delete
_0805F466:
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F474: .4byte vt_09F46768
	.syntax divided
