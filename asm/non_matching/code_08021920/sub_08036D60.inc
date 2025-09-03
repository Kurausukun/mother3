	.syntax unified
sub_08036D60:
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08036D74
	bl sub_0800289C
	pop {r1}
	bx r1
	.align 2, 0
_08036D74: .4byte gUnknown_094383E4
	.syntax divided
