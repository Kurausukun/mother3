	.syntax unified
	lsls r0, r0, #0x10
	ldr r1, _080270C4
	lsrs r0, r0, #0xc
	adds r0, r0, r1
	ldrh r0, [r0, #6]
	bx lr
	.align 2, 0
_080270C4: .4byte gDirectionTable
	.syntax divided
