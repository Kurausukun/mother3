	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4, #0x2c]
_0808E24C:
	movs r0, #1
	bl setsleep
	movs r0, #1
	movs r1, #0
	bl sub_08073018__FbT0
	bl sub_08072B70__Fv
	bl sub_08072D0C__Fv
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0808E24C
	cmp r0, #1
	beq _0808E270
	movs r0, #2
	b _0808E272
_0808E270:
	movs r0, #1
_0808E272:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
