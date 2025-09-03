	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08010318
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	movs r1, #0xf
	ands r0, r1
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0801031C
	adds r2, r6, r1
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08010320
	ldr r2, _08010324
	adds r0, r0, r2
	ldrh r0, [r0]
	bl sub_0801B3B4
	adds r1, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r7, #0
	mov sl, r0
	movs r5, #0
	mov r8, sp
	mov sb, sl
_08010266:
	lsls r4, r7, #3
	subs r4, r4, r7
	lsls r4, r4, #3
	adds r4, r6, r4
	ldr r3, _08010328
	adds r0, r4, r3
	strh r5, [r0]
	ldr r1, _0801032C
	adds r0, r4, r1
	strh r5, [r0]
	ldr r2, _08010330
	adds r0, r4, r2
	strh r5, [r0]
	adds r3, #0x1a
	adds r0, r4, r3
	strh r5, [r0]
	adds r1, #0x1a
	adds r0, r4, r1
	movs r2, #0
	strb r2, [r0]
	adds r3, #3
	adds r2, r4, r3
	ldrb r0, [r2]
	movs r3, #9
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	subs r3, #8
	adds r1, r3, #0
	ands r0, r1
	subs r3, #0x10
	adds r1, r3, #0
	ands r0, r1
	subs r3, #0x20
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	lsls r1, r0, #0x1e
	lsrs r1, r1, #0x1f
	mov r3, r8
	ldrh r2, [r3]
	orrs r1, r2
	strh r1, [r3]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r2, sb
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08010334
	adds r0, r4, r3
	strh r5, [r0]
	strh r5, [r0, #2]
	ldr r1, _08010338
	adds r0, r4, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	ldr r2, _0801033C
	adds r4, r4, r2
	strh r5, [r4]
	strh r5, [r4, #2]
	adds r0, r7, #0
	bl sub_0801A61C
	subs r0, #0xf0
	strh r0, [r4, #4]
	adds r0, r7, #0
	bl sub_0801A638
	subs r0, #0xa0
	strh r0, [r4, #6]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #2
	bls _08010266
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010340
	mov r3, sl
	ldrh r0, [r3]
	cmp r0, #0
	beq _08010340
	movs r0, #2
	bl sub_08005900
	b _0801036E
	.align 2, 0
_08010318: .4byte 0x000067B9
_0801031C: .4byte 0x000067BA
_08010320: .4byte gGame
_08010324: .4byte 0x000067AC
_08010328: .4byte 0x000058BC
_0801032C: .4byte 0x000058BE
_08010330: .4byte 0x000058D4
_08010334: .4byte 0x000058C0
_08010338: .4byte 0x000058B0
_0801033C: .4byte 0x000058B4
_08010340:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010350
	movs r0, #3
	bl sub_08005900
	b _0801036E
_08010350:
	mov r4, sl
	ldrh r0, [r4]
	cmp r0, #0
	beq _08010360
	movs r0, #4
	bl sub_08005900
	b _0801036E
_08010360:
	ldr r0, _08010480
	ldr r1, _08010484
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_0801036E:
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801037E
	ldr r0, _08010480
	movs r1, #1
	bl sub_08007CE8
_0801037E:
	ldrb r0, [r6, #1]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1f
	lsls r1, r1, #1
	lsrs r0, r0, #7
	lsls r0, r0, #2
	orrs r1, r0
	ldrb r2, [r6, #2]
	lsls r0, r2, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	orrs r1, r0
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1f
	lsls r0, r0, #4
	orrs r1, r0
	ldrb r0, [r6]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x18
	orrs r1, r0
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1f
	lsls r0, r0, #9
	orrs r1, r0
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xa
	orrs r1, r0
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1f
	lsls r0, r0, #0xb
	orrs r1, r0
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	lsls r2, r2, #0xc
	orrs r1, r2
	ldr r2, _08010488
	adds r0, r6, r2
	ldrh r2, [r0]
	movs r4, #0
	movs r3, #0
	strh r1, [r0]
	ldrb r1, [r6]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1c
	ldrh r0, [r6]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	lsls r0, r0, #8
	orrs r1, r0
	ldr r2, _0801048C
	adds r0, r6, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	ldr r2, _08010490
	adds r1, r6, r2
	ldrh r2, [r1]
	strh r0, [r1]
	ldr r0, _08010494
	ldr r1, _08010498
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08010436
	ldr r2, _0801049C
	adds r0, r6, r2
	strb r4, [r0]
	ldr r1, _080104A0
	adds r0, r6, r1
	strb r4, [r0]
	movs r0, #0xb3
	lsls r0, r0, #7
	adds r2, r6, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080104A4
	adds r0, r6, r1
	strb r4, [r0]
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
_08010436:
	ldr r2, _080104A8
	adds r0, r6, r2
	strh r3, [r0]
	ldr r4, _080104AC
	adds r1, r6, r4
	movs r0, #0xa
	strh r0, [r1]
	movs r0, #0xb3
	lsls r0, r0, #7
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080104B0
	adds r0, r6, r1
	strh r3, [r0]
	ldr r2, _080104B4
	adds r0, r6, r2
	strh r3, [r0]
	adds r4, #0xc
	adds r0, r6, r4
	strh r3, [r0]
	ldr r1, _080104B8
	adds r0, r6, r1
	strh r3, [r0]
	strh r3, [r0, #2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010480: .4byte gSomeBlend
_08010484: .4byte 0x000121BB
_08010488: .4byte 0x00006790
_0801048C: .4byte 0x00006792
_08010490: .4byte 0x00006794
_08010494: .4byte gGame
_08010498: .4byte 0x00008494
_0801049C: .4byte 0x00005950
_080104A0: .4byte 0x0000594F
_080104A4: .4byte 0x00005951
_080104A8: .4byte 0x00005956
_080104AC: .4byte 0x00005954
_080104B0: .4byte 0x0000595C
_080104B4: .4byte 0x0000595E
_080104B8: .4byte 0x00006798
	.syntax divided
