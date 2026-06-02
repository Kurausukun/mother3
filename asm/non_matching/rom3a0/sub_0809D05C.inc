	.syntax unified
_._5Flint:
	push {lr}
	ldr r2, _0809D070
	str r2, [r0, #0x20]
	ldr r2, _0809D074
	str r2, [r0, #0x1c]
	bl dt__6Player
	pop {r0}
	bx r0
	.align 2, 0
_0809D070: .4byte _vt.13DefaultPlayer.10UnitObject
_0809D074: .4byte _vt.13DefaultPlayer
	.syntax divided
