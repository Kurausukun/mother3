	.syntax unified
cmd_set_palettes:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #2
	bl scriptstack_peek
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0xb
	cmp r4, #0
	bne _080202D0
	movs r0, #0xa
_080202D0:
	adds r1, r6, #0
	bl sub_080272F4
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
