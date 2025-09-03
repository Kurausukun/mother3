	.syntax unified
sub_0808EAB0:
	push {lr}
	adds r2, r0, #0
	adds r0, #0x44
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808EAC6
	adds r0, r2, #0
	bl sub_0808EACC
_0808EAC6:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
