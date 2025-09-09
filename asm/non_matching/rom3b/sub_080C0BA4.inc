	.syntax unified
sub_080C0BA4:
	push {lr}
	ldr r2, _080C0BB4
	str r2, [r0, #0x1c]
	bl sub_08071CB0
	pop {r0}
	bx r0
	.align 2, 0
_080C0BB4: .4byte vt_09F7E660
	.syntax divided
