	.syntax unified
sub_08005BFC:
	ldr r1, _08005C0C
	movs r0, #1
	strh r0, [r1]
	ldr r1, _08005C10
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_08005C0C: .4byte gUnknown_03004B00
_08005C10: .4byte gUnknown_03004B02
	.syntax divided
