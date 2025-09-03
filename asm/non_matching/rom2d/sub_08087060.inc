	.syntax unified
sub_08087060:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0808708C
	str r0, [r4, #0x20]
	ldr r0, _08087090
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x2c
	movs r1, #2
	bl sub_0806D9A4
	ldr r0, _08087094
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808708C: .4byte vt_09F84D00
_08087090: .4byte vt_09F84D58
_08087094: .4byte vt_09F84CA8
	.syntax divided
