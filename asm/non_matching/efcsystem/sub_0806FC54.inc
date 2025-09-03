	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	adds r0, #0x20
	bl sub_0805D2D4
	ldr r5, [r5]
	ldrh r0, [r5, #4]
	strh r0, [r4, #0x28]
	adds r0, r5, #0
	adds r0, #0xc
	str r0, [r4, #0x2c]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0x30]
	ldr r2, [r4, #0x1c]
	adds r2, #0x88
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x28]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r0, [r4, #0x34]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x38]
	ldr r2, [r4, #0x1c]
	adds r2, #0x98
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x30]
	ldr r2, [r2, #4]
	bl _call_via_r2
	str r0, [r4, #0x3c]
	ldr r2, [r4, #0x1c]
	adds r2, #0xa8
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	ldrh r1, [r4, #0x38]
	ldr r2, [r2, #4]
	bl _call_via_r2
	ldr r1, [r0]
	ldr r0, _0806FCBC
	cmp r1, r0
	bne _0806FCC0
	movs r0, #1
	b _0806FCC2
	.align 2, 0
_0806FCBC: .4byte 0x6366657E
_0806FCC0:
	movs r0, #0
_0806FCC2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
