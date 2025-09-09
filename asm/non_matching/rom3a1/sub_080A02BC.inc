	.syntax unified
sub_080A02BC:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	movs r0, #0x1a
	cmp r1, #0x21
	blt _080A02D8
	movs r0, #0x1c
	cmp r1, #0x42
	bge _080A02D8
	movs r0, #0x1b
_080A02D8:
	adds r1, r4, #0
	bl sub_08074124
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
