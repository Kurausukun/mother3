	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r2, _0802679C
	ldrb r1, [r2, #8]
	movs r0, #4
	ands r0, r1
	ldr r4, _080267A0
	cmp r0, #0
	bne _08026780
	movs r0, #3
	strb r0, [r4]
_08026780:
	ldr r0, _080267A4
	adds r2, r2, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080267AC
	ldrh r0, [r2]
	mov sb, r0
	ldr r0, _080267A8
	strh r0, [r2]
	b _080267B0
	.align 2, 0
_0802679C: .4byte gGame
_080267A0: .4byte gEncounter
_080267A4: .4byte 0x00008456
_080267A8: .4byte 0x0000FFFF
_080267AC:
	movs r1, #0
	mov sb, r1
_080267B0:
	adds r5, r4, #0
	adds r5, #0x52
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _080267D0
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _080267D4
_080267D0:
	movs r0, #0
	b _08026900
_080267D4:
	movs r2, #0
	mov r8, r2
	ldr r0, _08026860
	ldr r3, _08026864
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r8, r0
	blo _080267E6
	b _080268F2
_080267E6:
	adds r6, r4, #0
	mov sl, r5
_080267EA:
	mov r0, r8
	adds r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0x88
	ldrh r0, [r0]
	bl sub_08036D3C
	adds r7, r0, #0
	adds r0, r4, #0
	adds r0, #0xbc
	ldrh r1, [r0]
	ldr r2, _08026868
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #1
	bne _080268DA
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _080268DA
	adds r0, r4, #0
	adds r0, #0xca
	ldrh r1, [r0]
	ldr r3, _0802686C
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _080268DA
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r2, [r0]
	mov r3, sl
	movs r1, #0
	ldrsb r1, [r3, r1]
	adds r5, r0, #0
	cmp r2, r1
	beq _080268DA
	adds r0, #0x3f
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080268DA
	mov r0, sb
	adds r1, r2, #0
	bl sub_08036734
	ldrb r1, [r7, #4]
	lsls r1, r1, #4
	cmp r0, r1
	bls _08026870
	ldrb r0, [r5]
	bl sub_08033414
	b _080268DA
	.align 2, 0
_08026860: .4byte gGame
_08026864: .4byte 0x00008370
_08026868: .4byte 0x00000401
_0802686C: .4byte 0x00000185
_08026870:
	adds r0, r4, #0
	adds r0, #0x96
	ldrh r0, [r0]
	movs r3, #5
	cmp r0, #0x3f
	bhi _08026884
	movs r3, #3
	cmp r0, #0x1f
	bls _08026884
	movs r3, #4
_08026884:
	movs r0, #2
	str r0, [sp]
	movs r7, #1
	str r7, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	ldr r2, [sp, #8]
	bl sub_08036EB8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080268C8
	ldrb r0, [r6, #5]
	add r0, sl
	ldrb r1, [r5]
	strb r1, [r0]
	ldrb r1, [r6, #5]
	lsls r1, r1, #1
	adds r0, r6, #0
	adds r0, #0xc
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x88
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r1, [r6, #5]
	adds r0, r0, r1
	strb r7, [r0]
	ldrb r0, [r6, #5]
	adds r0, #1
	strb r0, [r6, #5]
	b _080268D4
_080268C8:
	adds r0, r4, #0
	bl sub_08035FE4
	ldrb r0, [r5]
	bl sub_08033414
_080268D4:
	ldrb r0, [r6, #5]
	cmp r0, #0x13
	bhi _080268F2
_080268DA:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08026910
	ldr r2, _08026914
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r8, r0
	bhs _080268F2
	b _080267EA
_080268F2:
	movs r1, #0
	ldr r0, _08026918
	ldrb r0, [r0, #5]
	cmp r0, #1
	bls _080268FE
	movs r1, #1
_080268FE:
	adds r0, r1, #0
_08026900:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08026910: .4byte gGame
_08026914: .4byte 0x00008370
_08026918: .4byte gEncounter
	.syntax divided
