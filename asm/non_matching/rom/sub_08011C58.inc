	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x30]
	mov sb, r0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	mov r3, sb
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	str r1, [sp, #8]
	ldr r7, _08011D20
	movs r1, #0x80
	lsls r1, r1, #9
	adds r4, r4, r1
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
	adds r6, r0, #0
	ldr r3, [sp, #8]
	lsrs r2, r3, #0x11
	lsls r0, r2, #6
	mov r1, sl
	adds r7, r1, r0
	adds r5, r6, r0
	ldr r0, _08011D24
	ldrh r1, [r0, #2]
	ldr r0, _08011D28
	ands r0, r1
	cmp r0, #0
	beq _08011D34
	mov sb, r2
	movs r4, #0
	cmp r4, sb
	bhs _08011D88
	ldr r1, _08011D2C
	ldr r2, [sp]
	lsls r0, r2, #1
	subs r2, r0, #2
	ldr r0, [sp, #4]
	lsrs r3, r0, #0x11
	ldr r0, _08011D30
	orrs r3, r0
_08011CF0:
	mov r0, sl
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r6, r2
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	adds r0, r7, r2
	str r0, [r1]
	adds r0, r5, r2
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x40
	add sl, r0
	adds r6, #0x40
	adds r7, #0x40
	adds r5, #0x40
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, sb
	blo _08011CF0
	b _08011D88
	.align 2, 0
_08011D20: .4byte gUnknown_02016078
_08011D24: .4byte gGame
_08011D28: .4byte 0x00004008
_08011D2C: .4byte 0x040000D4
_08011D30: .4byte 0x84A00000
_08011D34:
	mov sb, r2
	movs r4, #0
	cmp r4, sb
	bhs _08011D88
	ldr r1, _08011D98
	mov r8, r1
	ldr r2, [sp]
	lsls r0, r2, #1
	subs r1, r0, #2
	ldr r3, [sp, #4]
	lsrs r3, r3, #0x11
	str r3, [sp, #0xc]
	ldr r0, _08011D9C
	orrs r3, r0
	str r3, [sp, #0xc]
	ldr r2, _08011DA0
_08011D54:
	mov r0, sl
	adds r0, r0, r1
	mov r3, r8
	str r0, [r3]
	adds r0, r6, r1
	str r0, [r3, #4]
	ldr r0, [sp, #0xc]
	str r0, [r3, #8]
	ldr r3, [r3, #8]
	adds r0, r7, r1
	str r0, [r2]
	adds r0, r5, r1
	str r0, [r2, #4]
	ldr r0, [sp, #0xc]
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r3, #0x40
	add sl, r3
	adds r6, #0x40
	adds r7, #0x40
	adds r5, #0x40
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, sb
	blo _08011D54
_08011D88:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011D98: .4byte 0x040000B0
_08011D9C: .4byte 0x84A00000
_08011DA0: .4byte 0x040000D4
	.syntax divided
