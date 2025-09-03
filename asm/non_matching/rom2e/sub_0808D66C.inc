	.syntax unified
	push {r4, lr}
	adds r1, r0, #0
	adds r1, #0x28
	ldrb r1, [r1]
	adds r4, r0, #0
	adds r4, #0x29
	ldrb r2, [r4]
	subs r2, #1
	bl sub_0808DF14
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808D68A
	movs r0, #0
	b _0808D692
_0808D68A:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
_0808D692:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
