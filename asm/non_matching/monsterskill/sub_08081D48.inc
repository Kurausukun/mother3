	.syntax unified
sub_08081D48:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08081D6C
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x9c
	movs r1, #2
	bl _._11Unk0806D478
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D9A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08081D6C: .4byte vt_09F83418
	.syntax divided
