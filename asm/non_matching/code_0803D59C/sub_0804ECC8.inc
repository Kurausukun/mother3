	.syntax unified
sub_0804ECC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldrh r0, [r7, #0xa]
	bl sub_08054FE0
	mov r8, r0
	ldrh r0, [r7, #0xa]
	bl sub_08054FF0
	mov r0, r8
	bl sub_08055038
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804ECF8
	mov r0, r8
	bl sub_0805504C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0804ED00
_0804ECF8:
	movs r0, #0xd6
	bl play_sound
	b _0804EDEA
_0804ED00:
	ldrh r1, [r7, #0xa]
	lsls r1, r1, #7
	ldrh r0, [r7, #4]
	lsls r0, r0, #2
	ldr r5, _0804ED44
	adds r0, r0, r5
	adds r4, r1, r0
	ldr r0, [r4]
	lsls r0, r0, #0xa
	cmp r0, #0
	blt _0804ED50
	movs r0, #0xd6
	bl play_sound
	ldr r0, [r4]
	lsls r0, r0, #7
	cmp r0, #0
	bge _0804EDEA
	ldr r0, _0804ED48
	adds r4, r5, r0
	ldrb r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _0804ED4C
	bl sub_0803DF94
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	b _0804EDEA
	.align 2, 0
_0804ED44: .4byte gUnknown_02019528
_0804ED48: .4byte 0x00000FF2
_0804ED4C: .4byte 0x0000FFFF
_0804ED50:
	movs r0, #0xd2
	bl play_sound
	ldr r1, _0804ED9C
	ldrb r3, [r4]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	blo _0804EDEA
	cmp r0, #2
	bhi _0804EDAC
	adds r0, r7, #0
	movs r1, #0xa
	bl sub_08053EEC
	ldr r1, _0804EDA0
	adds r0, r5, r1
	ldrh r1, [r0]
	ldr r2, _0804EDA4
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r1, [r4]
	adds r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	movs r1, #0xcd
	lsls r1, r1, #4
	adds r0, r5, r1
	strh r6, [r0]
	ldr r2, _0804EDA8
	adds r0, r5, r2
	strh r6, [r0]
	b _0804EDEA
	.align 2, 0
_0804ED9C: .4byte gPsiData
_0804EDA0: .4byte 0xFFFFF8FC
_0804EDA4: .4byte 0x00000CD3
_0804EDA8: .4byte 0x00000FEC
_0804EDAC:
	cmp r0, #4
	bhi _0804EDEA
	mov r0, r8
	movs r1, #0
	movs r2, #0
	bl sub_080543E8
	bl sub_08055750
	movs r1, #0xcd
	lsls r1, r1, #4
	adds r0, r5, r1
	strh r6, [r0]
	ldr r2, _0804EDF4
	adds r0, r5, r2
	strh r6, [r0]
	ldr r1, _0804EDF8
	adds r0, r5, r1
	ldrh r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	bl sub_0803DF94
	mov r0, r8
	bl sub_080524EC
	ldrh r0, [r7, #0xa]
	bl sub_08052864
_0804EDEA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804EDF4: .4byte 0x00000FEC
_0804EDF8: .4byte 0xFFFFF8FC
	.syntax divided
