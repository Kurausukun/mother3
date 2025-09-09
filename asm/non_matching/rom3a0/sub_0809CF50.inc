	.syntax unified
sub_0809CF50:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809CF7C
	str r0, [r4, #0x20]
	ldr r0, _0809CF80
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809CE68
	ldr r0, _0809CF84
	str r0, [r4, #0x20]
	ldr r0, _0809CF88
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807ACF0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809CF7C: .4byte vt_09F48200
_0809CF80: .4byte vt_09F48278
_0809CF84: .4byte vt_09F48BF8
_0809CF88: .4byte vt_09F48C70
	.syntax divided
