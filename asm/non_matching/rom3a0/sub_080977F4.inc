	.syntax unified
sub_080977F4:
	push {lr}
	ldr r2, _08097804
	str r2, [r0, #0x1c]
	bl _._4Base
	pop {r0}
	bx r0
	.align 2, 0
_08097804: .4byte _vt.3Unk
	.syntax divided
