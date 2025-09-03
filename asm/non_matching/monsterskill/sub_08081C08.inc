	.syntax unified
sub_08081C08:
	push {r4, lr}
	adds r4, r0, #0
	bl __4Unit
	ldr r0, _08081C40
	str r0, [r4, #0x20]
	ldr r0, _08081C44
	str r0, [r4, #0x1c]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r4, r1
	bl __3Msg
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl __15struct_08063998
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08081C40: .4byte _vt.7Monster.10UnitObject
_08081C44: .4byte _vt.7Monster
	.syntax divided
