	.syntax unified
_._5Lucas:
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
	bl dt__6Player
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809CF7C: .4byte _vt.5Lucas.10UnitObject
_0809CF80: .4byte _vt.5Lucas
_0809CF84: .4byte _vt.13DefaultPlayer.10UnitObject
_0809CF88: .4byte _vt.13DefaultPlayer
	.syntax divided
