	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x28
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808E2CC
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #1
	bl sub_0806D7DC
	adds r0, r4, #0
	adds r0, #0xa0
	movs r1, #1
	bl sub_0806E948
_0808E2CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
