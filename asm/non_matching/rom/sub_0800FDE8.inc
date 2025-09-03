	.syntax unified
sub_0800FDE8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldr r1, _0800FF30
	adds r0, r6, r1
	movs r4, #0
	strh r4, [r0]
	ldr r2, _0800FF34
	adds r1, r6, r2
	movs r0, #4
	strh r0, [r1]
	ldr r3, _0800FF38
	adds r1, r6, r3
	movs r0, #1
	strh r0, [r1]
	ldr r5, _0800FF3C
	adds r2, r6, r5
	ldrb r1, [r2]
	movs r5, #5
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	movs r3, #9
	rsbs r3, r3, #0
	ands r0, r3
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800FF40
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r5
	ands r0, r3
	strb r0, [r2]
	ldr r3, _0800FF44
	adds r0, r6, r3
	strh r4, [r0]
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0800FF48
	adds r2, r6, r1
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _0800FF4C
	adds r0, r6, r2
	strh r4, [r0]
	ldr r0, _0800FF50
	adds r0, r0, r3
	ldrh r0, [r0]
	bl sub_0801B3B4
	adds r1, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	adds r1, #2
	strh r4, [r1]
	add r0, sp, #4
	strh r4, [r0]
	movs r7, #0
	mov sl, r0
	movs r3, #0
	mov r8, r3
	movs r4, #1
	mov sb, r4
_0800FEAA:
	lsls r3, r7, #3
	subs r2, r3, r7
	lsls r2, r2, #3
	adds r2, r6, r2
	ldr r5, _0800FF54
	adds r0, r2, r5
	mov r1, r8
	strh r1, [r0]
	ldr r4, _0800FF58
	adds r0, r2, r4
	strh r1, [r0]
	adds r5, #0x18
	adds r0, r2, r5
	strh r1, [r0]
	ldr r1, _0800FF5C
	adds r0, r2, r1
	mov r4, r8
	strh r4, [r0]
	adds r5, #4
	adds r0, r2, r5
	movs r1, #0
	strb r1, [r0]
	ldr r4, _0800FF60
	adds r2, r2, r4
	ldrb r0, [r2]
	movs r5, #9
	rsbs r5, r5, #0
	adds r1, r5, #0
	ands r0, r1
	movs r4, #0x11
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r0, r1
	subs r5, #0x18
	adds r1, r5, #0
	ands r0, r1
	subs r4, #0x30
	adds r1, r4, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0800FF50
	ldr r5, _0800FF64
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	adds r4, r3, #0
	cmp r0, #0
	bne _0800FF1C
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800FF1C
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	bl sub_0801A1B8
_0800FF1C:
	cmp r7, #0
	bne _0800FF68
	ldr r1, _0800FF60
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r3, #2
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	b _0800FF78
	.align 2, 0
_0800FF30: .4byte 0x000067A6
_0800FF34: .4byte 0x000067A8
_0800FF38: .4byte 0x000067AA
_0800FF3C: .4byte 0x000067B8
_0800FF40: .4byte 0x000067B9
_0800FF44: .4byte 0x000067AC
_0800FF48: .4byte 0x000067BA
_0800FF4C: .4byte 0x000067B4
_0800FF50: .4byte gGame
_0800FF54: .4byte 0x000058BC
_0800FF58: .4byte 0x000058BE
_0800FF5C: .4byte 0x000058D6
_0800FF60: .4byte 0x000058D9
_0800FF64: .4byte 0x00008494
_0800FF68:
	subs r0, r4, r7
	lsls r0, r0, #3
	adds r0, r6, r0
	ldr r5, _0800FFC4
	adds r0, r0, r5
	ldrb r1, [r0]
	mov r2, sb
	orrs r1, r2
