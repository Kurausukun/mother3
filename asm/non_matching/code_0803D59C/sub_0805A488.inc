	.syntax unified
sub_0805A488:
	push {r4, r5, lr}
	ldr r1, _0805A4B4
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	ldr r4, _0805A4B8
	adds r5, r4, #0
	adds r5, #0x50
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805A4BC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0805A508
	bl snd_main
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A4B4: .4byte gUnknown_02015DE0
_0805A4B8: .4byte gSomeBlend
	.syntax divided
