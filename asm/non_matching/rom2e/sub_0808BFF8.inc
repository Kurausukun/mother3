	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808C7CC
	b _0808C018
_0808C002:
	movs r0, #1
	bl setsleep
	movs r0, #1
	movs r1, #0
	bl sub_08073018__FbT0
	bl sub_08072B70__Fv
	bl sub_08072D0C__Fv
_0808C018:
	ldr r0, [r4, #0x58]
	cmp r0, #1
	beq _0808C002
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
