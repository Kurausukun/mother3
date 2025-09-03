	.syntax unified
sub_08054130:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _08054144
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _08054148
	cmp r0, #1
	beq _080541B4
	b _080541EC
	.align 2, 0
_08054144: .4byte gUnknown_0201A55C
_08054148:
	ldr r2, [r5, #4]
	cmp r2, #0x3b
	bhi _08054172
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0
	movs r1, #0x10
	movs r3, #0x3c
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r2, [r5, #4]
	movs r0, #0xc
	movs r1, #0x10
	movs r3, #0x3c
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08054176
_08054172:
	movs r4, #0x10
	movs r2, #0x10
_08054176:
	ldr r1, _080541AC
	ldrh r0, [r1]
	movs r3, #0
	ldr r0, _080541B0
	strh r0, [r1]
	lsls r0, r2, #8
	orrs r4, r0
	ldrh r0, [r1, #2]
	strh r4, [r1, #2]
	ldrh r0, [r1, #4]
	strh r3, [r1, #4]
	ldr r0, [r5, #4]
	cmp r0, #0xb3
	bls _080541EC
	movs r0, #1
	strb r0, [r5, #8]
	str r3, [r5, #4]
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r6, #0
	movs r1, #1
	bl sub_08050F2C
	adds r0, r6, #0
	bl sub_08050FCC
	b _080541EC
	.align 2, 0
_080541AC: .4byte gSomeBlend
_080541B0: .4byte 0x00001844
_080541B4:
	ldr r0, _080541F4
	adds r1, r6, r0
	ldrh r0, [r1]
	movs r2, #0
	ldr r0, _080541F8
	strh r0, [r1]
	ldrh r0, [r1, #2]
	ldr r0, _080541FC
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	strh r2, [r1, #4]
	adds r0, r6, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _080541E0
	subs r2, #1
	adds r0, r6, #0
	movs r1, #2
	bl sub_08050F2C
_080541E0:
	ldr r0, [r5, #4]
	cmp r0, #0xef
	bls _080541EC
	movs r0, #4
	bl sub_080506CC
_080541EC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080541F4: .4byte 0xFFFFBACC
_080541F8: .4byte 0x00001844
_080541FC: .4byte 0x00001010
	.syntax divided
