	.syntax unified
sub_08002FA4:
	lsls r0, r0, #0x10
	ldr r2, _08002FBC
	movs r1, #0xff
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r1, r1, #0xf
	adds r1, #0x80
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	bx lr
	.align 2, 0
_08002FBC: .4byte gSineTable
	.syntax divided
