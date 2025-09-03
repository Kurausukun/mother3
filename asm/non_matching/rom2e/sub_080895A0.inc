	.syntax unified
sub_080895A0:
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080895BC
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080895BC: .4byte vt_09F85140
	.syntax divided
