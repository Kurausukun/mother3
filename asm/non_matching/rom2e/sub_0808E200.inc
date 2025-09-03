	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0808E23C
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0xfc
	movs r1, #2
	bl _._10KeyFocuser
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r1, _0808E240
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #2
	bl sub_0806D6E0
	adds r0, r5, #0
	adds r1, r4, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808E23C: .4byte vt_09F85D20
_0808E240: .4byte vt_09F7E458
	.syntax divided
