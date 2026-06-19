	.syntax unified
dt__16FassadPunishizer:
	push {lr}
	ldr r2, _080A0D44
	str r2, [r0, #0x1c]
	bl _._10GuestSkill
	pop {r0}
	bx r0
	.align 2, 0
_080A0D44: .4byte _vt.17DefaultGuestSkill
	.syntax divided
