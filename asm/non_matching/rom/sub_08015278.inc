	.syntax unified
sub_08015278:
	push {r4, lr}
	ldr r0, _080152AC
	movs r1, #0x80
	lsls r1, r1, #3
	bl memclear
	bl sub_08004FB4
	ldr r4, _080152B0
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
_080152AC: .4byte gUnknown_03005314
_080152B0: .4byte gUnknown_02000008
	.syntax divided
