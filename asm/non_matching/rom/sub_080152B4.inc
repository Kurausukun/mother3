	.syntax unified
sub_080152B4:
	push {r4, lr}
	bl sub_08004FB4
	ldr r4, _080152DC
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_08016F68
	bl sub_08001960
	bl sub_08005C4C
	ldrb r0, [r4, #0x1d]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080152DC: .4byte gUnknown_02000008
	.syntax divided
