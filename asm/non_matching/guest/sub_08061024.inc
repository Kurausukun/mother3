	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl __4Base
	ldr r0, _08061044
	str r0, [r5, #0x1c]
	strh r4, [r5, #0x24]
	movs r0, #2
	str r0, [r5, #0x28]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08061044: .4byte vt_09F490E8
	.syntax divided
