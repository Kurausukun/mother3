	.syntax unified
sub_08051840:
	push {r4, r5, r6, r7, lr}
	ldr r4, _08051874
	add sp, r4
	adds r7, r0, #0
	ldr r6, _08051878
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r4, r6, r0
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	bl sub_080521A4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805187C
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	b _080518F0
	.align 2, 0
_08051874: .4byte 0xFFFFEFF8
_08051878: .4byte gUnknown_020050C0
_0805187C:
	add r5, sp, #4
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r5, #0
	bl memclear
	adds r1, r6, #0
	adds r1, #0xd0
	adds r0, r7, #0
	movs r2, #0x20
	bl sub_08001B18
	ldrb r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4]
	adds r4, r6, #0
	adds r4, #0xf0
	ldrh r0, [r4]
	movs r0, #0
	strh r0, [r4]
	adds r0, r6, #0
	movs r1, #0xf4
	bl sub_08001DC8
	ldr r1, _08051900
	add r1, sp
	str r0, [r1]
	ldr r0, [r1]
	mvns r0, r0
	ldrh r1, [r4]
	strh r0, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0xf4
	bl sub_08001B18
	movs r0, #0
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	movs r2, #1
	bl sub_080522A8
	movs r0, #1
	bl sub_0805217C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	movs r2, #1
	bl sub_080522A8
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
_080518F0:
	mov r0, sp
	ldrh r0, [r0]
	ldr r3, _08051904
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08051900: .4byte 0x00001004
_08051904: .4byte 0x00001008
	.syntax divided
