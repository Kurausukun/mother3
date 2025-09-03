	.syntax unified
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, [r3, #0x24]
	adds r1, r0, #1
	cmp r1, #0x14
	bgt _0806632A
	cmp r4, r0
	bgt _0806632A
	str r1, [r3, #0x24]
	adds r1, r0, #0
	adds r2, r3, #0
	adds r2, #0x28
	lsls r5, r4, #1
	cmp r1, r4
	ble _08066322
	lsls r0, r1, #1
	subs r0, #2
	adds r3, r0, r2
_08066316:
	ldrh r0, [r3]
	strh r0, [r3, #2]
	subs r3, #2
	subs r1, #1
	cmp r1, r4
	bgt _08066316
_08066322:
	adds r0, r2, r5
	strh r6, [r0]
	movs r0, #1
	b _0806632C
_0806632A:
	movs r0, #0
_0806632C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
