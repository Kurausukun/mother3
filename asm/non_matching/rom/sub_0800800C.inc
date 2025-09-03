	.syntax unified
sub_0800800C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08008090
	bl sub_0800289C
	adds r6, r0, #0
	ldr r0, _08008094
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r5, r0, #0
	movs r0, #0
	movs r1, #0xe0
	lsls r1, r1, #2
	mov sb, r1
	movs r2, #0xc0
	mov sl, r2
_0800803E:
	movs r4, #0
	movs r1, #0x1e
	adds r1, r1, r6
	mov ip, r1
	movs r2, #0x40
	adds r2, r2, r5
	mov r8, r2
	adds r7, r0, #1
_0800804E:
	lsls r3, r4, #1
	adds r3, r3, r5
	adds r0, r6, r4
	ldrb r2, [r0]
	movs r1, #0x3f
	ands r1, r2
	add r1, sb
	mov r0, sl
	ands r0, r2
	lsls r0, r0, #4
	orrs r1, r0
	ldr r2, _08008098
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r3]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1d
	bls _0800804E
	mov r6, ip
	mov r5, r8
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bls _0800803E
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008090: .4byte gUnknown_09B0CA54
_08008094: .4byte gUnknown_02016078
_08008098: .4byte 0xFFFFD000
	.syntax divided
