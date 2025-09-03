	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	ldr r0, _08008394
	movs r2, #0xa0
	lsls r2, r2, #0xe
	adds r1, r1, r2
	lsrs r1, r1, #0x10
	bl sub_0800289C
	adds r6, r0, #0
	ldr r4, _08008398
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001378
	adds r5, r0, #0
	movs r0, #0
	subs r4, #0x50
	mov sl, r4
	ldr r7, _0800839C
	mov sb, r7
_08008316:
	movs r4, #0
	adds r1, r6, #0
	adds r1, #0x40
	str r1, [sp]
	movs r2, #0x40
	adds r2, r2, r5
	mov ip, r2
	adds r0, #1
	mov r8, r0
_08008328:
	lsls r0, r4, #1
	adds r3, r0, r5
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r3]
	ldr r1, [r3]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	movs r7, #0xc0
	lsls r7, r7, #1
	adds r1, r1, r7
	ldr r7, _080083A0
	adds r0, r7, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r1, [r3]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1c
	adds r1, #0xe
	lsls r1, r1, #4
	ldrb r2, [r3, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1d
	bls _08008328
	ldr r6, [sp]
	mov r5, ip
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bls _08008316
	ldr r0, _080083A4
	add r0, sl
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008394: .4byte gUnknown_09AF3790
_08008398: .4byte gUnknown_02016078
_0800839C: .4byte 0xFFFFFC00
_080083A0: .4byte 0x000003FF
_080083A4: .4byte 0x00002C90
	.syntax divided
