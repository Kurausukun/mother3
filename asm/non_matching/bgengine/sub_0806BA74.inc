	.syntax unified
	push {lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #1
	bne _0806BA98
	adds r1, r0, #0
	adds r1, #0x2c
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	ldrh r2, [r1, #0x34]
	movs r0, #1
	orrs r0, r2
	b _0806BAAC
_0806BA98:
	adds r1, r0, #0
	adds r1, #0x2c
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r0, #4
	adds r1, r1, r0
	ldrh r2, [r1, #0x34]
	ldr r0, _0806BAB4
	ands r0, r2
_0806BAAC:
	strh r0, [r1, #0x34]
	pop {r0}
	bx r0
	.align 2, 0
_0806BAB4: .4byte 0x0000FFFE
	.syntax divided
