	.syntax unified
sub_08002BF4:
	push {r4, lr}
	adds r1, r0, #6
	movs r3, #0
	movs r2, #0
	ldrb r0, [r0, #4]
	cmp r3, r0
	bhs _08002C18
	adds r4, r0, #0
_08002C04:
	ldrb r0, [r1, #1]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #2
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	blo _08002C04
_08002C18:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
