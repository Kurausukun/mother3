	.syntax unified
sub_08011A40:
	push {r4, r5, lr}
	ldr r5, [r2]
	lsls r4, r5, #0x1a
	lsrs r4, r4, #0x1a
	ldr r3, [r1]
	movs r1, #0xf0
	lsls r1, r1, #2
	ands r1, r3
	adds r4, r4, r1
	lsls r1, r3, #0x11
	lsrs r1, r1, #0x1f
	lsls r2, r5, #0x19
	lsrs r2, r2, #0x1f
	eors r1, r2
	lsls r1, r1, #0xa
	orrs r4, r1
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x1f
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x1f
	eors r1, r5
	lsls r1, r1, #0xb
	orrs r4, r1
	lsls r3, r3, #0x12
	lsrs r3, r3, #0x1c
	lsls r3, r3, #0xc
	orrs r4, r3
	strh r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
