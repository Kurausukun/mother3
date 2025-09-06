	.syntax unified
sub_0808E900:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0808E92C
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x5c
	movs r1, #2
	bl _._11Unk0806D478
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #2
	bl _._11Unk0806D548
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808E92C: .4byte vt_09F85EC8
	.syntax divided
