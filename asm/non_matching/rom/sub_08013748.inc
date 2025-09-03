	.syntax unified
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r3]
	lsrs r0, r0, #0xe
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r1
	bhs _08013770
_0801375C:
	adds r3, #4
	ldr r0, [r3]
	lsrs r0, r0, #0xe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r1
	blo _0801375C
_08013770:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
