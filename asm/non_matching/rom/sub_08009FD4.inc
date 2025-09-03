	.syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r2, _0800A05C
	adds r1, r0, r2
	movs r2, #0
	strb r2, [r1]
	ldr r3, _0800A060
	adds r1, r0, r3
	movs r3, #1
	strb r3, [r1]
	ldr r4, _0800A064
	adds r1, r0, r4
	strb r2, [r1]
	movs r7, #0xc2
	lsls r7, r7, #8
	adds r1, r0, r7
	strb r3, [r1]
	ldr r3, _0800A068
	adds r1, r0, r3
	strb r2, [r1]
	adds r4, #1
	adds r1, r0, r4
	strb r2, [r1]
	subs r7, #0x1b
	adds r1, r0, r7
	strb r2, [r1]
	adds r3, #0x28
	adds r1, r0, r3
	strb r2, [r1]
	subs r4, #0x25
	adds r6, r0, r4
	adds r7, #0x23
	adds r4, r0, r7
	str r4, [r6]
	ldr r1, _0800A06C
	adds r5, r0, r1
	ldr r3, _0800A070
	adds r2, r0, r3
	str r2, [r5]
	subs r7, #0x34
	adds r1, r0, r7
	adds r7, #0x54
	adds r3, r0, r7
	str r3, [r1]
	subs r7, #0x38
	adds r1, r0, r7
	str r2, [r1]
	subs r7, #0x14
	adds r1, r0, r7
	str r3, [r1]
	ldr r3, _0800A074
	adds r1, r0, r3
	str r2, [r1]
	adds r7, #4
	adds r1, r0, r7
	str r4, [r1]
	adds r3, #4
	adds r1, r0, r3
	str r2, [r1]
	ldr r4, _0800A078
	adds r1, r0, r4
	str r6, [r1]
	adds r7, #0x24
	adds r0, r0, r7
	str r5, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A05C: .4byte 0x0000C1D8
_0800A060: .4byte 0x0000C1E4
_0800A064: .4byte 0x0000C1F4
_0800A068: .4byte 0x0000C1D9
_0800A06C: .4byte 0x0000C1EC
_0800A070: .4byte 0x0000C408
_0800A074: .4byte 0x0000C1F8
_0800A078: .4byte 0x0000C1E8
	.syntax divided
