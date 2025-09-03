	.syntax unified
cmd_7F:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r1, #3
	bl scriptstack_peek
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	adds r5, r0, #0
	cmp r4, #0
	bne _08020628
	adds r0, r6, #0
	bl sub_080222F8
	b _0802062E
_08020628:
	adds r0, r6, #0
	bl sub_08027F38
_0802062E:
	lsls r1, r7, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	bl sub_080250B4
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
