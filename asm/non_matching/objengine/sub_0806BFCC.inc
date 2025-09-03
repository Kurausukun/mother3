	.syntax unified
sub_0806BFCC:
	push {r4, r5, r6, lr}
	adds r6, r3, #0
	asrs r1, r1, #1
	lsls r3, r1, #7
	adds r3, r3, r1
	lsls r3, r3, #2
	adds r1, r3, r0
	ldr r5, [r1, #0x20]
	adds r4, r1, #0
	adds r1, r5, r2
	str r1, [r4, #0x20]
	adds r3, r4, #0
	adds r3, #0x20
	lsls r0, r5, #3
	adds r0, #4
	adds r3, r3, r0
	lsls r0, r2, #3
	cmp r0, #0
	ble _0806C004
	ldr r2, _0806C00C
	str r6, [r2]
	str r3, [r2, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C004:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806C00C: .4byte 0x040000D4
	.syntax divided
