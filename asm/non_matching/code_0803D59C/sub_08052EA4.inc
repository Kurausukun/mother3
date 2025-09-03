	.syntax unified
sub_08052EA4:
	movs r2, #0x20
	strb r2, [r0]
	ldrh r3, [r1]
	adds r0, #4
	movs r2, #0x21
	strb r2, [r0]
	adds r0, #4
	movs r2, #0x22
	strb r2, [r0]
	movs r2, #0x23
	strb r2, [r0, #4]
	adds r3, #4
	strh r3, [r1]
	bx lr
	.syntax divided
