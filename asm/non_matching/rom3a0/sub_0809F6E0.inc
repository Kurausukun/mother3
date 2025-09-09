	.syntax unified
sub_0809F6E0:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809F708
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #2
	bl _._5Sound
	ldr r0, _0809F70C
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08080424
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F708: .4byte vt_09F4B3B0
_0809F70C: .4byte vt_09F4B6A8
	.syntax divided
