	.syntax unified
sub_0800A0A4:
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r6, r4, #0
	ldr r0, _0800A0D4
	adds r5, r3, r0
	movs r1, #7
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r5]
	movs r2, #0xf
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	cmp r4, #1
	beq _0800A124
	cmp r4, #1
	bgt _0800A0D8
	cmp r4, #0
	beq _0800A0DE
	b _0800A1A2
	.align 2, 0
_0800A0D4: .4byte 0x0000C51A
_0800A0D8:
	cmp r6, #2
	beq _0800A16C
	b _0800A1A2
_0800A0DE:
	movs r0, #1
	orrs r2, r0
	strb r2, [r5]
	ldr r0, _0800A10C
	adds r1, r3, r0
	ldr r0, _0800A110
	str r0, [r1]
	ldr r0, _0800A114
	adds r1, r3, r0
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _0800A118
	adds r1, r3, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0800A11C
	adds r1, r3, r0
	movs r0, #0x16
	strb r0, [r1]
	ldr r0, _0800A120
	adds r1, r3, r0
	movs r0, #0xcb
	b _0800A1A0
	.align 2, 0
_0800A10C: .4byte 0x0000C50C
_0800A110: .4byte gUnknown_08CE39F8
_0800A114: .4byte 0x0000C510
_0800A118: .4byte 0x0000C511
_0800A11C: .4byte 0x0000C512
_0800A120: .4byte 0x0000C508
_0800A124:
	movs r0, #1
	orrs r2, r0
	strb r2, [r5]
	ldr r0, _0800A154
	adds r1, r3, r0
	ldr r0, _0800A158
	str r0, [r1]
	ldr r0, _0800A15C
	adds r1, r3, r0
	movs r0, #8
	strb r0, [r1]
	ldr r0, _0800A160
	adds r1, r3, r0
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, _0800A164
	adds r1, r3, r0
	movs r0, #0x1b
	strb r0, [r1]
	ldr r0, _0800A168
	adds r1, r3, r0
	movs r0, #0xcb
	b _0800A1A0
	.align 2, 0
_0800A154: .4byte 0x0000C50C
_0800A158: .4byte gUnknown_08D0B010
_0800A15C: .4byte 0x0000C510
_0800A160: .4byte 0x0000C511
_0800A164: .4byte 0x0000C512
_0800A168: .4byte 0x0000C508
_0800A16C:
	ldr r1, _0800A1A8
	movs r0, #1
	strh r0, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	strb r2, [r5]
	ldr r0, _0800A1AC
	adds r1, r3, r0
	ldr r0, _0800A1B0
	str r0, [r1]
	ldr r0, _0800A1B4
	adds r1, r3, r0
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _0800A1B8
	adds r1, r3, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _0800A1BC
	adds r1, r3, r0
	movs r0, #0x12
	strb r0, [r1]
	ldr r0, _0800A1C0
	adds r1, r3, r0
	movs r0, #0x5a
_0800A1A0:
	strh r0, [r1]
_0800A1A2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A1A8: .4byte gUnknown_03004B08
_0800A1AC: .4byte 0x0000C50C
_0800A1B0: .4byte gUnknown_08D1CE78
_0800A1B4: .4byte 0x0000C510
_0800A1B8: .4byte 0x0000C511
_0800A1BC: .4byte 0x0000C512
_0800A1C0: .4byte 0x0000C508
	.syntax divided
