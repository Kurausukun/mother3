	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #2
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #2
	bl get_misctext_len
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl genMisctextMsg__3MsgPvUi
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
