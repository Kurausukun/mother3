	.syntax unified
sub_08029428:
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r3, r1, #0
	movs r0, #0
	str r0, [r3, #4]
	strh r0, [r3, #0xe]
	strh r0, [r3, #0x14]
	strh r0, [r3, #0x1a]
	strh r0, [r3, #0x20]
	strh r0, [r3, #0x26]
	strh r0, [r3, #0x2c]
	movs r6, #0
	ldr r5, _080294D8
	movs r4, #0x6c
_08029444:
	mov r2, ip
	adds r2, #0x34
	adds r2, r2, r6
	ldrb r0, [r2]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r5, #0
	adds r0, #0x10
	adds r1, r1, r0
	ldr r0, [r3, #4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3, #4]
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x14]
	ldrh r1, [r3, #0xe]
	adds r0, r0, r1
	strh r0, [r3, #0xe]
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #0x14]
	adds r0, r0, r1
	strh r0, [r3, #0x14]
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #0x1a]
	adds r0, r0, r1
	strh r0, [r3, #0x1a]
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1a]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #0x20]
	adds r0, r0, r1
	strh r0, [r3, #0x20]
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1b]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #0x26]
	adds r0, r0, r1
	strh r0, [r3, #0x26]
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r0, r0, r5
	ldrb r0, [r0, #0x1c]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #0x2c]
	adds r0, r0, r1
	strh r0, [r3, #0x2c]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _08029444
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080294D8: .4byte gGoodsInfo
	.syntax divided
