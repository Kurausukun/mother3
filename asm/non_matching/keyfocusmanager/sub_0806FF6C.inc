	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	bl __4Base
	ldr r0, _0806FFA4
	str r0, [r4, #0x1c]
	movs r2, #0
	movs r1, #0
	strh r1, [r4, #0x20]
	str r1, [r4, #0x24]
	movs r0, #0x64
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x30
	strb r2, [r0]
	str r1, [r4, #0x34]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806FFBC
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806FFA4: .4byte vt_09F80680
	.syntax divided
