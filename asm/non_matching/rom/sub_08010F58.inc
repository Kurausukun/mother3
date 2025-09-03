	.syntax unified
sub_08010F58:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r4, [sp, #0x44]
	ldr r5, [sp, #0x48]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0xc]
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x14
	ldr r2, _08010FC4
	ldrb r0, [r2, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08010FB6
	ldr r3, [sp, #4]
	lsls r0, r3, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1d]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne _08010FC8
_08010FB6:
	adds r0, r6, #0
	bl sub_08002FD4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _08010FCE
	.align 2, 0
_08010FC4: .4byte gGame
_08010FC8:
	cmp r6, r1
	blo _08010FCE
	b _0801123A
_08010FCE:
	ldr r2, _08010FF0
	ldrb r0, [r2, #0x11]
	lsls r0, r0, #0x1a
	lsrs r1, r0, #0x1f
	cmp r1, #0
	bne _08010FE8
	ldr r4, [sp, #4]
	lsls r0, r4, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1c]
	lsrs r0, r0, #6
	cmp r0, #3
	bne _08010FF4
_08010FE8:
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	b _08010FF8
	.align 2, 0
_08010FF0: .4byte gGame
_08010FF4:
	mov r0, sp
	strh r1, [r0]
_08010FF8:
	ldr r0, [sp, #8]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r6, r6, #0x10
	asrs r2, r6, #0x10
	ldr r0, [sp, #4]
	bl sub_0801A904
	str r0, [sp, #0x10]
	ldr r5, _080110B4
	ldr r4, [sp, #4]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	adds r3, r7, #0
	bl sub_08001378
	mov sb, r0
	adds r3, r7, #1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl sub_08001378
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x14]
	str r6, [sp, #0x20]
	ldr r2, [sp, #0xc]
	cmp r1, r2
	blo _08011042
	b _0801123A
_08011042:
	ldr r3, [sp, #8]
	ldr r4, [sp, #0x14]
	adds r1, r3, r4
	ldr r0, [sp, #0x18]
	cmp r1, r0
	blt _08011072
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08011058
	b _0801123A
_08011058:
	adds r0, r1, #0
	ldr r1, [sp, #0x18]
	bl sub_08002FD4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	asrs r2, r3, #0x10
	bl sub_0801A904
	str r0, [sp, #0x10]
_08011072:
	ldr r4, [sp, #0x10]
	ldr r0, [r4]
	lsls r2, r0, #0x16
	lsrs r1, r2, #0x1c
	adds r3, r0, #0
	cmp r1, #0xb
	bls _08011082
	b _0801120E
_08011082:
	lsls r1, r3, #0x1a
	lsrs r0, r1, #0x1a
	cmp r0, #0x3f
	bls _0801108C
	b _0801120E
_0801108C:
	ldr r0, _080110B8
	ldr r4, _080110BC
	adds r0, r0, r4
	ldr r4, [r0]
	lsrs r0, r2, #0x1c
	lsls r0, r0, #9
	lsrs r1, r1, #0x17
	adds r0, r0, r1
	adds r4, r4, r0
	ldr r0, [sp, #0x10]
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	adds r2, r0, #0
	ands r2, r1
	cmp r2, r0
	bne _080110C4
	ldr r1, _080110C0
	mov sl, r1
	b _080110E4
	.align 2, 0
_080110B4: .4byte gUnknown_02016078
_080110B8: .4byte gGame
_080110BC: .4byte 0x00004088
_080110C0: .4byte gUnknown_08D2D310
_080110C4:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bne _080110D4
	ldr r2, _080110D0
	b _080110E2
	.align 2, 0
_080110D0: .4byte gUnknown_08D2D314
_080110D4:
	movs r0, #0x80
	lsls r0, r0, #8
	ldr r1, _0801113C
	mov sl, r1
	cmp r2, r0
	bne _080110E4
	ldr r2, _08011140
_080110E2:
	mov sl, r2
_080110E4:
	movs r6, #0xf0
	lsls r6, r6, #2
	ands r6, r3
	lsls r0, r3, #0x11
	lsrs r7, r0, #0x1f
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x1f
	mov ip, r0
	lsls r0, r3, #0x12
	lsrs r0, r0, #0x1c
	lsls r5, r0, #0xc
	mov r3, sl
	ldrb r2, [r3]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r2
	ldr r0, [r4]
	ands r1, r0
	str r0, [sp, #0x1c]
	cmp r1, #0
	beq _08011144
	adds r0, r2, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r0, sb
	strh r2, [r0]
	b _08011148
	.align 2, 0
_0801113C: .4byte gUnknown_08D2D31C
_08011140: .4byte gUnknown_08D2D318
_08011144:
	mov r2, sb
	strh r1, [r2]
_08011148:
	mov r3, sl
	ldrb r0, [r3, #1]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x1c]
	ands r1, r2
	cmp r1, #0
	beq _08011186
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r3, sb
	strh r2, [r3, #2]
	b _0801118A
_08011186:
	mov r0, sb
	strh r1, [r0, #2]
_0801118A:
	mov r1, sl
	ldrb r0, [r1, #2]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x1c]
	ands r1, r2
	cmp r1, #0
	beq _080111C8
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r6, r2
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	adds r0, r7, #0
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, ip
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	orrs r2, r5
	mov r3, r8
	strh r2, [r3]
	b _080111CC
_080111C8:
	mov r0, r8
	strh r1, [r0]
_080111CC:
	mov r1, sl
	ldrb r0, [r1, #3]
	movs r1, #0x80
	lsls r1, r1, #9
	lsls r1, r0
	ldr r2, [sp, #0x1c]
	ands r1, r2
	cmp r1, #0
	beq _08011208
	adds r0, #4
	adds r0, r4, r0
	ldr r2, [r0]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1a
	adds r1, r6, r1
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	eors r7, r0
	lsls r0, r7, #0xa
	orrs r1, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1f
	mov r3, ip
	eors r3, r2
	lsls r0, r3, #0xb
	orrs r1, r0
	orrs r5, r1
	mov r4, r8
	strh r5, [r4, #2]
	b _0801121C
_08011208:
	mov r0, r8
	strh r1, [r0, #2]
	b _0801121C
_0801120E:
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #2]
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2, #2]
	strh r0, [r2]
_0801121C:
	movs r3, #4
	add sb, r3
	add r8, r3
	ldr r4, [sp, #0x10]
	adds r4, #2
	str r4, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	bhs _0801123A
	b _08011042
_0801123A:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
