	.syntax unified
sub_080A0758:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl onAction__4UnitP6Action
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080A076E
	movs r0, #0
	b _080A077C
_080A076E:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
_080A077C:
	cmp r0, #0
	bne _080A0784
	movs r0, #0
	b _080A07B8
_080A0784:
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08074160
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A079A
	movs r0, #0x84
	lsls r0, r0, #1
	b _080A07AE
_080A079A:
	adds r0, r4, #0
	movs r1, #0x11
	bl sub_08074160
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080A07B6
	movs r0, #0x86
	lsls r0, r0, #1
_080A07AE:
	adds r1, r5, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080A07B6:
	movs r0, #1
_080A07B8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
