	.syntax unified
sub_0806B9C0:
	push {r4, lr}
	adds r4, r2, #0
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
	ble _0806B9DE
	adds r3, r1, #0
_0806B9DE:
	subs r3, r3, r4
	lsls r1, r4, #5
	ldr r0, [r0, #8]
	adds r1, r0, r1
	lsls r3, r3, #5
	cmp r3, #0
	ble _0806BA00
	ldr r2, _0806BA08
	ldr r0, [sp, #8]
	str r0, [r2]
	str r1, [r2, #4]
	asrs r0, r3, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806BA00:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806BA08: .4byte 0x040000D4
	.syntax divided
