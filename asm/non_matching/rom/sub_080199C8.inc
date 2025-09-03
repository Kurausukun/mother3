	.syntax unified
sub_080199C8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r4, r1, #0
	mov sb, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r0, sb
	bl sub_08002FA4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r6, r0, #0
	muls r6, r4, r6
	lsls r6, r6, #8
	lsrs r6, r6, #0x10
	mov r5, sb
	adds r5, #0x40
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r0, r4, #4
	adds r4, r4, r0
	lsls r4, r4, #0xb
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08002FA4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r0, r2, #4
	adds r2, r2, r0
	lsls r2, r2, #0xb
	mov r5, sl
	ldrh r5, [r5]
	mov ip, r5
	mov r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	mov r1, ip
	subs r3, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, r3
	lsls r1, r1, #0x10
	mov r5, sl
	ldrh r5, [r5, #2]
	mov sl, r5
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r0, sl
	subs r5, r0, r6
	asrs r2, r2, #0x10
	adds r0, r2, r5
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r0
	str r1, [sp]
	add r8, ip
	mov r1, r8
	subs r0, r1, r4
	lsls r0, r0, #0x10
	add r6, sl
	subs r1, r6, r2
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp, #8]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	subs r5, r5, r2
	lsls r5, r5, #0x10
	lsrs r3, r3, #0x10
	orrs r3, r5
	str r3, [sp, #4]
	add r4, r8
	lsls r4, r4, #0x10
	adds r2, r2, r6
	lsls r2, r2, #0x10
	lsrs r4, r4, #0x10
	orrs r4, r2
	str r4, [sp, #0xc]
	mov r0, sb
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #4
	cmp r1, #0
	ble _08019AC2
	movs r0, #0x50
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r1, #0
	adds r0, #0x50
	b _08019ACE
_08019AC2:
	adds r0, r1, #0
	adds r0, #0x50
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x50
	subs r0, r0, r1
_08019ACE:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0
	lsls r2, r2, #0x10
	mov r8, r2
	movs r5, #0x96
	lsls r5, r5, #0x14
	mov sl, r5
	ldr r0, _08019B44
	mov sb, r0
_08019AE2:
	mov r1, r8
	asrs r0, r1, #0x10
	cmp r0, r6
	bgt _08019B6E
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	blt _08019B6E
	mov r0, sp
	add r1, sp, #4
	adds r2, r6, #0
	bl sub_08019B88
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	add r0, sp, #8
	add r1, sp, #0xc
	adds r2, r6, #0
	bl sub_08019B88
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	asrs r5, r1, #0x10
	cmp r0, r5
	bne _08019B24
	lsls r1, r3, #0x10
	asrs r0, r1, #0x10
	cmp r0, r5
	beq _08019B6E
	lsrs r4, r1, #0x10
_08019B24:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	lsls r2, r4, #0x10
	cmp r1, r5
	bne _08019B36
	asrs r0, r2, #0x10
	cmp r0, r1
	beq _08019B36
	lsrs r3, r2, #0x10
_08019B36:
	lsls r0, r3, #0x10
	cmp r2, r0
	bge _08019B48
	lsrs r1, r2, #0x10
	lsrs r3, r0, #0x10
	b _08019B4C
	.align 2, 0
_08019B44: .4byte gUnknown_02029238
_08019B48:
	lsrs r1, r0, #0x10
	lsrs r3, r2, #0x10
_08019B4C:
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _08019B54
	movs r1, #0
_08019B54:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _08019B5E
	movs r3, #0xf0
_08019B5E:
	lsls r2, r6, #1
	add r2, sb
	lsls r1, r1, #0x10
	asrs r1, r1, #8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2]
_08019B6E:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x9f
	bls _08019AE2
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
