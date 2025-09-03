	.syntax unified
sub_0801124C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r4, [sp, #0x44]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x18]
	ldr r1, _080112C4
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _080112B6
	ldr r2, [sp, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	cmp r0, #3
	beq _080112B6
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r3, _080112C8
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080112CC
_080112B6:
	adds r0, r6, #0
	ldr r1, [sp, #0x14]
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080112D4
	.align 2, 0
_080112C4: .4byte gGame
_080112C8: .4byte 0x000058E5
_080112CC:
	ldr r4, [sp, #0x14]
	cmp r6, r4
	blo _080112D4
	b _08011554
_080112D4:
	ldr r1, _0801130C
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08011304
	ldr r2, [sp, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _08011304
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r3, _08011310
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq _08011314
_08011304:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	b _08011318
	.align 2, 0
_0801130C: .4byte gGame
_08011310: .4byte 0x000058E5
_08011314:
	mov r0, sp
	strh r1, [r0]
_08011318:
	lsls r6, r6, #0x10
	asrs r1, r6, #0x10
	ldr r4, [sp, #8]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	ldr r0, [sp, #4]
	bl sub_0801A904
	str r0, [sp, #0xc]
	ldr r5, _080113CC
	ldr r4, [sp, #4]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_08001378
	mov sb, r0
	adds r3, r7, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl sub_08001378
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x10]
	str r6, [sp, #0x20]
_0801135A:
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x10]
	adds r1, r2, r3
	ldr r4, [sp, #0x18]
	cmp r1, r4
	blt _0801138A
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08011370
	b _08011554
_08011370:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08002FD4
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	asrs r1, r3, #0x10
	bl sub_0801A904
	str r0, [sp, #0xc]
_0801138A:
	ldr r4, [sp, #0xc]
	ldr r0, [r4]
	lsls r2, r0, #0x16
	lsrs r1, r2, #0x1c
	adds r3, r0, #0
	cmp r1, #0xb
	bls _0801139A
	b _08011526
_0801139A:
	lsls r1, r3, #0x1a
	lsrs r0, r1, #0x1a
	cmp r0, #0x3f
	bls _080113A4
	b _08011526
_080113A4:
	ldr r0, _080113D0
	ldr r4, _080113D4
	adds r0, r0, r4
	ldr r4, [r0]
	lsrs r0, r2, #0x1c
	lsls r0, r0, #9
	lsrs r1, r1, #0x17
	adds r0, r0, r1
	adds r4, r4, r0
	ldr r0, [sp, #0xc]
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r2, r0, #0
	ands r2, r1
	cmp r2, r0
	bne _080113DC
	ldr r1, _080113D8
	mov sl, r1
	b _080113FC
	.align 2, 0
_080113CC: .4byte gUnknown_02016078
_080113D0: .4byte gGame
_080113D4: .4byte 0x00004088
_080113D8: .4byte gUnknown_08D2D310
_080113DC:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bne _080113EC
	ldr r2, _080113E8
	b _080113FA
	.align 2, 0
_080113E8: .4byte gUnknown_08D2D314
_080113EC:
	movs r0, #0x80
	lsls r0, r0, #8
	ldr r1, _08011454
	mov sl, r1
	cmp r2, r0
	bne _080113FC
	ldr r2, _08011458
_080113FA:
	mov sl, r2
_080113FC:
	movs r6, #0xf0
	lsls r6, r6, #2
	ands r6, r3
	lsls r0, r3, #0x11
	lsrs r7, r0, #0x1f
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x1f
	mov ip, r0
	lsls r0, r3, #0x12
	lsrs r0, r0, #0x1c
	lsls r5, r0, #0xc
	mov r3, sl
	ldrb r2, [r3]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r2
	ldr r0, [r4]
	ands r1, r0
	str r0, [sp, #0x1c]
	cmp r1, #0
	beq _0801145C
	adds r0, r2, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r0, sb
	strh r2, [r0]
	b _08011460
	.align 2, 0
_08011454: .4byte gUnknown_08D2D31C
_08011458: .4byte gUnknown_08D2D318
_0801145C:
	mov r2, sb
	strh r1, [r2]
_08011460:
	mov r3, sl
	ldrb r0, [r3, #1]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x1c]
	ands r1, r2
	cmp r1, #0
	beq _0801149E
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r3, sb
	strh r2, [r3, #2]
	b _080114A2
_0801149E:
	mov r0, sb
	strh r1, [r0, #2]
_080114A2:
	mov r1, sl
	ldrb r0, [r1, #2]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x1c]
	ands r1, r2
	cmp r1, #0
	beq _080114E0
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r3, r8
	strh r2, [r3]
	b _080114E4
_080114E0:
	mov r0, r8
	strh r1, [r0]
_080114E4:
	mov r1, sl
	ldrb r0, [r1, #3]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x1c]
	ands r1, r2
	cmp r1, #0
	beq _08011520
	adds r0, #4
	adds r0, r4, r0
	ldr r2, [r0]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1a
	adds r1, r6, r1
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	eors r7, r0
	lsls r0, r7, #0xa
	orrs r1, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1f
	mov r3, ip
	eors r3, r2
	lsls r0, r3, #0xb
	orrs r1, r0
	orrs r5, r1
	mov r4, r8
	strh r5, [r4, #2]
	b _08011534
_08011520:
	mov r0, r8
	strh r1, [r0, #2]
	b _08011534
_08011526:
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #2]
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2, #2]
	strh r0, [r2]
_08011534:
	movs r3, #0x80
	add sb, r3
	add r8, r3
	ldr r4, [sp, #0x14]
	lsls r0, r4, #1
	ldr r1, [sp, #0xc]
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	cmp r0, #0xa
	bhi _08011554
	b _0801135A
_08011554:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
