	.syntax unified
sub_08049C70:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	adds r6, r3, #0
	ldr r0, _08049C98
	adds r5, r4, r0
	lsls r1, r3, #5
	ldrb r0, [r5]
	movs r2, #0x1f
	ands r2, r0
	orrs r2, r1
	strb r2, [r5]
	cmp r3, #1
	beq _08049CDC
	cmp r3, #1
	bgt _08049C9C
	cmp r3, #0
	beq _08049CA2
	b _08049D40
	.align 2, 0
_08049C98: .4byte 0x000076DC
_08049C9C:
	cmp r6, #2
	beq _08049D18
	b _08049D40
_08049CA2:
	movs r0, #0x10
	orrs r2, r0
	strb r2, [r5]
	ldr r0, _08049CC8
	adds r1, r4, r0
	ldr r0, _08049CCC
	str r0, [r1]
	ldr r0, _08049CD0
	adds r1, r4, r0
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _08049CD4
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08049CD8
	adds r1, r4, r0
	movs r0, #0xcb
	b _08049D3E
	.align 2, 0
_08049CC8: .4byte 0x000076CC
_08049CCC: .4byte gUnknown_08CE39F8
_08049CD0: .4byte 0x000076D0
_08049CD4: .4byte 0x000076D1
_08049CD8: .4byte 0x000076CA
_08049CDC:
	movs r0, #0x10
	orrs r2, r0
	strb r2, [r5]
	ldr r0, _08049D04
	adds r1, r4, r0
	ldr r0, _08049D08
	str r0, [r1]
	ldr r0, _08049D0C
	adds r1, r4, r0
	movs r0, #8
	strb r0, [r1]
	ldr r0, _08049D10
	adds r1, r4, r0
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, _08049D14
	adds r1, r4, r0
	movs r0, #0xcb
	b _08049D3E
	.align 2, 0
_08049D04: .4byte 0x000076CC
_08049D08: .4byte gUnknown_08D0B010
_08049D0C: .4byte 0x000076D0
_08049D10: .4byte 0x000076D1
_08049D14: .4byte 0x000076CA
_08049D18:
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r2, r0
	strb r2, [r5]
	ldr r0, _08049D48
	adds r1, r4, r0
	ldr r0, _08049D4C
	str r0, [r1]
	ldr r0, _08049D50
	adds r1, r4, r0
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _08049D54
	adds r1, r4, r0
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08049D58
	adds r1, r4, r0
	movs r0, #0x5a
_08049D3E:
	strh r0, [r1]
_08049D40:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08049D48: .4byte 0x000076CC
_08049D4C: .4byte gUnknown_08D1CE78
_08049D50: .4byte 0x000076D0
_08049D54: .4byte 0x000076D1
_08049D58: .4byte 0x000076CA
	.syntax divided
