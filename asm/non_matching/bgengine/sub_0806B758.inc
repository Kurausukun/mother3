	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	ldr r6, [sp, #0x10]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x2c
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r1, r0, r2
	adds r0, r4, r3
	ldrh r3, [r1, #0x14]
	cmp r3, r0
	ble _0806B778
	adds r3, r0, #0
_0806B778:
	subs r3, r3, r4
	ldrh r0, [r1, #0x10]
	lsls r0, r0, #0xe
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r2, r0, r5
	ldrh r0, [r1, #0x12]
	lsls r0, r0, #5
	adds r2, r2, r0
	lsls r0, r4, #5
	adds r2, r2, r0
	cmp r3, #0
	ble _0806B7A6
	ldr r1, _0806B7B0
	ldr r5, _0806B7B4
_0806B796:
	str r6, [r1]
	str r2, [r1, #4]
	str r5, [r1, #8]
	ldr r0, [r1, #8]
	adds r2, #0x20
	subs r3, #1
	cmp r3, #0
	bne _0806B796
_0806B7A6:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806B7B0: .4byte 0x040000D4
_0806B7B4: .4byte 0x84000008
	.syntax divided
