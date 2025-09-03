	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r6, _0801A208
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #3
	adds r3, r3, r6
	lsrs r1, r1, #0x14
	ldr r6, _0801A20C
	adds r0, r3, r6
	strh r1, [r0]
	lsrs r2, r2, #0x14
	ldr r1, _0801A210
	adds r0, r3, r1
	strh r2, [r0]
	lsls r1, r4, #4
	ldr r2, _0801A214
	adds r0, r3, r2
	strh r1, [r0]
	lsls r1, r5, #4
	adds r6, #6
	adds r0, r3, r6
	strh r1, [r0]
	movs r1, #0xf
	ands r4, r1
	adds r2, #4
	adds r0, r3, r2
	strh r4, [r0]
	ands r5, r1
	adds r6, #4
	adds r3, r3, r6
	strh r5, [r3]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A208: .4byte gGame
_0801A20C: .4byte 0x000058B0
_0801A210: .4byte 0x000058B2
_0801A214: .4byte 0x000058B4
	.syntax divided
