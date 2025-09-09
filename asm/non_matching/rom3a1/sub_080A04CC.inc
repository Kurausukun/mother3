	.syntax unified
sub_080A04CC:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A04E2
	movs r0, #0
	b _080A04F0
_080A04E2:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
_080A04F0:
	cmp r0, #0
	bne _080A04F8
	movs r0, #0
	b _080A0516
_080A04F8:
	adds r0, r5, #0
	movs r1, #0x15
	bl sub_08074160
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A0514
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A0514:
	movs r0, #1
_080A0516:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
