	.syntax unified
sub_08086608:
	push {lr}
	ldr r2, _08086618
	str r2, [r0, #0x1c]
	bl sub_08089714
	pop {r0}
	bx r0
	.align 2, 0
_08086618: .4byte vt_09F84838
	.syntax divided
