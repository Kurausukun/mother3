	.syntax unified
sub_08011DA4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x28]
	mov sb, r0
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	mov r2, sb
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	str r1, [sp, #4]
	ldr r7, _08011E5C
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08001378
	mov sl, r0
	adds r0, r7, #0
	adds r1, r4, #0
	mov r2, r8
	mov r3, sb
	bl sub_08001378
	adds r7, r0, #0
	ldr r1, [sp, #4]
	lsrs r2, r1, #0x11
	lsls r0, r2, #6
	mov r1, sl
	adds r6, r1, r0
	adds r4, r7, r0
	ldr r0, _08011E60
	ldrh r1, [r0, #2]
	ldr r0, _08011E64
	ands r0, r1
	cmp r0, #0
	beq _08011E6C
	mov r8, r2
	movs r3, #0
	cmp r3, r8
	bhs _08011EA8
	ldr r1, _08011E68
	ldr r0, [sp]
	lsrs r2, r0, #0x11
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r2, r0
_08011E34:
	mov r0, sl
	str r0, [r1]
	str r7, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	str r6, [r1]
	str r4, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x40
	add sl, r0
	adds r7, #0x40
	adds r6, #0x40
	adds r4, #0x40
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r8
	blo _08011E34
	b _08011EA8
	.align 2, 0
_08011E5C: .4byte gUnknown_02016078
_08011E60: .4byte gGame
_08011E64: .4byte 0x00004008
_08011E68: .4byte 0x040000D4
_08011E6C:
	mov r8, r2
	movs r3, #0
	cmp r3, r8
	bhs _08011EA8
	ldr r5, _08011EB8
	ldr r1, [sp]
	lsrs r2, r1, #0x11
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r2, r0
	ldr r1, _08011EBC
_08011E82:
	mov r0, sl
	str r0, [r5]
	str r7, [r5, #4]
	str r2, [r5, #8]
	ldr r0, [r5, #8]
	str r6, [r1]
	str r4, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x40
	add sl, r0
	adds r7, #0x40
	adds r6, #0x40
	adds r4, #0x40
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r8
	blo _08011E82
_08011EA8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011EB8: .4byte 0x040000B0
_08011EBC: .4byte 0x040000D4
	.syntax divided
