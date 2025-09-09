	.syntax unified
sub_080A71D8:
	push {r4, r5, r6, lr}
	movs r6, #0
	movs r5, #0
	b _080A7228
_080A71E0:
	adds r0, r5, #0
	bl GetPlayer
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x19
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A7224
	ldr r1, [r4, #0x1c]
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0x1a
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A7226
_080A7224:
	adds r6, #1
_080A7226:
	adds r5, #1
_080A7228:
	bl getPartyCount
	cmp r5, r0
	blt _080A71E0
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
