	.syntax unified
sub_08032F5C:
	push {r4, lr}
	ldr r0, _08032F7C
	ldr r1, _08032F80
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r4, #0
	bl sub_08001A14
	ldr r0, _08032F84
	ldr r1, _08032F88
	adds r2, r4, #0
	bl sub_08001A14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032F7C: .4byte 0x0803D59C
_08032F80: .4byte gUnknown_03004C14
_08032F84: .4byte 0x0803D5EC
_08032F88: .4byte gUnknown_03004D14
	.syntax divided
