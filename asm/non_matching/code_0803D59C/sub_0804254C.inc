	.syntax unified
sub_0804254C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r2, _0804257C
	ldr r1, _08042580
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08042568
	b _0804271A
_08042568:
	ldr r3, _08042584
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #1
	beq _08042618
	cmp r0, #1
	bgt _08042588
	cmp r0, #0
	beq _08042590
	b _08042714
	.align 2, 0
_0804257C: .4byte gSomeBlend
_08042580: .4byte 0x000041DA
_08042584: .4byte 0x000041C8
_08042588:
	cmp r0, #2
	bne _0804258E
	b _080426A0
_0804258E:
	b _08042714
_08042590:
	movs r4, #0
	adds r7, r2, #0
	ldr r5, _08042608
	adds r5, r5, r7
	mov r8, r5
_0804259A:
	adds r0, r4, #0
	adds r0, #0x23
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080486A0
	ldr r1, _0804260C
	adds r6, r7, r1
	ldrh r1, [r6]
	adds r1, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08042610
	adds r2, r7, r3
	ldrh r2, [r2]
	adds r2, #0xc
	mov r5, r8
	ldrb r3, [r5]
	muls r3, r4, r3
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #0xf
	str r3, [sp]
	movs r5, #0
	str r5, [sp, #4]
	subs r3, #0x10
	bl sub_08047CDC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0804259A
	adds r0, r6, #0
	subs r0, #0x4c
	adds r3, r6, #0
	subs r3, #0x6a
	ldr r2, _08042614
	adds r1, r6, r2
	ldrb r2, [r1]
	ldrh r1, [r3]
	adds r3, r1, #0
	muls r3, r2, r3
	adds r3, #0x22
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r5, [sp]
	str r5, [sp, #4]
	movs r1, #1
	movs r2, #0x3e
	bl sub_08046D2C
	b _08042714
	.align 2, 0
_08042608: .4byte 0x0000C5A1
_0804260C: .4byte 0x00004234
_08042610: .4byte 0x00004236
_08042614: .4byte 0x0000836D
_08042618:
	movs r4, #0
	adds r7, r2, #0
	ldr r3, _08042690
	adds r3, r3, r7
	mov r8, r3
_08042622:
	adds r0, r4, #0
	adds r0, #0x28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080486A0
	ldr r5, _08042694
	adds r6, r7, r5
	ldrh r1, [r6]
	adds r1, #0xa
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08042698
	adds r2, r7, r3
	ldrh r2, [r2]
	adds r2, #0xc
	mov r5, r8
	ldrb r3, [r5]
	muls r3, r4, r3
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #0xf
	str r3, [sp]
	movs r5, #0
	str r5, [sp, #4]
	subs r3, #0x10
	bl sub_08047CDC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	bls _08042622
	adds r0, r6, #0
	subs r0, #0x4c
	adds r3, r6, #0
	subs r3, #0x6a
	ldr r2, _0804269C
	adds r1, r6, r2
	ldrb r2, [r1]
	ldrh r1, [r3]
	adds r3, r1, #0
	muls r3, r2, r3
	adds r3, #0x32
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r5, [sp]
	str r5, [sp, #4]
	movs r1, #1
	movs r2, #0x56
	bl sub_08046D2C
	b _08042714
	.align 2, 0
_08042690: .4byte 0x0000C5A1
_08042694: .4byte 0x00004234
_08042698: .4byte 0x00004236
_0804269C: .4byte 0x0000836D
_080426A0:
	movs r4, #0
	adds r7, r2, #0
	ldr r3, _08042740
	adds r3, r3, r7
	mov r8, r3
_080426AA:
	adds r0, r4, #0
	adds r0, #0x2b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080486A0
	ldr r5, _08042744
	adds r6, r7, r5
	ldrh r1, [r6]
	adds r1, #0xc
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08042748
	adds r2, r7, r3
	ldrh r2, [r2]
	adds r2, #0xc
	mov r5, r8
	ldrb r3, [r5]
	muls r3, r4, r3
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r3, #0xf
	str r3, [sp]
	movs r5, #0
	str r5, [sp, #4]
	subs r3, #0x10
	bl sub_08047CDC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #6
	bls _080426AA
	adds r0, r6, #0
	subs r0, #0x4c
	adds r3, r6, #0
	subs r3, #0x6a
	ldr r2, _0804274C
	adds r1, r6, r2
	ldrb r2, [r1]
	ldrh r1, [r3]
	adds r3, r1, #0
	muls r3, r2, r3
	adds r3, #0x12
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r5, [sp]
	str r5, [sp, #4]
	movs r1, #1
	movs r2, #0x46
	bl sub_08046D2C
_08042714:
	ldr r0, _08042750
	bl sub_080465F8
_0804271A:
	ldr r0, _08042754
	adds r0, #0x68
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08042758
	movs r3, #0
	mov r5, sb
	ldrh r0, [r5, #4]
	cmp r0, #1
	bne _08042734
	movs r3, #1
_08042734:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08044860
	b _08042772
	.align 2, 0
_08042740: .4byte 0x0000C5A1
_08042744: .4byte 0x00004234
_08042748: .4byte 0x00004236
_0804274C: .4byte 0x0000836D
_08042750: .4byte gUnknown_0201A210
_08042754: .4byte gUnknown_020050C0
_08042758:
	movs r0, #0x14
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	movs r1, #0x48
	movs r2, #0x2c
	bl sub_08047CDC
_08042772:
	ldr r0, _08042798
	adds r0, #0xcc
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804279C
	movs r3, #0
	mov r1, sb
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _0804278C
	movs r3, #1
_0804278C:
	movs r0, #1
	movs r1, #0
	movs r2, #0x48
	bl sub_08044860
	b _080427B6
	.align 2, 0
_08042798: .4byte gUnknown_020050C0
_0804279C:
	movs r0, #0x14
	bl sub_080486A0
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	movs r1, #0x48
	movs r2, #0x74
	bl sub_08047CDC
_080427B6:
	ldr r0, _08042818
	ldr r2, _0804281C
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080427F4
	ldr r2, _08042820
	ldr r3, _08042824
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r1, r0, #0x1f
	cmp r1, #0
	bne _080427F4
	ldr r5, _08042828
	adds r2, r2, r5
	mov r3, sb
	ldrh r0, [r3, #4]
	movs r3, #0x64
	cmp r0, #0
	bne _080427E4
	movs r3, #0x1c
_080427E4:
	movs r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r2, #0
	movs r1, #1
	movs r2, #0xc
	bl sub_08046D2C
_080427F4:
	ldr r0, _0804282C
	ldrb r0, [r0]
	cmp r0, #8
	bne _0804280A
	ldr r1, _08042820
	ldrh r0, [r1, #0x14]
	ldr r0, _08042830
	strh r0, [r1, #0x14]
	ldrh r0, [r1, #0x1c]
	ldr r0, _08042834
	strh r0, [r1, #0x1c]
_0804280A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042818: .4byte gUnknown_0200F920
_0804281C: .4byte 0x00006478
_08042820: .4byte gSomeBlend
_08042824: .4byte 0x000041DA
_08042828: .4byte 0x000041E8
_0804282C: .4byte gUnknown_02004100
_08042830: .4byte 0x0000FFFE
_08042834: .4byte 0x0000FFFC
	.syntax divided
