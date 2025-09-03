	.syntax unified
sub_080139FC:
	push {r4, r5, lr}
	movs r3, #0
	movs r5, #2
	rsbs r5, r5, #0
	movs r4, #0
	ldr r0, _08013A30
	adds r2, r0, #0
	adds r2, #0x20
_08013A0C:
	ldrb r0, [r2, #4]
	adds r1, r5, #0
	ands r1, r0
	strb r1, [r2, #4]
	str r4, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x28
	cmp r3, #0xb
	bls _08013A0C
	movs r0, #0
	bl sub_08013A40
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013A30: .4byte gUnknown_0200C1BC
	.syntax divided
