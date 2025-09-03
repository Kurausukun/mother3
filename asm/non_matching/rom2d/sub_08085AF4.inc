	.syntax unified
sub_08085AF4:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x28]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08085B14
	adds r0, r4, #0
	bl sub_08085B38
	str r5, [r4, #0x2c]
	movs r0, #2
	strh r0, [r4, #0x28]
_08085B14:
	strh r5, [r4, #0x2a]
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
