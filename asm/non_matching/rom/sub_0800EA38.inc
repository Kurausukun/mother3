	.syntax unified
sub_0800EA38:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r3, _0800EAB8
	ldr r0, _0800EABC
	adds r2, r3, r0
	ldrb r1, [r2]
	lsrs r0, r1, #7
	cmp r0, #0
	bne _0800EA4E
	b _0800EB98
_0800EA4E:
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0800EAC0
	adds r0, r3, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, #0x88
	ldrh r1, [r0]
	ldr r0, _0800EAC4
	cmp r1, r0
	bne _0800EA78
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0800EA78
	b _0800EB98
_0800EA78:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800EA88
	b _0800EB98
_0800EA88:
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _0800EA94
	rsbs r0, r1, #0
_0800EA94:
	cmp r0, #1
	ble _0800EACC
	movs r2, #0
	ldrsh r0, [r4, r2]
	ldr r2, _0800EAC8
	cmp r0, #0
	ble _0800EAA4
	movs r2, #1
_0800EAA4:
	adds r0, r1, #0
	cmp r0, #0
	bge _0800EAAC
	rsbs r0, r0, #0
_0800EAAC:
	asrs r0, r0, #1
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	muls r0, r2, r0
	b _0800EADE
	.align 2, 0
_0800EAB8: .4byte gGame
_0800EABC: .4byte 0x000082B7
_0800EAC0: .4byte 0x000082B8
_0800EAC4: .4byte 0x000001E9
_0800EAC8: .4byte 0x0000FFFF
_0800EACC:
	ldr r0, _0800EB10
	ldr r2, _0800EB14
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EAE0
	movs r0, #0
_0800EADE:
	strh r0, [r4]
_0800EAE0:
	movs r0, #2
	ldrsh r1, [r4, r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _0800EAEC
	rsbs r0, r1, #0
_0800EAEC:
	cmp r0, #1
	ble _0800EB1C
	movs r2, #2
	ldrsh r0, [r4, r2]
	ldr r2, _0800EB18
	cmp r0, #0
	ble _0800EAFC
	movs r2, #1
_0800EAFC:
	adds r0, r1, #0
	cmp r0, #0
	bge _0800EB04
	rsbs r0, r0, #0
_0800EB04:
	asrs r0, r0, #1
	strh r0, [r4, #2]
	movs r1, #2
	ldrsh r0, [r4, r1]
	muls r0, r2, r0
	b _0800EB2E
	.align 2, 0
_0800EB10: .4byte gGame
_0800EB14: .4byte 0x00009D10
_0800EB18: .4byte 0x0000FFFF
_0800EB1C:
	ldr r0, _0800EB90
	ldr r2, _0800EB94
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EB30
	movs r0, #0
_0800EB2E:
	strh r0, [r4, #2]
_0800EB30:
	adds r2, r5, #0
	adds r2, #0xcc
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x8f
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x8f
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_080270B8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r5, #0
	adds r3, #0xbc
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r3]
	movs r2, #0x1d
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3]
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #1
	bl sub_080332AC
	ldrh r0, [r4]
	lsls r0, r0, #4
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrh r0, [r4, #2]
	lsls r0, r0, #4
	ldrh r2, [r5, #2]
	adds r0, r0, r2
	strh r0, [r5, #2]
	movs r0, #1
	b _0800EB9A
	.align 2, 0
_0800EB90: .4byte gGame
_0800EB94: .4byte 0x00009D10
_0800EB98:
	movs r0, #0
_0800EB9A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
