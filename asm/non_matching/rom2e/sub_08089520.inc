	.syntax unified
sub_08089520:
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x28]
	cmp r0, #0
	bne _0808952E
	str r1, [r3, #0x28]
	b _0808953C
_0808952E:
	adds r2, r0, #0
	b _08089534
_08089532:
	ldr r2, [r2, #0x24]
_08089534:
	ldr r0, [r2, #0x24]
	cmp r0, #0
	bne _08089532
	str r1, [r2, #0x24]
_0808953C:
	str r3, [r1, #0x20]
	adds r0, r1, #0
	pop {r1}
	bx r1
	.syntax divided
