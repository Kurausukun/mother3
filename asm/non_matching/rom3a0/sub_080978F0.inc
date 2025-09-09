	.syntax unified
sub_080978F0:
	push {lr}
	ldr r2, _08097900
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_08097900: .4byte _vt.3Unk
	.syntax divided
