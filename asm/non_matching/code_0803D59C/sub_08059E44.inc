	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldrh r1, [r5, #2]
	lsls r1, r1, #0x10
	ldrh r0, [r5]
	orrs r0, r1
	str r0, [sp, #8]
	ldrh r0, [r5, #2]
	mov sl, r0
	adds r6, r5, #0
	adds r6, #0x4d
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	mov r8, r6
_08059E6C:
	adds r0, r5, #0
	adds r0, #0x42
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_0805A2A0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #4
	ldrb r1, [r6]
	movs r3, #0x31
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	ldrh r0, [r5, #0x3e]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	bl sub_08036E0C
	adds r4, r0, #0
	bl sub_08002C4C
	adds r7, r0, #0
	adds r0, r4, #0
	bl sub_08002C54
	adds r1, r5, #0
	bl sub_08059F6C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, sb
	beq _08059E6C
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r1, r0, #0x1e
	cmp r1, #0
	bne _08059EC8
	ldr r0, [r5, #0xc]
	b _08059ECE
_08059EC8:
	ldrh r0, [r5, #0x3e]
	bl sub_08036D78
_08059ECE:
	str r0, [r5, #8]
	mov r3, r8
	ldrb r0, [r3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bgt _08059EE0
	cmp r4, #0
	beq _08059F5A
_08059EE0:
	ldr r0, _08059F2C
	ldrh r2, [r0]
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x44
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, r2
	beq _08059F08
	strh r2, [r1]
	adds r0, r7, #0
	adds r1, r2, #0
	bl sub_08002AF4
	str r0, [r5, #4]
	add r1, sp, #4
	movs r0, #1
	strh r0, [r1]
_08059F08:
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #0
	beq _08059F30
	add r4, sp, #8
	adds r0, r5, #0
	adds r0, #0x4a
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0xc
	ldrb r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0805A0A0
	b _08059F4A
	.align 2, 0
_08059F2C: .4byte gUnknown_02001058
_08059F30:
	add r4, sp, #8
	adds r0, r5, #0
	adds r0, #0x4a
	ldrh r2, [r0]
	subs r0, #0xa
	ldrb r3, [r0]
	adds r0, #0xc
	ldrb r0, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08059FD8
_08059F4A:
	movs r0, #0
	ldrsh r1, [r4, r0]
	mov r3, sl
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_0805A1A0
_08059F5A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
