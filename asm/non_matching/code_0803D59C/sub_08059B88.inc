	.syntax unified
sub_08059B88:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsrs r1, r1, #0x11
	ldrh r4, [r0]
	subs r3, r4, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	lsrs r2, r2, #0x11
	ldrh r0, [r0, #2]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0
	cmp r5, r6
	bhs _08059BDA
	lsls r3, r3, #0x10
	mov r8, r3
	lsls r7, r1, #0x10
_08059BBA:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	asrs r0, r1, #0x10
	asrs r1, r7, #0x10
	adds r2, r4, #0
	bl sub_08059BE4
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	cmp r5, r6
	blo _08059BBA
_08059BDA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
