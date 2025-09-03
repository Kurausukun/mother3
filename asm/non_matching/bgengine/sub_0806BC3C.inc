	.syntax unified
sub_0806BC3C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	bl sub_0806A9A4
	adds r7, r0, #0
	movs r0, #0
	mov sl, r0
	ldr r1, [sp]
	ldr r0, [r1, #0x2c]
	cmp sl, r0
	blt _0806BC5E
	b _0806BDAE
_0806BC5E:
	adds r1, #0x30
	mov sb, r1
_0806BC62:
	mov r2, sb
	ldrh r1, [r2, #0x34]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806BC70
	b _0806BD80
_0806BC70:
	adds r0, r7, #0
	bl sub_0806AFF0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	mov r2, sl
	lsls r1, r2
	orrs r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_0806AF2C
	mov r0, sb
	movs r2, #0x2c
	ldrsh r1, [r0, r2]
	cmp r1, r4
	beq _0806BCA2
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0806BCB6
	movs r3, #0
	b _0806BCC4
_0806BCA2:
	mov r1, sb
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	eors r0, r4
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r3, r1, #0x1f
	movs r0, #2
	ands r3, r0
	b _0806BCC4
_0806BCB6:
	mov r1, sb
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	movs r3, #3
	cmp r0, r4
	bne _0806BCC4
	movs r3, #1
_0806BCC4:
	mov r0, sb
	ldr r4, [r0, #0x30]
	asrs r4, r4, #1
	ldrh r5, [r0, #0x10]
	ldrh r1, [r0]
	mov r8, r1
	mov r2, sl
	lsls r6, r2, #0x10
	lsrs r6, r6, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	str r3, [sp, #4]
	bl sub_0806AFF8
	ldr r1, _0806BD7C
	adds r2, r1, #0
	ands r2, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AF34
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AFF8
	ldr r3, [sp, #4]
	lsls r2, r3, #0xe
	orrs r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AF34
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AFF8
	orrs r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0806AF34
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AFF8
	lsls r5, r5, #2
	orrs r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0806AF34
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AFF8
	mov r2, r8
	lsls r2, r2, #8
	orrs r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AF34
	mov r0, sb
	ldrh r2, [r0, #0x28]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AF40
	mov r1, sb
	ldrh r2, [r1, #0x2a]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806AF4C
	b _0806BD9C
	.align 2, 0
_0806BD7C: .4byte 0x000020F0
_0806BD80:
	adds r0, r7, #0
	bl sub_0806AFF0
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	mov r2, sl
	lsls r0, r2
	bics r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_0806AF2C
_0806BD9C:
	movs r0, #0x38
	add sb, r0
	movs r1, #1
	add sl, r1
	ldr r2, [sp]
	ldr r0, [r2, #0x2c]
	cmp sl, r0
	bge _0806BDAE
	b _0806BC62
_0806BDAE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
