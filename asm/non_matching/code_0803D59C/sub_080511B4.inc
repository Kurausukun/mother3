	.syntax unified
sub_080511B4:
	push {lr}
	adds r2, r0, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080511D8
	ldrh r0, [r2, #0x28]
	adds r0, #1
	strh r0, [r2, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r2, #0x24]
	cmp r0, r1
	bls _080511E2
	movs r0, #0
	b _080511E0
_080511D8:
	ldrh r0, [r2, #0x24]
	cmp r0, #0
	beq _080511E8
	subs r0, #1
_080511E0:
	strh r0, [r2, #0x24]
_080511E2:
	ldrh r0, [r2, #0x24]
	cmp r0, #0
	bne _080511F4
_080511E8:
	adds r2, #0x2a
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_080511F4:
	pop {r0}
	bx r0
	.syntax divided
