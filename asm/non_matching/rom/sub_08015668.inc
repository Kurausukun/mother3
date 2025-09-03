	.syntax unified
sub_08015668:
	push {r4, r5, lr}
	ldr r5, _080156AC
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	bl sub_08004FB4
	ldr r4, _080156B0
	ldrh r1, [r4, #0xa]
	ldrh r2, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080195B0
	ldr r0, _080156B4
	adds r5, r5, r0
	subs r4, #2
	ldrh r0, [r4]
	lsrs r4, r0, #2
	cmp r4, #7
	bls _080156B8
	movs r0, #8
	strb r0, [r5, #1]
	b _080156BA
	.align 2, 0
_080156AC: .4byte gSomeBlend
_080156B0: .4byte gUnknown_0200B564
_080156B4: .4byte 0x000146D0
_080156B8:
	strb r4, [r5, #1]
_080156BA:
	cmp r4, #0xf
	bls _080156C2
	movs r0, #8
	b _080156CE
_080156C2:
	cmp r4, #7
	bls _080156CC
	adds r0, r4, #0
	subs r0, #8
	b _080156CE
_080156CC:
	movs r0, #0
_080156CE:
	strb r0, [r5]
	ldr r5, _08015700
	ldr r0, _08015704
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	bl sub_08001960
	bl sub_08005C4C
	ldr r2, _08015708
	adds r3, r5, r2
	ldrb r1, [r3]
	movs r2, #0x40
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	cmp r4, #0xf
	bhi _0801570C
	movs r0, #0
	b _08015726
	.align 2, 0
_08015700: .4byte gSomeBlend
_08015704: .4byte 0x000121BA
_08015708: .4byte 0x0001ED10
_0801570C:
	ldrh r1, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	ldrh r2, [r5, #8]
	orrs r0, r1
	strh r0, [r5, #8]
	ldr r0, _0801572C
	ldrh r1, [r0, #0xa]
	ldrh r2, [r0, #0xc]
	bl sub_080195B0
	movs r0, #1
_08015726:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0801572C: .4byte gUnknown_0200B564
	.syntax divided
