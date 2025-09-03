	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _080566B4
	ldrb r1, [r0, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080566A6
	lsls r0, r4, #5
	ldr r1, _080566B8
	adds r4, r0, r1
	lsls r0, r3, #1
	adds r4, r4, r0
	movs r5, #0
	subs r6, r2, r3
	adds r0, r6, #1
	cmp r5, r0
	bge _080566A6
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sl, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sb, r0
	ldr r0, _080566BC
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _080566C0
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _080566C4
	adds r7, r1, r0
_08056672:
	ldrh r3, [r4]
	movs r1, #0x1f
	ands r1, r3
	mov r0, sl
	ands r0, r3
	mov r2, sb
	ands r2, r3
	lsls r1, r1, #1
	add r1, r8
	lsrs r0, r0, #4
	add r0, ip
	ldrh r1, [r1]
	ldrh r0, [r0]
	orrs r1, r0
	lsrs r2, r2, #9
	adds r2, r2, r7
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #2
	adds r0, r6, #1
	cmp r5, r0
	blt _08056672
_080566A6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080566B4: .4byte gUnknown_0200F920
_080566B8: .4byte gUnknown_02018778
_080566BC: .4byte 0x00010AF4
_080566C0: .4byte 0x00010B34
_080566C4: .4byte 0x00010B74

	.global sub_080566C8
sub_080566C8:
	push {r4, r5, r6, r7}
	mov r6, r8
	mov r7, sb
	push {r6, r7}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r6, r0, #0
	movs r0, #1
	cmp r0, r8
	bhs _08056734
_080566DE:
	adds r5, r0, #0
	adds r1, r0, #1
	mov sb, r1
	cmp r0, #0
	beq _0805672A
	lsls r0, r0, #3
	b _08056714
_080566EC:
	lsls r2, r5, #3
	adds r2, r2, r6
	ldr r3, [r2]
	ldr r4, [r2, #4]
	movs r7, #8
	rsbs r7, r7, #0
	adds r7, r7, r2
	ldr r0, [r7]
	ldr r1, [r7, #4]
	str r0, [r2]
	str r1, [r2, #4]
	adds r0, r7, #0
	str r3, [r0]
	str r4, [r0, #4]
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0805672A
	lsls r0, r5, #3
_08056714:
	adds r0, r0, r6
	adds r1, r0, #0
	subs r1, #8
	ldrb r1, [r1, #5]
	lsls r1, r1, #0x1c
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1c
	lsrs r1, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r1, r0
	bhi _080566EC
_0805672A:
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r8
	blo _080566DE
_08056734:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	.syntax divided
