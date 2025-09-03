	.syntax unified
sub_0806B7B8:
	push {r4, r5, lr}
	adds r4, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, #0x2c
	lsls r2, r1, #3
	subs r2, r2, r1
	lsls r2, r2, #3
	adds r2, #4
	adds r2, r0, r2
	adds r0, r4, r3
	ldrh r3, [r2, #0x14]
	cmp r3, r0
	ble _0806B7D6
	adds r3, r0, #0
_0806B7D6:
	subs r3, r3, r4
	ldrh r0, [r2, #0x10]
	lsls r0, r0, #0xe
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r0, r5
	ldrh r0, [r2, #0x12]
	lsls r0, r0, #5
	adds r1, r1, r0
	lsls r0, r4, #5
	adds r1, r1, r0
	lsls r3, r3, #5
	cmp r3, #0
	ble _0806B806
	ldr r2, _0806B810
	ldr r0, [sp, #0xc]
	str r0, [r2]
	str r1, [r2, #4]
	asrs r0, r3, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806B806:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806B810: .4byte 0x040000D4
	.syntax divided
