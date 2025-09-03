	.syntax unified
	push {r4, lr}
	ldr r2, _0803B7F8
	ldr r1, _0803B7FC
	movs r0, #0x14
	str r0, [r1]
	movs r4, #0
	movs r3, #0xa5
	strb r3, [r1, #4]
	movs r0, #1
	strb r0, [r1, #5]
	str r2, [r1, #0xc]
	str r2, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r2]
	strb r3, [r2, #4]
	strb r4, [r2, #5]
	str r1, [r2, #0xc]
	str r1, [r2, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803B7F8: .4byte gUnknown_0202CD38
_0803B7FC: .4byte gUnknown_02001030
	.syntax divided
