	.syntax unified
sub_08051908:
	push {lr}
	adds r1, r0, #0
	ldr r0, _08051918
	movs r2, #0x20
	bl sub_08001B18
	pop {r0}
	bx r0
	.align 2, 0
_08051918: .4byte gUnknown_02005190
	.syntax divided
