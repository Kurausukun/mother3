	.syntax unified
	push {r4, lr}
	ldr r3, _0803E4F8
	movs r0, #0
	strh r0, [r3]
	ldr r2, _0803E4FC
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _0803E500
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r4, #0xa0
	lsls r4, r4, #8
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0803E504
	ldr r0, _0803E508
	str r0, [r1, #8]
	movs r0, #1
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803E4F8: .4byte 0x04000208
_0803E4FC: .4byte 0x04000200
_0803E500: .4byte 0x04000004
_0803E504: .4byte gIntrHandlers
_0803E508: .4byte sub_0803E3D8
	.syntax divided
