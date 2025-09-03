	.syntax unified
sub_08011A80:
	push {r4, r5, lr}
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r5, [r2]
	lsls r2, r5, #0x1a
	lsrs r2, r2, #0x1a
	adds r3, r3, r2
	ldr r4, [r1]
	lsls r1, r4, #0x11
	lsrs r1, r1, #0x1f
	lsls r2, r5, #0x19
	lsrs r2, r2, #0x1f
	eors r1, r2
	lsls r1, r1, #0xa
	orrs r3, r1
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x1f
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x1f
	eors r1, r5
	lsls r1, r1, #0xb
	orrs r3, r1
	lsls r4, r4, #0x12
	lsrs r4, r4, #0x1c
	lsls r4, r4, #0xc
	orrs r3, r4
	strh r3, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
