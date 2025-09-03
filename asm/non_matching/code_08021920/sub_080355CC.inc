	.syntax unified
sub_080355CC:
	push {lr}
	adds r2, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080355E4
	adds r0, r2, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	b _080355EE
_080355E4:
	adds r0, r2, #0
	adds r0, #0x8b
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
_080355EE:
	adds r0, #0x48
	adds r1, r0, #0
	adds r0, r2, #0
	bl sub_08036960
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.syntax divided
