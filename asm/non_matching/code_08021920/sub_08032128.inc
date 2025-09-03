	.syntax unified
sub_08032128:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	mov r8, r1
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, sp
	strh r1, [r0]
	ldr r0, [r7, #0x1c]
	ldrh r0, [r0]
	movs r1, #4
	cmp r0, #4
	bhi _0803215E
	adds r1, r0, #0
_0803215E:
	adds r0, r7, #0
	adds r0, #0x90
	strb r1, [r0]
	ldr r2, [sp, #4]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, [r7, #0x1c]
	adds r4, r1, #2
	adds r6, r7, #0
	adds r6, #0x54
	movs r3, #0
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	ldrb r5, [r0]
	cmp r3, r5
	blo _08032182
	b _080322A8
_08032182:
	ldr r0, [r7, #0x20]
	mov sb, r0
	ldr r0, _08032190
	ldr r2, _08032194
	adds r1, r0, r2
	b _080322A0
	.align 2, 0
_08032190: .4byte gSomeBlend
_08032194: .4byte 0x000121B0
_08032198:
	mov r3, r8
	movs r5, #0
	ldrsh r1, [r3, r5]
	movs r0, #2
	ldrsh r2, [r3, r0]
	adds r0, r4, #0
	bl sub_08035940
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08032264
	ldr r1, _080321D0
	ldrh r0, [r1]
	lsls r0, r0, #3
	ldr r1, _080321D4
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _080321D8
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldrb r2, [r4]
	cmp r1, r0
	blt _080321DC
	ldr r5, [sp, #0x3c]
	ldrb r3, [r5, #1]
	b _080321E0
	.align 2, 0
_080321D0: .4byte gSceneObjCount
_080321D4: .4byte gUnknown_030038F0
_080321D8: .4byte gUnknown_02001008
_080321DC:
	ldr r0, [sp, #0x3c]
	ldrb r3, [r0]
_080321E0:
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	str r2, [sp, #0x14]
	mov r1, r8
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
	ldr r1, _0803223C
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
	mov r1, sl
	orrs r0, r1
	ldr r2, [sp, #4]
	orrs r0, r2
	mov r5, ip
	strh r0, [r5, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08032240
	movs r0, #0
	b _0803225A
	.align 2, 0
_0803223C: .4byte 0x000001FF
_08032240:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	adds r1, r7, #0
	adds r1, #0xbb
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, _080322B8
	adds r0, r0, r2
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0803225A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, #0
	bl sub_08032DAC
_08032264:
	ldr r0, [r4]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	lsls r0, r0, #5
	add r0, sb
	str r0, [r6]
	ldm r4!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	strh r0, [r6, #4]
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r6, #8
	ldr r3, [sp, #0x10]
	ldrb r3, [r3]
	cmp r0, r3
	bhs _080322A8
	ldr r5, [r7, #0x20]
	mov sb, r5
	ldr r1, _080322BC
_080322A0:
	ldrh r0, [r1]
	cmp r0, #0x7f
	bhi _080322A8
	b _08032198
_080322A8:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080322B8: .4byte 0xFF600000
_080322BC: .4byte gSceneObjCount
	.syntax divided
