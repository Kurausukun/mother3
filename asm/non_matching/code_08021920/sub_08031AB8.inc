	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, sp
	strh r1, [r0]
	ldr r0, [r7, #0x1c]
	ldrh r0, [r0]
	movs r1, #4
	cmp r0, #4
	bhi _08031AEE
	adds r1, r0, #0
_08031AEE:
	adds r0, r7, #0
	adds r0, #0x90
	strb r1, [r0]
	ldr r2, [sp, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r1, [r7, #0x1c]
	adds r4, r1, #2
	adds r6, r7, #0
	adds r6, #0x54
	movs r5, #0
	mov sl, r5
	str r0, [sp, #0x10]
	ldrb r0, [r0]
	cmp sl, r0
	blo _08031B12
	b _08031C18
_08031B12:
	ldr r1, [r7, #0x20]
	mov r8, r1
	b _08031C0A
_08031B18:
	ldr r5, _08031B3C
	adds r0, r0, r5
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08031B40
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _08031B44
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r2, [r4]
	cmp r1, r0
	blt _08031B48
	ldr r5, [sp, #0x3c]
	ldrb r3, [r5, #1]
	b _08031B4C
	.align 2, 0
_08031B3C: .4byte 0x000121B0
_08031B40: .4byte gUnknown_030038F0
_08031B44: .4byte gUnknown_02001008
_08031B48:
	ldr r0, [sp, #0x3c]
	ldrb r3, [r0]
_08031B4C:
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	str r2, [sp, #0x14]
	ldr r1, [sp, #4]
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r5, [sp, #0x14]
	adds r2, r5, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r4]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r0, #1
	ldrsb r0, [r4, r0]
	movs r5, #0
	ldrsh r1, [r1, r5]
	adds r0, r0, r1
	ldr r1, _08031BA8
	ands r0, r1
	lsls r0, r0, #0x10
	orrs r2, r0
	ldrh r1, [r4, #2]
	movs r5, #0xf0
	lsls r5, r5, #6
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
	mov r0, ip
	str r2, [r0]
	lsls r0, r3, #0xa
	mov r1, sb
	orrs r0, r1
	ldr r2, [sp, #8]
	orrs r0, r2
	mov r5, ip
	strh r0, [r5, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031BAC
	movs r0, #0
	b _08031BC6
	.align 2, 0
_08031BA8: .4byte 0x000001FF
_08031BAC:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	adds r1, r7, #0
	adds r1, #0xbb
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, _08031C28
	adds r0, r0, r2
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08031BC6:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	bl sub_08032DAC
	ldr r0, [r4]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	lsls r0, r0, #5
	add r0, r8
	str r0, [r6]
	ldm r4!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	strh r0, [r6, #4]
	add r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r6, #8
	ldr r5, [sp, #0x10]
	ldrb r5, [r5]
	cmp sl, r5
	bhs _08031C18
	ldr r0, [r7, #0x20]
	mov r8, r0
_08031C0A:
	ldr r0, _08031C2C
	ldr r2, _08031C30
	adds r1, r0, r2
	ldrh r1, [r1]
	cmp r1, #0x7f
	bhi _08031C18
	b _08031B18
_08031C18:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031C28: .4byte 0xFF600000
_08031C2C: .4byte gSomeBlend
_08031C30: .4byte 0x000121B0
	.syntax divided
