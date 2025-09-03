	.syntax unified
	push {r4, lr}
	ldr r2, _08025184
	movs r3, #0
	movs r4, #1
_08025170:
	adds r0, r2, #0
	adds r0, #0x22
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08025188
	adds r0, r2, #0
	b _08025196
	.align 2, 0
_08025184: .4byte gUnknown_0201B574
_08025188:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x24
	cmp r3, #7
	bls _08025170
	movs r0, #0
_08025196:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
