	.syntax unified
init__18PlayerSkillFactory:
	push {r4, lr}
	movs r4, #0
_08061978:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08061A00
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	adds r4, #1
	cmp r4, #0x3f
	bls _08061978
	ldr r1, _08061A04
	movs r0, #1
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08061A08
	movs r0, #0x25
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08061A0C
	movs r0, #0x26
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08061A10
	movs r0, #0x27
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08061A14
	movs r0, #0x28
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08061A18
	movs r0, #0x29
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08061A1C
	movs r0, #0x2a
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08061A20
	movs r0, #0x2e
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08061A24
	movs r0, #0x2f
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08061A28
	movs r0, #0x30
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08061A2C
	movs r0, #3
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08061A30
	movs r0, #0x19
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08061A34
	movs r0, #6
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08061A38
	movs r0, #0x2c
	bl put__18PlayerSkillFactoryUsPFUsP4Unit_Pv
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061A00: .4byte create__25DefaultPlayerSkillFactoryUsP4Unit
_08061A04: .4byte create__11BashFactoryUsP4Unit
_08061A08: .4byte create__17WallStapleFactoryUsP4Unit
_08061A0C: .4byte create__18SirenBeetleFactoryUsP4Unit
_08061A10: .4byte create__20HypnoPendulumFactoryUsP4Unit
_08061A14: .4byte create__16SmokeBombFactoryUsP4Unit
_08061A18: .4byte create__16ScaryMaskFactoryUsP4Unit
_08061A1C: .4byte create__18TickleStickFactoryUsP4Unit
_08061A20: .4byte create__16ApologizeFactoryUsP4Unit
_08061A24: .4byte create__16MakeLaughFactoryUsP4Unit
_08061A28: .4byte create__12DanceFactoryUsP4Unit
_08061A2C: .4byte create__10RunFactoryUsP4Unit
_08061A30: .4byte create__26CantAttackMaskedManFactoryUsP4Unit
_08061A34: .4byte create__16QuickFlipFactoryUsP4Unit
_08061A38: .4byte create__12SniffFactoryUsP4Unit
	.syntax divided
