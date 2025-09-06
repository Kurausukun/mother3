	.syntax unified
sub_08089F64:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08089F8C
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #2
	bl _._11Unk0806D64C
	ldr r0, _08089F90
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080895C0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08089F8C: .4byte vt_09F852E0
_08089F90: .4byte vt_09F85378
	.syntax divided
