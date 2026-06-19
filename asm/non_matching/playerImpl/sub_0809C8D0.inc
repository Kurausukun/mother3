	.syntax unified
_._5Boney:
	push {lr}
	ldr r2, _0809C8E4
	str r2, [r0, #0x20]
	ldr r2, _0809C8E8
	str r2, [r0, #0x1c]
	bl dt__6Player
	pop {r0}
	bx r0
	.align 2, 0
_0809C8E4: .4byte _vt.13DefaultPlayer.10UnitObject
_0809C8E8: .4byte _vt.13DefaultPlayer
	.syntax divided
