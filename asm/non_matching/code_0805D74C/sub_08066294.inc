	.syntax unified
sub_08066294:
	push {r4, lr}
	adds r4, r0, #0
	bl __4Base
	ldr r0, _080662AC
	str r0, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080662AC: .4byte vt_09F7E328
	.syntax divided
