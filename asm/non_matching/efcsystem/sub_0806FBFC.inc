	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0806FC24
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x20
	bl sub_0805D2A4
	movs r0, #0
	strh r0, [r4, #0x28]
	strh r0, [r4, #0x30]
	strh r0, [r4, #0x38]
	bl sub_0806B040
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806FC24: .4byte vt_09F80508
	.syntax divided
