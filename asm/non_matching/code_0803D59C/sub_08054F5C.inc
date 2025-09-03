	.syntax unified
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	cmp r0, #8
	bne _08054F70
	ldr r0, _08054F6C
	b _08054FAE
	.align 2, 0
_08054F6C: .4byte gUnknown_02004EE2
_08054F70:
	subs r0, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _08054F84
	ldr r0, _08054F80
	b _08054FAE
	.align 2, 0
_08054F80: .4byte gUnknown_02004EF2
_08054F84:
	adds r0, r4, #0
	bl sub_08001D70
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08054FA2
	movs r0, #5
	adds r1, r4, #0
	bl get_misctext_msg
	b _08054FAE
_08054FA2:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	ldr r1, _08054FB4
	adds r0, r0, r1
_08054FAE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08054FB4: .4byte gUnknown_02004112
	.syntax divided
