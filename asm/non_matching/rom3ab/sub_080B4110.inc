	.syntax unified
sub_080B4110:
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bgt _080B4120
	adds r0, r1, #0
	bl sub_0808213C
_080B4120:
	pop {r0}
	bx r0
	.syntax divided
