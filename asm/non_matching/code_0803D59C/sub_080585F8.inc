	.syntax unified
	push {lr}
	bl sub_08058614
	ldr r0, _08058610
	bl sub_0800164C
	bl sub_08058630
	bl nullsub_11
	pop {r0}
	bx r0
	.align 2, 0
_08058610: .4byte gUnknown_02018CC8
	.syntax divided
