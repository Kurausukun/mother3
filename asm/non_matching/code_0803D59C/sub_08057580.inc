	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov ip, r0
	ldr r0, [sp, #0x48]
	ldr r4, [sp, #0x4c]
	ldr r5, [sp, #0x50]
	ldr r6, [sp, #0x54]
	ldr r7, [sp, #0x58]
	mov r8, r7
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x18]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sb, r4
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x20]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x24]
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, ip
	mov r2, sb
	bl sub_08002634
	adds r5, r4, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
	cmp r4, sl
	bhs _08057654
	mov r6, sp
_080575E6:
	ldrh r0, [r6]
	cmp r0, #0
	bne _08057618
	mov r0, sl
	subs r0, #1
	cmp r4, r0
	beq _08057618
	ldr r2, [sp, #0x1c]
	cmp r2, #0
	beq _08057600
	cmp r2, #1
	beq _08057608
	b _08057618
_08057600:
	ldrh r0, [r5]
	cmp r0, sb
	beq _08057648
	b _08057618
_08057608:
	ldrh r0, [r5]
	cmp r0, sb
	bne _08057618
	adds r0, r7, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _08057648
_08057618:
	ldr r0, _08057664
	movs r1, #1
	bl sub_08000F04
	ldr r2, [sp, #0x24]
	lsls r1, r2, #0xe
	ldr r2, [sp, #0x18]
	orrs r1, r2
	strh r1, [r0]
	mov r2, r8
	lsls r1, r2, #0xe
	orrs r1, r7
	strh r1, [r0, #2]
	ldr r2, [sp, #0x20]
	lsls r1, r2, #0xc
	ldrh r2, [r5]
	orrs r1, r2
	strh r1, [r0, #4]
	adds r0, r7, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #1
	strh r0, [r6]
_08057648:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, #2
	cmp r4, sl
	blo _080575E6
_08057654:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08057664: .4byte gUnknown_02016078
	.syntax divided
