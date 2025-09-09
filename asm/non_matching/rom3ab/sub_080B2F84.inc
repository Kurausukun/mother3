	.syntax unified
sub_080B2F84:
	ldr r0, _080B2F90
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bx lr
	.align 2, 0
_080B2F90: .4byte gUnknown_080F951C
	.syntax divided
