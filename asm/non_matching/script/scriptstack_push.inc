	.syntax unified
	push {r4, lr}
	ldr r2, _08021908
	ldr r1, _0802190C
	adds r3, r2, r1
	ldrh r1, [r3]
	lsls r1, r1, #2
	ldr r4, _08021910
	adds r2, r2, r4
	adds r1, r1, r2
	str r0, [r1]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08021908: .4byte gGame
_0802190C: .4byte 0x00009474
_08021910: .4byte 0x000084C4
	.syntax divided
