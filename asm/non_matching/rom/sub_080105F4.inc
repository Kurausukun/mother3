	.syntax unified
	push {r4, r5, lr}
	ldr r2, _08010620
	movs r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
_08010600:
	ldrb r0, [r2, #0xa]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #0xa]
	str r4, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0xc
	cmp r3, #0x13
	bls _08010600
	bl sub_08010624
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010620: .4byte gUnknown_0200B590
	.syntax divided
