	.syntax unified
_._6Duster:
	push {lr}
	ldr r2, _0809CACC
	str r2, [r0, #0x20]
	ldr r2, _0809CAD0
	str r2, [r0, #0x1c]
	bl dt__6Player
	pop {r0}
	bx r0
	.align 2, 0
_0809CACC: .4byte _vt.13DefaultPlayer.10UnitObject
_0809CAD0: .4byte _vt.13DefaultPlayer
	.syntax divided
