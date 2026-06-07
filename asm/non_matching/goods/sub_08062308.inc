	.syntax unified
init__17GuestSkillFactory:
	push {r4, lr}
	movs r4, #0
_0806230C:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08062344
	bl put__10GuestSkillFactoryUsPFUsP4Unit_Pv
	adds r4, #1
	cmp r4, #0x63
	bls _0806230C
	ldr r1, _08062348
	movs r0, #0x21
	bl put__10GuestSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _0806234C
	movs r0, #0x13
	bl put__10GuestSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08062350
	movs r0, #0xd
	bl put__10GuestSkillFactoryUsPFUsP4Unit_Pv
	ldr r1, _08062354
	movs r0, #0x24
	bl put__10GuestSkillFactoryUsPFUsP4Unit_Pv
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062344: .4byte create__24DefaultGuestSkillFactoryUsP4Unit
_08062348: .4byte create__23FassadPunishizerFactoryUsP4Unit
_0806234C: .4byte create__22AlecShakeWakeUpFactoryUsP4Unit
_08062350: .4byte create__17AlecAttackFactoryUsP4Unit
_08062354: .4byte create__19GuestSkill24FactoryUsP4Unit
	.syntax divided
