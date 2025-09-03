	.syntax unified
sub_080270A0:
	lsls r0, r0, #0x10
	ldr r3, _080270B4
	lsrs r0, r0, #0xc
	adds r0, r0, r3
	ldrh r3, [r0, #2]
	strh r3, [r1]
	ldrh r0, [r0, #4]
	strh r0, [r2]
	bx lr
	.align 2, 0
_080270B4: .4byte gDirectionTable
	.syntax divided
