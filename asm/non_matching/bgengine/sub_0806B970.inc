	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	ldr r6, [sp, #0x10]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r0, r0, r2
	adds r0, #0x44
	adds r1, r4, r3
	ldr r3, [r0, #4]
	cmp r3, r1
	ble _0806B990
	adds r3, r1, #0
_0806B990:
	subs r3, r3, r4
	cmp r3, #0
	ble _0806B9B0
	ldr r1, [r0, #8]
	lsls r0, r4, #5
	adds r2, r0, r1
	ldr r1, _0806B9B8
	ldr r5, _0806B9BC
_0806B9A0:
	str r6, [r1]
	str r2, [r1, #4]
	str r5, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #0x20
	subs r3, #1
	cmp r3, #0
	bne _0806B9A0
_0806B9B0:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806B9B8: .4byte 0x040000D4
_0806B9BC: .4byte 0x84000008
	.syntax divided
