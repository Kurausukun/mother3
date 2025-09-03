	.syntax unified
sub_080270D8:
	lsls r0, r0, #0x10
	ldr r1, _080270E4
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080270E4: .4byte gUnknown_08D2DF08
	.syntax divided
