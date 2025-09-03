	.syntax unified
sub_080847E4:
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _080847FA
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	b _08084804
_080847FA:
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
_08084804:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
