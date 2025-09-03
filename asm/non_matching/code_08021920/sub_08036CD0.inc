	.syntax unified
	lsls r0, r0, #0x10
	ldr r1, _08036CDC
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08036CDC: .4byte gUnknown_08D2E114
	.syntax divided
