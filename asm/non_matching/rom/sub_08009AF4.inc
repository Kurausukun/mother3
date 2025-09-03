	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r1, [sp, #0x14]
	ldr r0, [r7]
	ldrh r5, [r0]
	adds r2, r0, #2
	ldr r0, _08009B14
	cmp r5, r0
	beq _08009B18
	adds r0, #4
	cmp r5, r0
	beq _08009B2C
	b _08009B82
	.align 2, 0
_08009B14: .4byte 0x0000FF01
_08009B18:
	ldrh r0, [r4, #8]
	strh r0, [r1]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	bl sub_08009C4C
	b _08009B80
_08009B2C:
	adds r0, r2, #0
	movs r1, #0
	bl sub_08022E50
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _08009B58
	cmp r0, #2
	bgt _08009B46
	cmp r0, #1
	beq _08009B4C
	b _08009B74
_08009B46:
	cmp r0, #3
	beq _08009B64
	b _08009B74
_08009B4C:
	ldrb r0, [r4, #0xe]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	b _08009B6E
_08009B58:
	ldrb r0, [r4, #0xe]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	b _08009B6E
_08009B64:
	ldrb r0, [r4, #0xe]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
_08009B6E:
	orrs r1, r0
	strb r1, [r4, #0xe]
	b _08009B7C
_08009B74:
	ldrb r0, [r4, #0xe]
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r4, #0xe]
_08009B7C:
	ldr r0, [r6]
	adds r0, #4
_08009B80:
	str r0, [r6]
_08009B82:
	adds r0, r5, #0
	bl sub_08022ED0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xf
	ldr r1, [r7]
	adds r1, r1, r0
	str r1, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
