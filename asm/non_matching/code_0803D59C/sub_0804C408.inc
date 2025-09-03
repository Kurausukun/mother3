	.syntax unified
	push {r4, lr}
	ldr r1, _0804C430
	ldr r0, _0804C434
	adds r2, r1, r0
	movs r3, #0
	movs r0, #0x11
	strb r0, [r2]
	ldr r0, _0804C438
	adds r1, r1, r0
	strh r3, [r1, #4]
	strh r3, [r1, #0xa]
	ldr r0, _0804C43C
	ldrb r0, [r0]
	cmp r0, #4
	bne _0804C440
	bl sub_0804C51C
	bl sub_0803F774
	b _0804C46C
	.align 2, 0
_0804C430: .4byte gSomeBlend
_0804C434: .4byte 0x00004260
_0804C438: .4byte 0x00003020
_0804C43C: .4byte gUnknown_0200F920
_0804C440:
	ldr r4, _0804C458
	ldrb r0, [r4, #1]
	cmp r0, #4
	bne _0804C45C
	movs r0, #0xe
	bl sub_0804C5B0
	movs r0, #0xa
	bl sub_0803F8F8
	b _0804C46C
	.align 2, 0
_0804C458: .4byte gUnknown_02004100
_0804C45C:
	ldrb r0, [r4, #1]
	adds r0, #0xa
	bl sub_0804C5B0
	ldrb r0, [r4, #1]
	adds r0, #6
	bl sub_0803F8F8
_0804C46C:
	bl sub_08055788
	ldr r0, _0804C488
	ldrb r0, [r0]
	cmp r0, #4
	bne _0804C490
	ldr r0, _0804C48C
	bl sub_0804BB10
	movs r0, #0
	bl sub_0804B6E8
	b _0804C4A4
	.align 2, 0
_0804C488: .4byte gUnknown_0200F920
_0804C48C: .4byte gUnknown_0201A520
_0804C490:
	ldr r2, _0804C4AC
	ldr r0, _0804C4B0
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0804C4A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804C4AC: .4byte gSomeBlend
_0804C4B0: .4byte 0x00004501
	.syntax divided
