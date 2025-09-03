	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	str r5, [r4]
	str r5, [r4, #4]
	str r5, [r4, #8]
	ldr r0, _08024ADC
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r3, #9
	rsbs r3, r3, #0
	ands r0, r3
	subs r1, #2
	ands r0, r1
	strb r0, [r2]
	ldr r0, _08024AE0
	adds r2, r4, r0
	ldrb r0, [r2]
	ands r1, r0
	ands r1, r3
	strb r1, [r2]
	ldr r0, _08024AE4
	adds r1, r4, r0
	ldr r0, _08024AE8
	strh r0, [r1]
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08024AEC
	adds r0, r4, r1
	strh r5, [r0]
	ldr r0, _08024AF0
	ldrb r0, [r0]
	cmp r0, #5
	bgt _08024AF4
	cmp r0, #3
	blt _08024AF4
	adds r1, #2
	adds r0, r4, r1
	strh r5, [r0]
	b _08024AFC
	.align 2, 0
_08024ADC: .4byte 0x00001490
_08024AE0: .4byte 0x00001491
_08024AE4: .4byte 0x0000146A
_08024AE8: .4byte 0x0000FFFF
_08024AEC: .4byte 0x00001478
_08024AF0: .4byte gUnknown_02005080
_08024AF4:
	ldr r0, _08024B30
	adds r1, r4, r0
	movs r0, #2
	strh r0, [r1]
_08024AFC:
	ldr r0, _08024B34
	adds r1, r4, r0
	movs r2, #0
	movs r0, #0x22
	strh r0, [r1]
	movs r0, #0x72
	strh r0, [r1, #2]
	ldr r0, _08024B38
	adds r1, r4, r0
	movs r0, #0x32
	strh r0, [r1]
	strh r2, [r1, #2]
	movs r3, #0
	ldr r0, _08024B3C
	adds r1, r4, r0
_08024B1A:
	lsls r0, r3, #2
	adds r0, r1, r0
	str r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _08024B1A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08024B30: .4byte 0x0000147A
_08024B34: .4byte 0x00001488
_08024B38: .4byte 0x0000148C
_08024B3C: .4byte 0x00001448
	.syntax divided
