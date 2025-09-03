	.syntax unified
sub_080476A0:
	push {lr}
	sub sp, #4
	ldr r0, _080476BC
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	str r1, [sp]
	movs r1, #1
	movs r2, #3
	bl sub_08047B9C
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080476BC: .4byte gUnknown_0201A3D4
	.syntax divided
