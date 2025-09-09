	.syntax unified
PorkyBattle_ctor:
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0809798C
	bl __builtin_new
	adds r1, r4, #0
	bl sub_08097B5C
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809798C: .4byte 0x00000F98
	.syntax divided
