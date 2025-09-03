	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r2, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldr r0, _08052C38
	ldr r1, _08052C3C
	adds r6, r0, r1
	ldrh r1, [r6]
	adds r5, r0, #0
	cmp r1, #0
	beq _08052CB0
	movs r0, #0x80
	lsls r0, r0, #9
	ldrb r2, [r2]
	lsls r0, r2
	lsrs r7, r0, #0x10
	movs r0, #0xd3
	lsls r0, r0, #6
	adds r2, r5, r0
	movs r3, #0
	cmp r3, r1
	bhs _08052C70
	mov sb, r5
	movs r4, #0x40
	ldr r1, _08052C40
	mov ip, r1
	movs r0, #0x41
	rsbs r0, r0, #0
	mov r8, r0
_08052C22:
	lsls r0, r3, #2
	add r0, sb
	movs r1, #0xd3
	lsls r1, r1, #6
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08052C44
	ldrb r0, [r2, #2]
	orrs r0, r4
	b _08052C60
	.align 2, 0
_08052C38: .4byte gSomeBlend
_08052C3C: .4byte 0x0000426E
_08052C40: .4byte gGoodsInfo
_08052C44:
	ldrb r1, [r2]
	movs r0, #0x6c
	muls r0, r1, r0
	add r0, ip
	ldrh r0, [r0, #0xc]
	ands r0, r7
	cmp r0, #0
	beq _08052C5A
	ldrb r0, [r2, #2]
	orrs r0, r4
	b _08052C60
_08052C5A:
	ldrb r1, [r2, #2]
	mov r0, r8
	ands r0, r1
_08052C60:
	strb r0, [r2, #2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #4
	ldrh r0, [r6]
	cmp r3, r0
	blo _08052C22
_08052C70:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08052CB0
	movs r1, #0xd3
	lsls r1, r1, #6
	adds r2, r5, r1
	ldrb r0, [r2]
	cmp r0, #0
	bne _08052CA4
	ldr r2, _08052C9C
	adds r0, r5, r2
	ldr r2, _08052CA0
	adds r1, r5, r2
	ldrh r1, [r1]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08052CC4
	b _08052CB0
	.align 2, 0
_08052C9C: .4byte 0x000034C4
_08052CA0: .4byte 0x0000426E
_08052CA4:
	ldr r1, _08052CC0
	adds r0, r5, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	bl sub_08052CC4
_08052CB0:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052CC0: .4byte 0x0000426E
	.syntax divided
