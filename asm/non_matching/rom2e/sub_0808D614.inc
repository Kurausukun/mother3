	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x28
	ldrb r1, [r4]
	subs r1, #1
	adds r2, r0, #0
	adds r2, #0x29
	ldrb r2, [r2]
	bl sub_0808DF14
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808D632
	movs r0, #0
	b _0808D63A
_0808D632:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
_0808D63A:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
