	.syntax unified
sub_0800160C:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r2, r2, #0xb
	movs r1, #0x9c
	lsls r1, r1, #6
	adds r2, r2, r1
	adds r4, r4, r2
	lsrs r3, r3, #0x12
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_08090F74
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
