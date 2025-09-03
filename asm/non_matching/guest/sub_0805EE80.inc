	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805EE9C
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x60
	bl sub_08071F8C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805EE9C: .4byte vt_09F45058
	.syntax divided
