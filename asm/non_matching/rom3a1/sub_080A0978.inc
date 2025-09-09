	.syntax unified
sub_080A0978:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #1
	cmp r0, #0x19
	blt _080A0998
	movs r1, #2
	cmp r0, #0x32
	blt _080A0998
	movs r1, #4
	cmp r0, #0x4b
	bge _080A0998
	movs r1, #3
_080A0998:
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
