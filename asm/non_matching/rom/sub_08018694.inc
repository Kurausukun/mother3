	.syntax unified
sub_08018694:
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r1, r0, #0x10
	adds r5, r1, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, r2, r3
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #0
	bne _080186BA
	adds r0, r1, #0
	b _08018700
_080186BA:
	cmp r4, #0
	bne _080186DE
	cmp r2, #0
	bge _080186CE
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	asrs r1, r1, #0x12
	adds r0, r0, r1
	adds r0, r3, r0
	b _080186FC
_080186CE:
	cmp r2, #0
	ble _08018700
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	asrs r1, r1, #0x12
	subs r0, r0, r1
	adds r0, r3, r0
	b _080186FC
_080186DE:
	cmp r2, #0
	bge _080186EE
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	asrs r1, r1, #0x12
	subs r0, r0, r1
	adds r0, r3, r0
	b _080186FC
_080186EE:
	cmp r2, #0
	ble _08018700
	adds r1, r3, #0
	subs r1, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
_080186FC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08018700:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
