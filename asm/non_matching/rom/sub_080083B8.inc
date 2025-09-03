	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	bl sub_0801B3A4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r5, r4, #0
	ldr r7, _08008414
	ldr r1, _08008418
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #6
	bne _08008434
	movs r5, #0xac
	movs r0, #0xac
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080083FA
	b _080086E8
_080083FA:
	movs r0, #0xac
	bl sub_08003928
	cmp r4, #0
	bne _08008420
	movs r0, #1
	bl sub_08003B58
	ldr r2, _0800841C
	adds r0, r7, r2
	strh r5, [r0]
	b _080086E8
	.align 2, 0
_08008414: .4byte gGame
_08008418: .4byte 0x0000829B
_0800841C: .4byte 0x000067AE
_08008420:
	movs r0, #0
	bl sub_08003B58
	ldr r3, _08008430
	adds r0, r7, r3
	strh r5, [r0]
	b _080086E8
	.align 2, 0
_08008430: .4byte 0x000067B0
_08008434:
	ldr r0, _080084D8
	adds r0, r0, r7
	mov sb, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #1
	rsbs r2, r2, #0
	mov r8, r2
	cmp r0, r8
	bne _0800844A
	b _0800858C
_0800844A:
	ldr r3, _080084DC
	adds r0, r7, r3
	ldrh r1, [r0]
	ldr r0, _080084E0
	cmp r1, r0
	beq _0800845C
	adds r0, #0x11
	cmp r1, r0
	bne _080084F8
_0800845C:
	movs r0, #0
	bl sub_08003D14
	ldr r1, _080084E4
	lsls r2, r4, #1
	ldr r3, _080084E8
	adds r1, r1, r3
	adds r2, r2, r1
	ldrb r5, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	beq _0800847C
	adds r0, r5, #0
	bl sub_08003928
_0800847C:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	bne _08008486
	movs r6, #0x64
_08008486:
	adds r0, r6, #0
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	bl sub_08003C88
	ldr r1, _080084EC
	adds r0, r7, r1
	strh r5, [r0]
	mov r2, sb
	ldrh r5, [r2]
	ldr r3, _080084F0
	adds r4, r7, r3
	ldrh r6, [r4]
	adds r0, r5, #0
	bl sub_08003928
	lsls r1, r6, #0x10
	asrs r0, r1, #0x10
	cmp r0, r8
	beq _080084C8
	lsrs r0, r1, #0x10
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	bl sub_08003C88
_080084C8:
	ldr r0, _080084F4
	mov r1, sb
	strh r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r4]
	b _080086E8
	.align 2, 0
_080084D8: .4byte 0x0000847A
_080084DC: .4byte 0x000067AC
_080084E0: .4byte 0x0000012D
_080084E4: .4byte gSave
_080084E8: .4byte 0x00000482
_080084EC: .4byte 0x000067AE
_080084F0: .4byte 0x0000847C
_080084F4: .4byte 0x0000FFFF
_080084F8:
	mov r2, sb
	ldrh r5, [r2]
	ldr r3, _0800852C
	adds r0, r7, r3
	ldrh r6, [r0]
	adds r0, r5, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	beq _08008560
	adds r0, r5, #0
	bl sub_08003928
	lsls r0, r4, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _08008534
	movs r0, #1
	bl sub_08003B58
	ldr r1, _08008530
	adds r0, r7, r1
	b _0800853E
	.align 2, 0
_0800852C: .4byte 0x0000847C
_08008530: .4byte 0x000067AE
_08008534:
	movs r0, #0
	bl sub_08003B58
	ldr r2, _08008578
	adds r0, r7, r2
_0800853E:
	strh r5, [r0]
	lsls r2, r6, #0x10
	asrs r1, r2, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08008560
	lsrs r4, r4, #0x10
	lsrs r0, r2, #0x10
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_08008560:
	ldr r1, _0800857C
	ldr r3, _08008580
	adds r2, r1, r3
	ldr r0, _08008584
	strh r0, [r2]
	ldr r0, _08008588
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	b _080086E8
	.align 2, 0
_08008578: .4byte 0x000067B0
_0800857C: .4byte gGame
_08008580: .4byte 0x0000847A
_08008584: .4byte 0x0000FFFF
_08008588: .4byte 0x0000847C
_0800858C:
	movs r0, #0
	bl sub_08003D14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #1
	bl sub_08003D14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r1, _080085FC
	lsls r2, r5, #1
	ldr r3, _08008600
	adds r0, r1, r3
	adds r0, r2, r0
	ldrh r3, [r0]
	ldrb r5, [r0]
	lsrs r3, r3, #8
	mov r8, r3
	ldr r0, _08008604
	adds r1, r1, r0
	adds r2, r2, r1
	ldrh r2, [r2]
	str r2, [sp, #8]
	adds r0, r5, #0
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, r8
	bl sub_08003D84
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r1, _08008608
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq _08008610
	mov r2, sp
	ldr r3, _0800860C
	adds r0, r7, r3
	ldrb r1, [r0]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	strh r0, [r2]
	mov r0, sp
	adds r0, #2
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	b _08008616
	.align 2, 0
_080085FC: .4byte gSave
_08008600: .4byte 0x00000482
_08008604: .4byte 0x00000582
_08008608: .4byte 0x00008494
_0800860C: .4byte 0x00008496
_08008610:
	mov r0, sp
	strh r1, [r0]
	adds r0, #2
_08008616:
	strh r1, [r0]
	adds r7, r0, #0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800863E
	cmp r5, #0
	bne _0800862E
	movs r0, #0
	bl sub_08003B58
	b _0800863E
_0800862E:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	beq _0800863E
	adds r0, r5, #0
	bl sub_08003928
_0800863E:
	ldrh r0, [r7]
	cmp r0, #0
	bne _08008676
	mov r2, r8
	cmp r2, #0
	bne _08008652
	movs r0, #1
	bl sub_08003B58
	b _08008676
_08008652:
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	beq _08008664
	mov r0, r8
	bl sub_080038A4
	b _08008676
_08008664:
	mov r0, sb
	bl sub_08003D64
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008676
	mov r0, r8
	bl sub_080038A4
_08008676:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08008684
	movs r6, #0x64
_08008684:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _080086A8
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, r1
	beq _080086A8
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_080086A8:
	ldrh r0, [r7]
	cmp r0, #0
	bne _080086D0
	mov r0, sb
	lsls r4, r0, #0x10
	asrs r1, r4, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080086D0
	lsrs r4, r4, #0x10
	ldr r0, [sp, #8]
	bl sub_08003E20
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08003C88
_080086D0:
	ldr r0, _080086F8
	ldr r2, _080086FC
	adds r1, r0, r2
	strh r5, [r1]
	ldr r3, _08008700
	adds r0, r0, r3
	mov r1, r8
	strh r1, [r0]
	movs r0, #0xf7
	lsls r0, r0, #2
	bl sub_080038A4
_080086E8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080086F8: .4byte gGame
_080086FC: .4byte 0x000067AE
_08008700: .4byte 0x000067B0
	.syntax divided
