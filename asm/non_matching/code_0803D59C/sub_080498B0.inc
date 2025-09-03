	.syntax unified
sub_080498B0:
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r0, #0xb
	lsrs r1, r1, #6
	adds r0, r0, r1
	ldr r1, _080498C0
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080498C0: .4byte 0x06008000
	.syntax divided
