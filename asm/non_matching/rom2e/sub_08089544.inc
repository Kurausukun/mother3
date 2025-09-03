	.syntax unified
sub_08089544:
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x28]
	cmp r0, r1
	bne _08089566
	ldr r0, [r1, #0x24]
	str r0, [r2, #0x28]
	movs r0, #0
	str r0, [r1, #0x20]
	adds r0, r1, #0
	b _0808957A
_0808955A:
	ldr r0, [r2, #0x24]
	str r0, [r3, #0x24]
	movs r0, #0
	str r0, [r2, #0x20]
	adds r0, r2, #0
	b _0808957A
_08089566:
	adds r3, r0, #0
	b _08089572
_0808956A:
	ldr r2, [r3, #0x24]
	cmp r2, r1
	beq _0808955A
	adds r3, r2, #0
_08089572:
	ldr r0, [r3, #0x24]
	cmp r0, #0
	bne _0808956A
	movs r0, #0
_0808957A:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
