	.syntax unified
sub_080270E8:
	lsls r0, r0, #0x10
	ldr r1, _080270F4
	lsrs r0, r0, #0xc
	adds r0, r0, r1
	ldrh r0, [r0, #8]
	bx lr
	.align 2, 0
_080270F4: .4byte gDirectionTable
	.syntax divided
