	.syntax unified
sub_08048214:
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r1, #0
	movs r1, #0
	bl sub_0804863C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08048234
	cmp r5, r0
	bne _08048238
_0804822E:
	adds r0, r6, #0
	b _08048302
	.align 2, 0
_08048234: .4byte 0x0000FF26
_08048238:
	ldr r1, _0804824C
	adds r0, r5, r1
	cmp r0, #5
	bhi _0804822E
	lsls r0, r0, #2
	ldr r1, _08048250
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804824C: .4byte 0xFFFF00E0
_08048250: .4byte _08048254
_08048254:
	.4byte _0804822E
	.4byte _0804826C
	.4byte _0804827A
	.4byte _080482D2
	.4byte _0804822E
	.4byte _080482E4
_0804826C:
	movs r0, #2
	adds r1, r4, #0
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #2
	b _080482F0
_0804827A:
	movs r5, #8
	cmp r4, #8
	bne _08048288
	ldr r4, _08048284
	b _080482F8
	.align 2, 0
_08048284: .4byte gUnknown_02004EE2
_08048288:
	subs r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _0804829C
	ldr r4, _08048298
	b _080482F8
	.align 2, 0
_08048298: .4byte gUnknown_02004EF2
_0804829C:
	adds r0, r4, #0
	bl sub_08001D70
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080482C4
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _080482C0
	adds r4, r1, r0
	b _080482F8
	.align 2, 0
_080482C0: .4byte gUnknown_02004112
_080482C4:
	movs r0, #5
	adds r1, r4, #0
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #5
	b _080482F0
_080482D2:
	movs r0, #0x6c
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _080482E0
	adds r4, r1, r0
	movs r0, #6
	b _080482F0
	.align 2, 0
_080482E0: .4byte gUnknown_02004112
_080482E4:
	movs r0, #8
	adds r1, r4, #0
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #8
_080482F0:
	bl get_misctext_len
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080482F8:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080484FC
_08048302:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
