	.syntax unified
init__13BattleFactory:
	push {r4, lr}
	movs r4, #0
_0805EF94:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0805EFD4
	bl put__13BattleFactoryUsPFUs_Pv
	adds r4, #1
	cmp r4, #0x40
	bls _0805EF94
	ldr r1, _0805EFD8
	movs r0, #0x32
	bl put__13BattleFactoryUsPFUs_Pv
	ldr r1, _0805EFDC
	movs r0, #0x25
	bl put__13BattleFactoryUsPFUs_Pv
	ldr r1, _0805EFE0
	movs r0, #0x38
	bl put__13BattleFactoryUsPFUs_Pv
	ldr r1, _0805EFE4
	movs r0, #0x39
	bl put__13BattleFactoryUsPFUs_Pv
	ldr r1, _0805EFE8
	movs r0, #0x3a
	bl put__13BattleFactoryUsPFUs_Pv
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EFD4: .4byte create__20DefaultBattleFactoryUs
_0805EFD8: .4byte create__23MasterEddyBattleFactoryUs
_0805EFDC: .4byte create__21PorkyBotBattleFactoryUs
_0805EFE0: .4byte create__18PorkyBattleFactoryUs
_0805EFE4: .4byte create__23MaskedManBattleAFactoryUs
_0805EFE8: .4byte create__23MaskedManBattleBFactoryUs
	.syntax divided
