	.syntax unified
sub_08097830:
	push {lr}
	ldr r2, _08097840
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_08097840: .4byte _vt.3Unk
	.syntax divided
