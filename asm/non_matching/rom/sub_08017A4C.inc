	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov sb, r4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	movs r0, #0
	mov sl, r0
	movs r1, #0x1f
	mov r8, r1
_08017A70:
	cmp r7, #0x1f
	bne _08017A86
	mov r3, sb
	cmp r3, #8
	bne _08017A80
	ldrh r0, [r5]
	strh r0, [r4]
	b _08017B5C
_08017A80:
	ldrh r0, [r6]
	strh r0, [r4]
	b _08017B5C
_08017A86:
	mov r0, sb
	cmp r0, #8
	bne _08017AE8
	ldr r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	ldr r1, [r5]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	adds r2, r7, #0
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, r8
	ands r0, r1
	ldrb r1, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldr r0, [r6]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	ldr r1, [r5]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	adds r2, r7, #0
	movs r3, #0x1f
	bl sub_08002E60
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	ldrh r1, [r4]
	ldr r3, _08017AE4
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	ldr r0, [r6]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	ldr r1, [r5]
	b _08017B3C
	.align 2, 0
_08017AE4: .4byte 0xFFFFFC1F
_08017AE8:
	ldr r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	ldr r1, [r6]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	adds r2, r7, #0
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, r8
	ands r0, r1
	ldrb r1, [r4]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldr r0, [r5]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	ldr r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	adds r2, r7, #0
	movs r3, #0x1f
	bl sub_08002E60
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #5
	ldrh r1, [r4]
	ldr r3, _08017B80
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r4]
	ldr r0, [r5]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	ldr r1, [r6]
_08017B3C:
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	adds r2, r7, #0
	movs r3, #0x1f
	bl sub_08002E60
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	movs r3, #0x7d
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #1]
_08017B5C:
	adds r4, #2
	adds r6, #2
	adds r5, #2
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0xf
	bhi _08017B72
	b _08017A70
_08017B72:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017B80: .4byte 0xFFFFFC1F
	.syntax divided
