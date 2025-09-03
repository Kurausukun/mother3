	.syntax unified
sub_0801A638:
	lsls r0, r0, #0x10
	ldr r1, _0801A64C
	lsrs r0, r0, #0xe
	adds r0, r0, r1
	ldrb r0, [r0, #0x1c]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r0, #1
	lsls r0, r0, #8
	bx lr
	.align 2, 0
_0801A64C: .4byte gGame
	.syntax divided
