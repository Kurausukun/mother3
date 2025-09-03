	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _0800877C
	ldrb r0, [r0]
	cmp r0, #1
	bne _08008730
	ldr r0, _08008780
	ldr r1, _08008784
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #5
	beq _0800881C
	cmp r0, #0x37
	beq _0800881C
_08008730:
	adds r0, r2, #0
	bl sub_0801B3A4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, _08008780
	ldr r2, _08008788
	adds r1, r0, r2
	ldrh r5, [r1]
	ldr r1, _0800878C
	adds r0, r0, r1
	ldrh r6, [r0]
	adds r0, r5, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r6, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, _08008790
	lsls r4, r4, #1
	ldr r2, _08008794
	adds r0, r0, r2
	adds r4, r4, r0
	ldrh r4, [r4]
	mov sb, r4
	cmp r5, #0
	bne _08008798
	movs r0, #0
	bl sub_08003B58
	b _0800879E
	.align 2, 0
_0800877C: .4byte gUnknown_02005080
_08008780: .4byte gGame
_08008784: .4byte 0x000067AC
_08008788: .4byte 0x000067AE
_0800878C: .4byte 0x000067B0
_08008790: .4byte gSave
_08008794: .4byte 0x00000582
_08008798:
	adds r0, r5, #0
	bl sub_080038A4
_0800879E:
	cmp r6, #0
	bne _080087C2
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	adds r4, r0, #0
	cmp r1, #0
	beq _080087B2
	cmp r1, #1
	beq _080087BA
	b _080087CA
_080087B2:
	movs r0, #1
	bl sub_08003B58
	b _080087CA
_080087BA:
	movs r0, #0
	bl sub_08003B58
	b _080087CA
_080087C2:
	adds r0, r6, #0
	bl sub_080038A4
	lsls r4, r7, #0x10
_080087CA:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	bne _080087DC
	movs r2, #0x64
	mov r8, r2
_080087DC:
	asrs r0, r4, #0x10
	cmp r0, r5
	beq _080087F6
	lsrs r4, r4, #0x10
	mov r0, r8
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_080087F6:
	mov r0, sl
	lsls r4, r0, #0x10
	asrs r0, r4, #0x10
	cmp r0, r5
	beq _08008814
	lsrs r4, r4, #0x10
	mov r0, sb
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_08008814:
	movs r0, #0xf7
	lsls r0, r0, #2
	bl sub_080038A4
_0800881C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
