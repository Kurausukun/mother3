	.syntax unified
	push {lr}
	adds r1, r0, #0
	adds r1, #0x4c
	movs r0, #0
	ldrsb r0, [r1, r0]
	subs r0, #1
	cmp r0, #0
	bge _0808C038
	movs r0, #0
	b _0808C040
_0808C038:
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	movs r0, #1
_0808C040:
	pop {r1}
	bx r1
	.syntax divided
