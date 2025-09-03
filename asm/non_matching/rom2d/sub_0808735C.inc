	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08087370
	str r5, [r1]
_08087370:
	movs r1, #0x87
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080873C0
	ldr r1, [r4, #0x24]
	movs r0, #0
	bl randS32
	adds r3, r0, #0
	ldr r1, [r4, #0x24]
	adds r2, r1, #1
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bgt _080873DC
	cmp r3, r1
	bgt _080873DC
	str r2, [r4, #0x24]
	adds r2, r1, #0
	adds r4, #0x28
	lsls r6, r3, #2
	cmp r2, r3
	ble _080873B8
	lsls r0, r2, #2
	subs r0, #4
	adds r1, r0, r4
_080873AC:
	ldr r0, [r1]
	str r0, [r1, #4]
	subs r1, #4
	subs r2, #1
	cmp r2, r3
	bgt _080873AC
_080873B8:
	adds r0, r4, r6
	str r5, [r0]
	movs r0, #1
	b _080873DE
_080873C0:
	ldr r1, [r4, #0x24]
	adds r2, r1, #1
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bgt _080873DC
	lsls r1, r1, #2
	adds r0, r4, #0
	adds r0, #0x28
	adds r0, r0, r1
	str r5, [r0]
	str r2, [r4, #0x24]
	movs r0, #1
	b _080873DE
_080873DC:
	movs r0, #0
_080873DE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
