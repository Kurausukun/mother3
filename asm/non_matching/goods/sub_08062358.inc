	.syntax unified
put__10GuestSkillFactoryUsPFUsP4Unit_Pv:
	lsls r0, r0, #0x10
	ldr r2, _08062364
	lsrs r0, r0, #0xe
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08062364: .4byte sGuestSkillSpawners
	.syntax divided
