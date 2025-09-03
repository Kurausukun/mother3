	.syntax unified
sub_0808ADF0:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl sub_0806E820
	ldr r0, _0808AE1C
	str r0, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x54
	ldr r0, _0808AE20
	strh r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0806E90C
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808AE1C: .4byte vt_09F857A0
_0808AE20: .4byte 0x0000FFFF
	.syntax divided
