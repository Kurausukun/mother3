	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	ldr r4, _08005ACC
	movs r1, #0
	strh r1, [r4]
	ldr r3, _08005AD0
	ldrh r1, [r3]
	movs r2, #4
	orrs r1, r2
	strh r1, [r3]
	ldr r3, _08005AD4
	ldrh r1, [r3]
	movs r2, #0x20
	orrs r1, r2
	strh r1, [r3]
	ldrh r2, [r3]
	movs r1, #0xff
	ands r1, r2
	strh r1, [r3]
	lsrs r0, r0, #8
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	movs r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005ACC: .4byte 0x04000208
_08005AD0: .4byte 0x04000200
_08005AD4: .4byte 0x04000004
	.syntax divided
