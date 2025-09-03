	.syntax unified
sub_08009B98:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	ldr r0, [r7]
	ldrh r5, [r0]
	adds r1, r0, #2
	ldr r0, _08009BBC
	cmp r5, r0
	bgt _08009BC0
	subs r0, #1
	cmp r5, r0
	bge _08009C34
	subs r0, #2
	cmp r5, r0
	beq _08009BCC
	b _08009C34
	.align 2, 0
_08009BBC: .4byte 0x0000FF04
_08009BC0:
	ldr r0, _08009BC8
	cmp r5, r0
	beq _08009BE4
	b _08009C34
	.align 2, 0
_08009BC8: .4byte 0x0000FF05
_08009BCC:
	ldrh r0, [r4, #8]
	strh r0, [r3]
	ldr r0, _08009BE0
	adds r1, r6, r0
	ldrh r0, [r3, #2]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r3, #2]
	b _08009C34
	.align 2, 0
_08009BE0: .4byte 0x0000C511
_08009BE4:
	adds r0, r1, #0
	movs r1, #0
	bl sub_08022E50
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	beq _08009C10
	cmp r0, #2
	bgt _08009BFE
	cmp r0, #1
	beq _08009C04
	b _08009C2C
_08009BFE:
	cmp r0, #3
	beq _08009C1C
	b _08009C2C
_08009C04:
	ldrb r0, [r4, #0xe]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	b _08009C26
_08009C10:
	ldrb r0, [r4, #0xe]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #3
	b _08009C26
_08009C1C:
	ldrb r0, [r4, #0xe]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
_08009C26:
	orrs r1, r0
	strb r1, [r4, #0xe]
	b _08009C34
_08009C2C:
	ldrb r0, [r4, #0xe]
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r4, #0xe]
_08009C34:
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
	.align 2, 0
	.syntax divided
