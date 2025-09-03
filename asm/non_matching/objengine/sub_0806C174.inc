	.syntax unified
	push {r4, r5, lr}
	adds r5, r2, #0
	ldr r2, _0806C1A8
	adds r0, r0, r2
	ldr r3, [r0]
	adds r2, r3, r1
	str r2, [r0]
	lsls r2, r3, #5
	adds r2, #4
	adds r4, r0, r2
	lsls r0, r1, #5
	cmp r0, #0
	ble _0806C1A0
	ldr r2, _0806C1AC
	str r5, [r2]
	str r4, [r2, #4]
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806C1A0:
	adds r0, r3, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0806C1A8: .4byte 0x00000948
_0806C1AC: .4byte 0x040000D4
	.syntax divided
