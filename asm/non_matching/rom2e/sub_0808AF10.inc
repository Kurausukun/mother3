	.syntax unified
sub_0808AF10:
	ldr r2, [r0, #0x20]
	str r2, [r0, #0x24]
	lsls r1, r1, #0x10
	str r1, [r0, #0x28]
	bx lr
	.align 2, 0
	.syntax divided
