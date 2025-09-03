	.syntax unified
	ldr r3, _08056A40
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08056A44
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08056A48
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	bx lr
	.align 2, 0
_08056A40: .4byte 0x04000208
_08056A44: .4byte 0x04000200
_08056A48: .4byte 0x04000004
	.syntax divided
