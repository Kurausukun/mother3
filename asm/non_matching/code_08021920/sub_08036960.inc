	.syntax unified
sub_08036960:
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_08035C64
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r5, #0x88
	ldrh r0, [r5]
	bl sub_08036E0C
	bl sub_08002C54
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_08002BCC
	bl sub_08002C20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
