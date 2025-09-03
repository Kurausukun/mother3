	.syntax unified
	push {r4, r5, lr}
	ldr r0, _0803D0D4
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r1, _0803D0D8
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08001B18
	adds r4, r4, r5
	ldr r1, _0803D0DC
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08001B18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803D0D4: .4byte gUnknown_020050C0
_0803D0D8: .4byte gUnknown_03005314
_0803D0DC: .4byte gUnknown_0200F088
	.syntax divided