_0800FF78:
	strb r1, [r0]
	subs r0, r4, r7
	lsls r0, r0, #3
	adds r0, r6, r0
	ldr r3, _0800FFC4
	adds r5, r0, r3
	ldrb r2, [r5]
	lsls r0, r2, #0x1f
	cmp r0, #0
	beq _0800FFC8
	lsls r3, r7, #2
	adds r3, r6, r3
	ldrb r0, [r3, #0x11]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #1
	movs r1, #3
	rsbs r1, r1, #0
	mov ip, r1
	mov r1, ip
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	ldrb r0, [r3, #0x11]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r3, sb
	ands r0, r3
	lsls r0, r0, #2
	movs r3, #5
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	b _0800FFDA
	.align 2, 0
_0800FFC4: .4byte 0x000058D9
_0800FFC8:
	movs r1, #3
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #5
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strb r0, [r5]
_0800FFDA:
	subs r4, r4, r7
	lsls r4, r4, #3
	adds r4, r6, r4
	ldr r3, _08010050
	adds r0, r4, r3
	ldrb r2, [r0]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1f
	mov r5, sp
	ldrh r1, [r5, #2]
	orrs r0, r1
	strh r0, [r5, #2]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1f
	mov r1, sl
	ldrh r0, [r1]
	orrs r2, r0
	strh r2, [r1]
	ldr r2, _08010054
	adds r0, r4, r2
	mov r3, r8
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r5, _08010058
	adds r0, r4, r5
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r0, _0801005C
	adds r4, r4, r0
	strh r3, [r4]
	strh r3, [r4, #2]
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
	bhi _08010038
	b _0800FEAA
_08010038:
	mov r1, sp
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08010060
	mov r2, sl
	ldrh r0, [r2]
	cmp r0, #0
	beq _08010060
	movs r0, #2
	bl sub_08005900
	b _0801008E
	.align 2, 0
_08010050: .4byte 0x000058D9
_08010054: .4byte 0x000058C0
_08010058: .4byte 0x000058B0
_0801005C: .4byte 0x000058B4
_08010060:
	mov r3, sp
	ldrh r0, [r3, #2]
	cmp r0, #0
	beq _08010070
	movs r0, #3
	bl sub_08005900
	b _0801008E
_08010070:
	mov r4, sl
	ldrh r0, [r4]
	cmp r0, #0
	beq _08010080
	movs r0, #4
	bl sub_08005900
	b _0801008E
_08010080:
	ldr r0, _080101B4
	ldr r5, _080101B8
	adds r0, r0, r5
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
_0801008E:
	ldrb r0, [r6, #3]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0801009E
	ldr r0, _080101B4
	movs r1, #1
	bl sub_08007CE8
_0801009E:
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
	ldr r2, _080101BC
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
	ldr r5, _080101C0
	adds r0, r6, r5
	ldrh r2, [r0]
	strh r1, [r0]
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	ldr r2, _080101C4
	adds r1, r6, r2
	ldrh r2, [r1]
	strh r0, [r1]
	ldr r0, _080101C8
	ldr r5, _080101CC
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08010164
	ldr r0, _080101D0
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080101D4
	adds r0, r6, r1
	strb r4, [r0]
	ldr r2, _080101D8
	adds r0, r6, r2
	strb r4, [r0]
	movs r5, #0xb3
	lsls r5, r5, #7
	adds r2, r6, r5
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080101DC
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
_08010164:
	ldr r2, _080101E0
	adds r0, r6, r2
	strh r3, [r0]
	ldr r4, _080101E4
	adds r1, r6, r4
	movs r0, #0xa
	strh r0, [r1]
	movs r5, #0xb3
	lsls r5, r5, #7
	adds r2, r6, r5
	ldrb r1, [r2]
	subs r0, #0xc
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080101E8
	adds r0, r6, r1
	strh r3, [r0]
	ldr r2, _080101EC
	adds r0, r6, r2
	strh r3, [r0]
	adds r4, #0xc
	adds r0, r6, r4
	strh r3, [r0]
	ldr r5, _080101F0
	adds r0, r6, r5
	strh r3, [r0]
	strh r3, [r0, #2]
	ldr r1, _080101F4
	adds r0, r6, r1
	strh r3, [r0]
	strh r3, [r0, #2]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080101B4: .4byte gSomeBlend
_080101B8: .4byte 0x000121BB
_080101BC: .4byte 0x00006790
_080101C0: .4byte 0x00006792
_080101C4: .4byte 0x00006794
_080101C8: .4byte gGame
_080101CC: .4byte 0x00008494
_080101D0: .4byte 0x000067B8
_080101D4: .4byte 0x00005950
_080101D8: .4byte 0x0000594F
_080101DC: .4byte 0x00005951
_080101E0: .4byte 0x00005956
_080101E4: .4byte 0x00005954
_080101E8: .4byte 0x0000595C
_080101EC: .4byte 0x0000595E
_080101F0: .4byte 0x00006798
_080101F4: .4byte 0x0000679C
	.syntax divided
