	.syntax unified
sub_08005AD8:
	push {r4, lr}
	lsls r0, r0, #0x10
	ldr r4, _08005B1C
	movs r1, #0
	strh r1, [r4]
	ldr r3, _08005B20
	ldrh r1, [r3]
	movs r2, #4
	orrs r1, r2
	strh r1, [r3]
	ldr r3, _08005B24
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
	ldr r1, _08005B28
	ldr r0, _08005B2C
	str r0, [r1]
	ldr r0, _08005B30
	str r0, [r1, #8]
	movs r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005B1C: .4byte 0x04000208
_08005B20: .4byte 0x04000200
_08005B24: .4byte 0x04000004
_08005B28: .4byte gIntrHandlers
_08005B2C: .4byte sub_0800545C
_08005B30: .4byte sub_080056E4
	.syntax divided
