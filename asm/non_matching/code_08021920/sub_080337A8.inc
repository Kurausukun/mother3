	.syntax unified
sub_080337A8:
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl get_obj_direct
	adds r5, r0, #0
	adds r5, #0xbd
	movs r6, #3
	ands r4, r6
	lsls r4, r4, #3
	ldrb r1, [r5]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r6
	lsls r0, r0, #5
	ldrb r2, [r5]
	movs r1, #0x61
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
