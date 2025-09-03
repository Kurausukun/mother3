	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r2, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldr r0, _08052B54
	ldr r1, _08052B58
	adds r6, r0, r1
	ldrh r1, [r6]
	adds r5, r0, #0
	cmp r1, #0
	beq _08052BCC
	movs r0, #0x80
	lsls r0, r0, #9
	ldrb r2, [r2]
	lsls r0, r2
	lsrs r7, r0, #0x10
	movs r0, #0xd2
	lsls r0, r0, #6
	adds r2, r5, r0
	movs r3, #0
	cmp r3, r1
	bhs _08052B8C
	mov sb, r5
	movs r4, #0x40
	ldr r1, _08052B5C
	mov ip, r1
	movs r0, #0x41
	rsbs r0, r0, #0
	mov r8, r0
_08052B3E:
	lsls r0, r3, #2
	add r0, sb
	movs r1, #0xd2
	lsls r1, r1, #6
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08052B60
	ldrb r0, [r2, #2]
	orrs r0, r4
	b _08052B7C
	.align 2, 0
_08052B54: .4byte gSomeBlend
_08052B58: .4byte 0x0000426C
_08052B5C: .4byte gGoodsInfo
_08052B60:
	ldrb r1, [r2]
	movs r0, #0x6c
	muls r0, r1, r0
	add r0, ip
	ldrh r0, [r0, #0xc]
	ands r0, r7
	cmp r0, #0
	beq _08052B76
	ldrb r0, [r2, #2]
	orrs r0, r4
	b _08052B7C
_08052B76:
	ldrb r1, [r2, #2]
	mov r0, r8
	ands r0, r1
_08052B7C:
	strb r0, [r2, #2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	ldrh r0, [r6]
	cmp r3, r0
	blo _08052B3E
_08052B8C:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08052BCC
	movs r1, #0xd2
	lsls r1, r1, #6
	adds r2, r5, r1
	ldrb r0, [r2]
	cmp r0, #0
	bne _08052BC0
	ldr r2, _08052BB8
	adds r0, r5, r2
	ldr r2, _08052BBC
	adds r1, r5, r2
	ldrh r1, [r1]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08052CC4
	b _08052BCC
	.align 2, 0
_08052BB8: .4byte 0x00003484
_08052BBC: .4byte 0x0000426C
_08052BC0:
	ldr r1, _08052BDC
	adds r0, r5, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	bl sub_08052CC4
_08052BCC:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052BDC: .4byte 0x0000426C
	.syntax divided
