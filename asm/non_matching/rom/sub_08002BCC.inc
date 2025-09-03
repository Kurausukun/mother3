	.syntax unified
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r0, #2
	movs r3, #0
	cmp r3, r1
	bhs _08002BEC
_08002BDA:
	ldrh r0, [r2]
	lsls r0, r0, #1
	adds r0, #2
	adds r2, r2, r0
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r1
	blo _08002BDA
_08002BEC:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
