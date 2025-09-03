	.syntax unified
sub_08051F80:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _0805204C
	add sp, r4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r5, #0x80
	lsls r5, r5, #5
	mov r0, sp
	adds r1, r5, #0
	bl memclear
	mov r7, sp
	mov r0, sp
	bl sub_08052128
	add r0, sp, #8
	mov r8, r0
	bl sub_08052054
	mov r0, sp
	adds r1, r5, #0
	bl sub_08001DC8
	mov r1, sp
	adds r6, r1, r5
	str r0, [r6]
	ldr r0, [r6]
	mvns r0, r0
	ldrh r1, [r7, #4]
	strh r0, [r7, #4]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080522A8
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sp
	adds r1, r5, #0
	bl memclear
	mov r7, sp
	mov r0, sp
	bl sub_08052128
	mov r0, r8
	bl sub_08052088
	mov r0, sp
	adds r1, r5, #0
	bl sub_08001DC8
	str r0, [r6]
	ldr r0, [r6]
	mvns r0, r0
	ldrh r1, [r7, #4]
	strh r0, [r7, #4]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080522A8
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sp
	adds r1, r5, #0
	bl memclear
	mov r7, sp
	mov r0, sp
	bl sub_08052128
	mov r0, r8
	bl sub_08052094
	mov r0, sp
	adds r1, r5, #0
	bl sub_08001DC8
	str r0, [r6]
	ldr r0, [r6]
	mvns r0, r0
	ldrh r1, [r7, #4]
	strh r0, [r7, #4]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_080522A8
	ldr r3, _08052050
	add sp, r3
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805204C: .4byte 0xFFFFEFFC
_08052050: .4byte 0x00001004
	.syntax divided
