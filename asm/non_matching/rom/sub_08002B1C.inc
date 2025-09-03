	.syntax unified
sub_08002B1C:
	push {r4, r5, lr}
	adds r4, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08002BA4
	adds r5, r0, #0
	bl sub_08002BF4
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r4]
	cmp r0, r1
	blo _08002B3E
	bl sub_08002FD4
	strh r0, [r4]
_08002B3E:
	adds r3, r5, #6
	ldrb r1, [r3, #1]
	ldrh r2, [r4]
	cmp r1, r2
	bhs _08002B56
_08002B48:
	adds r3, #2
	ldrb r0, [r3, #1]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r2
	blo _08002B48
_08002B56:
	ldrb r0, [r3]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
