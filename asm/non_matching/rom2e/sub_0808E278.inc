	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0808E29C
	adds r0, #0xc
	movs r1, #0
	bl sub_0806D7DC
	adds r0, r4, #0
	adds r0, #0xa0
	movs r1, #0
	bl sub_0806E948
_0808E29C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
