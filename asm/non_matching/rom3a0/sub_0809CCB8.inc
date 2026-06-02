	.syntax unified
_._8Kumatora:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0809CCE4
	str r0, [r4, #0x20]
	ldr r0, _0809CCE8
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_0809CBD0
	ldr r0, _0809CCEC
	str r0, [r4, #0x20]
	ldr r0, _0809CCF0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl dt__6Player
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809CCE4: .4byte _vt.8Kumatora.10UnitObject
_0809CCE8: .4byte _vt.8Kumatora
_0809CCEC: .4byte _vt.13DefaultPlayer.10UnitObject
_0809CCF0: .4byte _vt.13DefaultPlayer
	.syntax divided
