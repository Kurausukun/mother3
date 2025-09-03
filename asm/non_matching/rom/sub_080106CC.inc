	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sp
	strh r1, [r0]
	adds r0, r7, #0
	bl sub_0801B3D8
	adds r6, r0, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08010724
	movs r4, #0xc0
	lsls r4, r4, #0x13
	movs r5, #0
	ldr r0, _08010720
	mov r8, r0
_080106F6:
	lsls r0, r5, #1
	adds r0, r6, r0
	ldrh r0, [r0]
	bl sub_0801B3FC
	lsls r1, r5, #2
	add r1, r8
	str r0, [r1]
	adds r1, r4, #0
	bl sub_08090F88
	movs r1, #0x80
	lsls r1, r1, #4
	adds r4, r4, r1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xb
	bls _080106F6
	b _08010738
	.align 2, 0
_08010720: .4byte gUnknown_02005C2C
_08010724:
	ldr r2, _08010770
	ldr r0, _08010774
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _08010778
	adds r2, r2, r1
	strh r7, [r2]
_08010738:
	ldrh r0, [r6, #0x18]
	bl sub_0801B414
	ldr r4, _0801077C
	str r0, [r4, #0x28]
	movs r2, #0xc0
	lsls r2, r2, #1
	movs r1, #0
	bl sub_08016F4C
	movs r0, #0
	movs r1, #0xc
	bl sub_0803B688
	adds r6, r4, #0
	adds r6, #0x68
	movs r5, #0
	adds r4, #0x5c
_0801075C:
	ldr r2, _0801077C
	cmp r5, #0
	bne _08010780
	ldrb r0, [r2, #0xf]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08010780
	str r5, [r2, #0x5c]
	b _080107CE
	.align 2, 0
_08010770: .4byte gSomeBlend
_08010774: .4byte 0x000121B8
_08010778: .4byte 0x000121BC
_0801077C: .4byte gGame
_08010780:
	cmp r5, #1
	bne _080107A8
	ldrb r0, [r2, #0x11]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _080107A8
	movs r0, #0
	str r0, [r2, #0x60]
	ldr r3, _080107A4
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2]
	b _080107CE
	.align 2, 0
_080107A4: .4byte 0x0000591D
_080107A8:
	lsls r0, r5, #2
	adds r0, r0, r4
	str r6, [r0]
	lsls r0, r7, #1
	adds r0, r0, r7
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0801B42C
	adds r1, r6, #0
	bl sub_08090F8C
	adds r0, r5, #0
	bl sub_0801A650
	lsls r0, r0, #0x10
	lsrs r0, r0, #7
	adds r6, r6, r0
_080107CE:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #2
	bls _0801075C
	ldr r0, _080107FC
	ldr r1, _08010800
	adds r4, r0, r1
	ldr r3, _08010804
	adds r0, r0, r3
	str r0, [r4]
	adds r0, r7, #0
	bl sub_0801B444
	ldr r1, [r4]
	bl sub_08090F8C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080107FC: .4byte gGame
_08010800: .4byte 0x00004088
_08010804: .4byte 0x0000408C
	.syntax divided
