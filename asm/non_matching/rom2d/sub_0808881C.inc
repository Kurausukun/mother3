	.syntax unified
sub_0808881C:
	movs r1, #0
	strh r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	.syntax divided
