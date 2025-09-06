	.syntax unified
sub_080666F4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _08066730
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	adds r0, #0xec
	ldr r4, _08066734
	str r4, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	adds r0, r6, #0
	adds r0, #0x90
	str r4, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	adds r0, r6, #0
	adds r0, #0x24
	movs r1, #2
	bl _._11Unk0806D64C
	adds r0, r6, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066730: .4byte vt_09F7E3E8
_08066734: .4byte vt_09F7E458
	.syntax divided
