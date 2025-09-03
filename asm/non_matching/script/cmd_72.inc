	.syntax unified
cmd_72:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r1, #0
	cmp r5, #1
	bhi _08020228
	movs r0, #7
	cmp r6, #0
	bne _08020222
	movs r0, #6
_08020222:
	bl sub_080274AC
	b _08020236
_08020228:
	movs r0, #7
	cmp r6, #0
	bne _08020230
	movs r0, #6
_08020230:
	adds r1, r5, #0
	bl sub_080272F4
_08020236:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
