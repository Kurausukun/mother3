	.syntax unified
sub_080A09DC:
	push {r4, lr}
	adds r4, r0, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A09FC
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	b _080A09FE
_080A09FC:
	movs r0, #0
_080A09FE:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
