	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806E63C
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0806E640
	bl sub_0806B07C
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806E63C: .4byte vt_09F7FF50
	.syntax divided
