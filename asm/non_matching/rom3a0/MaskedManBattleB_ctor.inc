	.syntax unified
MaskedManBattleB_ctor:
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0809794C
	bl __builtin_new
	adds r1, r4, #0
	bl sub_08097A28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809794C: .4byte 0x00000F98
	.syntax divided
