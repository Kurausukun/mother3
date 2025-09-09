	.syntax unified
sub_080C0B90:
	push {lr}
	ldr r2, _080C0BA0
	str r2, [r0, #0x1c]
	bl sub_0807113C
	pop {r0}
	bx r0
	.align 2, 0
_080C0BA0: .4byte vt_09F7E458
	.syntax divided
