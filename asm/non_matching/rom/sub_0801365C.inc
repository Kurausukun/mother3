	.syntax unified
sub_0801365C:
	push {r4, lr}
	adds r0, r2, #0
	ldr r4, [sp, #8]
	lsls r3, r3, #0x10
	lsls r4, r4, #0x10
	ldr r2, [r1]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x15
	adds r0, r0, r1
	lsrs r3, r3, #5
	lsrs r4, r4, #0xb
	adds r3, r3, r4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r3, r3, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x1a
	lsls r2, r2, #5
	adds r1, r3, #0
	bl sub_08001B18
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
