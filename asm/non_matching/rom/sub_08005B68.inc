	.syntax unified
	ldr r3, _08005B94
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08005B98
	ldrh r1, [r2]
	ldr r0, _08005B9C
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08005BA0
	ldrh r1, [r2]
	ldr r0, _08005BA4
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08005BA8
	ldr r0, _08005BAC
	str r0, [r1]
	ldr r0, _08005BB0
	str r0, [r1, #8]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_08005B94: .4byte 0x04000208
_08005B98: .4byte 0x04000200
_08005B9C: .4byte 0x0000FFFB
_08005BA0: .4byte 0x04000004
_08005BA4: .4byte 0x0000FFDF
_08005BA8: .4byte gIntrHandlers
_08005BAC: .4byte sub_080053D0
_08005BB0: .4byte sub_080055E4
	.syntax divided
