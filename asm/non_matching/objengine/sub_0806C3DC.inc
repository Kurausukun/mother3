	.syntax unified
	push {lr}
	adds r3, r0, #0
	ldr r1, _0806C3FC
	adds r0, r3, r1
	ldr r0, [r0]
	ldr r2, _0806C400
	adds r1, r3, r2
	ldr r1, [r1]
	lsls r1, r1, #4
	adds r2, #4
	adds r3, r3, r2
	adds r2, r3, #0
	bl sub_0806A67C__11BattleFaderiPUsT2
	pop {r0}
	bx r0
	.align 2, 0
_0806C3FC: .4byte 0x00000B4C
_0806C400: .4byte 0x00000948
	.syntax divided
