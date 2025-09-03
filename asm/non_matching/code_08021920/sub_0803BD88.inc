	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r3, _0803BF00
	adds r1, r7, #0
	movs r2, #0
	ldr r0, _0803BF04
	adds r0, r0, r3
	mov ip, r0
_0803BD9C:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #2]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #4]
	strh r0, [r1]
	adds r1, #2
	adds r3, #8
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x9f
	bls _0803BD9C
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r3, r7, r1
	ldr r4, _0803BF08
_0803BDC4:
	adds r1, r3, r2
	adds r0, r2, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _0803BDC4
	ldr r0, _0803BF0C
	add r0, ip
	ldrb r1, [r0]
	ldr r2, _0803BF10
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, _0803BF14
	add r0, ip
	ldrb r1, [r0]
	adds r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, _0803BF18
	add r0, ip
	ldrb r1, [r0]
	adds r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	ldr r0, _0803BF1C
	add r0, ip
	ldrh r1, [r0]
	adds r2, #1
	adds r0, r7, r2
	strh r1, [r0]
	ldr r0, _0803BF20
	add r0, ip
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	ldr r0, _0803BF24
	add r0, ip
	ldrh r1, [r0]
	adds r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	ldr r5, _0803BF28
	add r5, ip
	ldrb r4, [r5]
	lsls r1, r4, #0x1f
	ldr r0, _0803BF2C
	adds r3, r7, r0
	lsrs r1, r1, #0x1f
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x1e
	ands r1, r4
	movs r2, #0x1f
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r5]
	movs r1, #0xf0
	lsls r1, r1, #1
	ands r1, r0
	ldrh r2, [r3]
	ldr r0, _0803BF30
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _0803BF34
	add r0, ip
	ldrb r3, [r0]
	ldr r1, _0803BF38
	adds r1, r1, r7
	mov r8, r1
	movs r1, #2
	ands r1, r3
	mov r0, r8
	ldrb r2, [r0]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #4
	ands r1, r3
	movs r2, #5
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #8
	ands r1, r3
	subs r2, #4
	ands r0, r2
	orrs r0, r1
	movs r1, #0x10
	ands r1, r3
	movs r5, #0x11
	rsbs r5, r5, #0
	ands r0, r5
	orrs r0, r1
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	movs r6, #0x21
	rsbs r6, r6, #0
	ands r0, r6
	orrs r0, r1
	lsrs r3, r3, #7
	lsls r3, r3, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r3
	ldr r1, _0803BF3C
	add r1, ip
	ldrb r3, [r1]
	lsls r4, r3, #0x1b
	lsrs r1, r4, #0x1b
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #7
	movs r2, #0x7f
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r2, r7, r0
	lsrs r4, r4, #0x1c
	ldrb r0, [r2]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	orrs r1, r4
	lsls r3, r3, #0x1a
	lsrs r3, r3, #0x1f
	lsls r3, r3, #4
	ands r1, r5
	orrs r1, r3
	ldr r0, _0803BF40
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #5
	ands r1, r6
	orrs r1, r0
	strb r1, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BF00: .4byte gUnknown_0200D908
_0803BF04: .4byte 0xFFFF82F8
_0803BF08: .4byte gUnknown_0200DE94
_0803BF0C: .4byte 0x00008299
_0803BF10: .4byte 0x000003C5
_0803BF14: .4byte 0x0000829A
_0803BF18: .4byte 0x0000829B
_0803BF1C: .4byte 0x0000829E
_0803BF20: .4byte 0x000082AC
_0803BF24: .4byte 0x000082B4
_0803BF28: .4byte 0x000082B6
_0803BF2C: .4byte 0x000003CE
_0803BF30: .4byte 0xFFFFFE1F
_0803BF34: .4byte 0x000082B7
_0803BF38: .4byte 0x000003CF
_0803BF3C: .4byte 0x000082B8
_0803BF40: .4byte 0x000082B9
	.syntax divided
