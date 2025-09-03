	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r7, #0
	movs r1, #0
	bl sub_08022E50
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08021DEC
	cmp r5, r0
	bne _08021E5E
	movs r5, #8
	cmp r4, #8
	bne _08021DF4
	ldr r4, _08021DF0
	b _08021E44
	.align 2, 0
_08021DEC: .4byte 0x0000FF26
_08021DF0: .4byte gUnknown_02004EE2
_08021DF4:
	subs r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08021E08
	ldr r4, _08021E04
	b _08021E44
	.align 2, 0
_08021E04: .4byte gUnknown_02004EF2
_08021E08:
	adds r0, r4, #0
	bl sub_08001D70
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08021E30
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _08021E2C
	adds r4, r1, r0
	b _08021E44
	.align 2, 0
_08021E2C: .4byte gUnknown_02004112
_08021E30:
	movs r0, #5
	adds r1, r4, #0
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #5
	bl get_misctext_len
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08021E44:
	adds r0, r7, #0
	movs r1, #1
	bl sub_08022E50
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08022194
	b _08021F3A
_08021E5E:
	ldr r1, _08021E70
	adds r0, r5, r1
	cmp r0, #5
	bhi _08021F2C
	lsls r0, r0, #2
	ldr r1, _08021E74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021E70: .4byte 0xFFFF00E0
_08021E74: .4byte _08021E78
_08021E78:
	.4byte _08021F2C
	.4byte _08021E90
	.4byte _08021E9E
	.4byte _08021EF6
	.4byte _08021F08
	.4byte _08021F16
_08021E90:
	movs r0, #2
	adds r1, r4, #0
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #2
	b _08021F22
_08021E9E:
	movs r5, #8
	cmp r4, #8
	bne _08021EAC
	ldr r4, _08021EA8
	b _08021F30
	.align 2, 0
_08021EA8: .4byte gUnknown_02004EE2
_08021EAC:
	subs r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08021EC0
	ldr r4, _08021EBC
	b _08021F30
	.align 2, 0
_08021EBC: .4byte gUnknown_02004EF2
_08021EC0:
	adds r0, r4, #0
	bl sub_08001D70
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08021EE8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _08021EE4
	adds r4, r1, r0
	b _08021F30
	.align 2, 0
_08021EE4: .4byte gUnknown_02004112
_08021EE8:
	movs r0, #5
	adds r1, r4, #0
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #5
	b _08021F22
_08021EF6:
	movs r0, #0x6c
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _08021F04
	adds r4, r1, r0
	movs r0, #6
	b _08021F22
	.align 2, 0
_08021F04: .4byte gUnknown_02004112
_08021F08:
	movs r0, #7
	adds r1, r4, #0
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #7
	b _08021F22
_08021F16:
	movs r0, #8
	adds r1, r4, #0
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #8
_08021F22:
	bl get_misctext_len
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08021F30
_08021F2C:
	adds r0, r6, #0
	b _08021F3A
_08021F30:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080222C0
_08021F3A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.syntax divided
