	.syntax unified
sub_08097808:
	push {r4, lr}
	movs r0, #0x20
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _08097824
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08097824: .4byte _vt.16ShowDownAsEscape
	.syntax divided
