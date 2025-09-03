	.syntax unified
	push {r4, lr}
	movs r3, #0
	str r3, [r0, #0x24]
	str r3, [r0, #0x20]
	str r3, [r0, #0x28]
	ldr r2, _08024A64
	adds r1, r0, r2
	str r3, [r1]
	adds r2, #4
	adds r1, r0, r2
	strh r3, [r1]
	adds r2, #2
	adds r1, r0, r2
	strh r3, [r1]
	adds r2, #4
	adds r1, r0, r2
	strh r3, [r1]
	ldr r1, _08024A68
	adds r4, r0, r1
	ldrb r2, [r4]
	movs r1, #9
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r1, r2
	subs r2, #0x10
	ands r1, r2
	subs r2, #0x20
	ands r1, r2
	movs r2, #0x7f
	ands r1, r2
	strb r1, [r4]
	str r3, [r0, #0x2c]
	str r3, [r0, #0x30]
	ldr r2, _08024A6C
	adds r1, r0, r2
	strh r3, [r1]
	adds r0, #0x2c
	movs r1, #0xfa
	lsls r1, r1, #4
	bl memclear
	movs r1, #0
	ldr r3, _08024A70
	movs r2, #0
	adds r4, r3, #0
	adds r4, #0x14
_08024A48:
	lsls r0, r1, #2
	adds r0, r0, r3
	str r2, [r0]
	lsls r0, r1, #1
	adds r0, r0, r4
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bls _08024A48
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024A64: .4byte 0x00000FD8
_08024A68: .4byte 0x00000FE8
_08024A6C: .4byte 0x00000FCC
_08024A70: .4byte gUnknown_0200E098
	.syntax divided
