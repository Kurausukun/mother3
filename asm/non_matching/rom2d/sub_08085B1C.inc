	.syntax unified
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2a]
	adds r0, #1
	strh r0, [r1, #0x2a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x15
	bls _08085B34
	adds r0, r1, #0
	bl sub_08085AF4
_08085B34:
	pop {r0}
	bx r0
	.syntax divided
