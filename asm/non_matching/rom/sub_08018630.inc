	.syntax unified
sub_08018630:
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, r2, r3
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	bne _08018654
	adds r0, r4, #0
	b _0801868A
_08018654:
	cmp r5, #0
	bne _08018672
	cmp r2, #0
	bge _08018666
	adds r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	b _08018686
_08018666:
	cmp r2, #0
	ble _0801868A
	lsls r0, r4, #0x10
	asrs r0, r0, #0xf
	subs r0, r1, r0
	b _08018686
_08018672:
	cmp r2, #0
	bge _0801867C
	lsls r0, r4, #0x10
	asrs r0, r0, #0x11
	b _08018684
_0801867C:
	cmp r2, #0
	ble _0801868A
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
_08018684:
	adds r0, r1, r0
_08018686:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0801868A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
