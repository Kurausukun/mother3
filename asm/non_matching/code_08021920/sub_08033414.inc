	.syntax unified
sub_08033414:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0x8b
	ldrb r1, [r0]
	lsrs r0, r1, #3
	cmp r0, #0xc
	bhi _0803343C
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r1
	movs r1, #0
	bl sub_080332AC
	b _08033452
_0803343C:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrb r2, [r1]
	lsls r2, r2, #0x1b
	lsrs r2, r2, #0x1d
	movs r1, #0
	bl sub_080332AC
_08033452:
	adds r1, r4, #0
	adds r1, #0x8e
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
