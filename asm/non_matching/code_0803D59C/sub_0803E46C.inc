	.syntax unified
sub_0803E46C:
	push {r4, lr}
	lsls r0, r0, #0x10
	ldr r4, _0803E4A4
	movs r1, #0
	strh r1, [r4]
	ldr r3, _0803E4A8
	ldrh r1, [r3]
	movs r2, #4
	orrs r1, r2
	strh r1, [r3]
	ldr r3, _0803E4AC
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
_0803E4A4: .4byte 0x04000208
_0803E4A8: .4byte 0x04000200
_0803E4AC: .4byte 0x04000004
	.syntax divided
