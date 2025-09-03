	.syntax unified
sub_0801A6C4:
	lsls r0, r0, #0x10
	ldr r1, _0801A6D4
	lsrs r0, r0, #0xf
	adds r1, #0x14
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_0801A6D4: .4byte gGame
	.syntax divided
