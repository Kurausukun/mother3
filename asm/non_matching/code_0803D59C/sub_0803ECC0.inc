	.syntax unified
sub_0803ECC0:
	push {r4, r5, lr}
	ldr r4, _0803ED24
	ldr r0, _0803ED28
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0803ED2C
	adds r0, r4, r1
	movs r3, #0
	str r3, [r0]
	ldr r2, _0803ED30
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r0, [r0]
	movs r1, #7
	ands r0, r1
	adds r2, #0x8d
	ldrb r1, [r2]
	lsls r1, r1, #5
	lsls r0, r0, #2
	orrs r0, r1
	strb r0, [r4, #6]
	ldr r0, _0803ED34
	str r3, [r0]
	strh r3, [r0, #8]
	ldr r1, _0803ED38
	str r1, [r0, #0x68]
	ldr r0, _0803ED3C
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803ED44
	ldr r0, _0803ED40
	movs r2, #0xe4
	lsls r2, r2, #1
	bl sub_08001A14
	b _0803ED52
	.align 2, 0
_0803ED24: .4byte gUnknown_0200F920
_0803ED28: .4byte 0x00006478
_0803ED2C: .4byte 0x00006474
_0803ED30: .4byte gUnknown_020050C0
_0803ED34: .4byte gUnknown_020225DC
_0803ED38: .4byte gUnknown_030040F0
_0803ED3C: .4byte gUnknown_02004100
_0803ED40: .4byte gUnknown_080C737A
_0803ED44:
	cmp r0, #0xd
	beq _0803ED52
	ldr r0, _0803ED90
	movs r2, #0xe4
	lsls r2, r2, #1
	bl sub_08001A14
_0803ED52:
	ldr r5, _0803ED94
	ldr r0, _0803ED98
	adds r1, r5, r0
	ldr r0, _0803ED9C
	str r0, [r1]
	ldr r0, _0803EDA0
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _0803EDA8
	adds r0, r5, #0
	bl sub_080013D0
	adds r4, r5, #0
	adds r4, #0x50
	adds r0, r4, #0
	bl sub_08001530
	ldr r1, _0803EDA4
	adds r0, r5, r1
	movs r1, #2
	bl sub_08001630
	adds r0, r5, #0
	bl sub_0803EE20
	adds r0, r4, #0
	bl sub_0803EE78
	bl sub_080564C0
	b _0803EDD2
	.align 2, 0
_0803ED90: .4byte gUnknown_080C71B2
_0803ED94: .4byte gSomeBlend
_0803ED98: .4byte 0x0000C620
_0803ED9C: .4byte gOAMObjBuffer
_0803EDA0: .4byte gUnknown_02004100
_0803EDA4: .4byte 0x00002CA0
_0803EDA8:
	adds r0, r5, #0
	bl sub_080013D0
	adds r4, r5, #0
	adds r4, #0x50
	adds r0, r4, #0
	bl sub_08001454
	ldr r1, _0803EE0C
	adds r0, r5, r1
	movs r1, #2
	bl sub_08001630
	adds r0, r5, #0
	bl sub_0803EE20
	adds r0, r4, #0
	bl sub_0803EE78
	bl sub_080564C0
_0803EDD2:
	ldr r0, _0803EE10
	bl sub_0803F038
	ldr r4, _0803EE14
	adds r0, r4, #0
	bl sub_0803F068
	ldr r1, _0803EE18
	adds r0, r4, r1
	bl sub_0803F3B0
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_0804BB58
	ldr r0, _0803EE1C
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_080499A4
	bl sub_08050D64
	bl sub_0803EEA0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803EE0C: .4byte 0x00002CA0
_0803EE10: .4byte gUnknown_0200F92C
_0803EE14: .4byte gUnknown_02018CD8
_0803EE18: .4byte 0x00001884
_0803EE1C: .4byte 0x00002220
	.syntax divided
