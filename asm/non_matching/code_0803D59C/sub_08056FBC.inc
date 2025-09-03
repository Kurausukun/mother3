	.syntax unified
sub_08056FBC:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08056FD4
	ldrb r1, [r0]
	cmp r1, #1
	beq _08056FE6
	cmp r1, #1
	bgt _08056FD8
	cmp r1, #0
	beq _08056FDE
	b _08057004
	.align 2, 0
_08056FD4: .4byte gUnknown_020047D0
_08056FD8:
	cmp r1, #2
	beq _08056FEE
	b _08057004
_08056FDE:
	adds r0, r4, #0
	adds r0, #0x2c
	strb r1, [r0]
	b _08057004
_08056FE6:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0xf
	b _08057002
_08056FEE:
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _08057038
	ldr r0, _0805703C
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
_08057002:
	strb r0, [r1]
_08057004:
	movs r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r1, [r2]
	subs r0, #2
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _08057040
	movs r1, #0x36
	bl sub_0800289C
	str r0, [r4, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057038: .4byte gSomeBlend
_0805703C: .4byte 0x00002CB1
_08057040: .4byte gUnknown_09BCDD8C
	.syntax divided
