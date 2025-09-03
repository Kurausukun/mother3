	.syntax unified
sub_0805EF90:
	push {r4, lr}
	movs r4, #0
_0805EF94:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0805EFD4
	bl sub_0805EFEC
	adds r4, #1
	cmp r4, #0x40
	bls _0805EF94
	ldr r1, _0805EFD8
	movs r0, #0x32
	bl sub_0805EFEC
	ldr r1, _0805EFDC
	movs r0, #0x25
	bl sub_0805EFEC
	ldr r1, _0805EFE0
	movs r0, #0x38
	bl sub_0805EFEC
	ldr r1, _0805EFE4
	movs r0, #0x39
	bl sub_0805EFEC
	ldr r1, _0805EFE8
	movs r0, #0x3a
	bl sub_0805EFEC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EFD4: .4byte sub_08097A0C
_0805EFD8: .4byte MasterEddyBattle_ctor
_0805EFDC: .4byte PorkyBotBattle_ctor
_0805EFE0: .4byte PorkyBattle_ctor
_0805EFE4: .4byte MaskedManBattleA_ctor
_0805EFE8: .4byte MaskedManBattleB_ctor
	.syntax divided
