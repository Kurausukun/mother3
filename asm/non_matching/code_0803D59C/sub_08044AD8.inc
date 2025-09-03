	.syntax unified
sub_08044AD8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	cmp r0, #0xca
	bne _08044B22
	adds r0, r7, #0
	bl sub_08055C80
	adds r6, r0, #0
	cmp r6, #0
	bne _08044B0A
	b _08044C68
_08044B0A:
	mov r1, r8
	mov r2, sl
	movs r3, #1
	rsbs r3, r3, #0
	movs r0, #0xf
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_08047CDC
	b _08044C68
_08044B22:
	bl sub_08001B9C
	adds r6, r0, #0
	bl sub_080025D8
	subs r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
	movs r1, #1
	bl sub_0800255C
	adds r4, r0, #0
	cmp r4, #0
	beq _08044B50
	bl sub_080025D8
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r5, r0
	bhs _08044B50
	adds r5, r0, #0
_08044B50:
	lsrs r4, r5, #1
	adds r1, r4, #0
	cmp r1, #0xa
	bls _08044B72
	subs r1, #0xa
	ldr r0, _08044C78
	ldr r2, _08044C7C
	adds r0, r0, r2
	ldrb r0, [r0]
	muls r1, r0, r1
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08044B72:
	adds r0, r7, #0
	bl sub_08055BE0
	adds r5, r0, #0
	cmp r5, #0
	beq _08044BC0
	ldr r2, _08044C78
	ldr r0, _08044C7C
	adds r2, r2, r0
	ldrb r0, [r2]
	lsrs r0, r0, #1
	muls r0, r4, r0
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldrb r0, [r2]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sl
	lsls r2, r0, #0x10
	asrs r4, r2, #0x10
	ldr r3, _08044C80
	adds r2, r2, r3
	lsrs r2, r2, #0x10
	movs r3, #1
	rsbs r3, r3, #0
	movs r0, #0xf
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_08047CDC
	adds r4, #0xa
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sl, r4
_08044BC0:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #3
	str r0, [sp, #8]
	ldr r1, _08044C84
	adds r7, r0, r1
	adds r0, r6, #0
	bl sub_080025D8
	subs r4, r0, r6
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08001B18
	lsrs r4, r4, #0x11
	lsls r4, r4, #1
	adds r4, r4, r7
	ldr r2, _08044C88
	adds r0, r2, #0
	strh r0, [r4]
	ldrh r1, [r7]
	mov sb, r0
	cmp r1, sb
	beq _08044C0C
	mov r1, r8
	mov r2, sl
	movs r3, #1
	rsbs r3, r3, #0
	movs r0, #0xf
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_08047CDC
_08044C0C:
	adds r0, r6, #0
	movs r1, #1
	bl sub_0800255C
	adds r6, r0, #0
	cmp r6, #0
	beq _08044C68
	ldr r0, _08044C84
	adds r0, #0x1c
	ldr r3, [sp, #8]
	adds r7, r3, r0
	adds r0, r6, #0
	bl sub_080025D8
	subs r4, r0, r6
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl sub_08001B18
	lsrs r4, r4, #0x11
	lsls r4, r4, #1
	adds r4, r4, r7
	mov r0, sb
	strh r0, [r4]
	ldrh r0, [r7]
	cmp r0, sb
	beq _08044C68
	mov r1, r8
	mov r3, sl
	lsls r2, r3, #0x10
	movs r0, #0xa0
	lsls r0, r0, #0xc
	adds r2, r2, r0
	lsrs r2, r2, #0x10
	movs r3, #1
	rsbs r3, r3, #0
	movs r0, #0xf
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_08047CDC
_08044C68:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08044C78: .4byte gSomeBlend
_08044C7C: .4byte 0x0000C5A0
_08044C80: .4byte 0xFFFE0000
_08044C84: .4byte gUnknown_0201A2AC
_08044C88: .4byte 0x0000FFFF
	.syntax divided
