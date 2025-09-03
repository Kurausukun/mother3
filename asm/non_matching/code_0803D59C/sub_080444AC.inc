	.syntax unified
sub_080444AC:
	push {r4, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0x86
	bl sub_08046974
	cmp r4, #0xe1
	beq _080444D4
	cmp r4, #0xe1
	bgt _080444D0
	cmp r4, #0xcc
	bgt _08044514
	cmp r4, #0xcb
	blt _08044514
	b _080444D4
_080444D0:
	cmp r4, #0xe8
	bne _08044514
_080444D4:
	ldr r0, _080444F8
	ldr r1, _080444FC
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x5a
	bl sub_08002FD4
	cmp r0, #0x3b
	bgt _08044504
	ldr r0, _08044500
	movs r1, #1
	str r1, [sp]
	movs r1, #0xd6
	movs r2, #0x91
	movs r3, #0x20
	bl sub_08046A28
	b _08044514
	.align 2, 0
_080444F8: .4byte gUnknown_0200F920
_080444FC: .4byte 0x00006474
_08044500: .4byte gUnknown_080C6468
_08044504:
	ldr r0, _08044550
	movs r1, #1
	str r1, [sp]
	movs r1, #0xd6
	movs r2, #0x91
	movs r3, #0x20
	bl sub_08046A28
_08044514:
	adds r0, r4, #0
	bl sub_08001BCC
	movs r1, #2
	str r1, [sp]
	movs r1, #0
	movs r2, #0x26
	movs r3, #0x87
	bl sub_08047E48
	ldr r4, _08044554
	ldr r0, _08044558
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	bl sub_080469CC
	ldr r1, _0804455C
	adds r4, r4, r1
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08044550: .4byte gUnknown_080C647C
_08044554: .4byte gSomeBlend
_08044558: .4byte 0x000044F3
_0804455C: .4byte 0x000041E6
	.syntax divided
