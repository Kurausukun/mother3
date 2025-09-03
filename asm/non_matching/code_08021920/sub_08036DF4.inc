	.syntax unified
sub_08036DF4:
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08036E08
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_08036E08: .4byte gUnknown_09A442A4
	.syntax divided
