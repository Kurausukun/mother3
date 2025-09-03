	.syntax unified
sub_0805D834:
	push {r4, r5, lr}
	ldr r1, _0805D868
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0805D85E
	ldr r5, _0805D86C
	movs r0, #0x80
	bl __builtin_new
	adds r4, r0, #0
	bl __4Base
	ldr r0, _0805D870
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x60
	bl sub_08071F8C
	str r4, [r5]
_0805D85E:
	ldr r0, _0805D86C
	ldr r0, [r0]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805D868: .4byte gUnknown_02002010
_0805D86C: .4byte sBattleInstance
_0805D870: .4byte vt_09F45058
	.syntax divided
