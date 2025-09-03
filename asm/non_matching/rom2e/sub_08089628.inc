	.syntax unified
sub_08089628:
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x28]
	cmp r0, r1
	bne _0808964A
	ldr r0, [r1, #0x24]
	str r0, [r2, #0x28]
	movs r0, #0
	str r0, [r1, #0x20]
	adds r0, r1, #0
	b _0808965E
_0808963E:
	ldr r0, [r2, #0x24]
	str r0, [r3, #0x24]
	movs r0, #0
	str r0, [r2, #0x20]
	adds r0, r2, #0
	b _0808965E
_0808964A:
	adds r3, r0, #0
	b _08089656
_0808964E:
	ldr r2, [r3, #0x24]
	cmp r2, r1
	beq _0808963E
	adds r3, r2, #0
_08089656:
	ldr r0, [r3, #0x24]
	cmp r0, #0
	bne _0808964E
	movs r0, #0
_0808965E:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
