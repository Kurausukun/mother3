	.syntax unified
sub_08088BA8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0806C458
	adds r7, r0, #0
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x11
	ldr r1, [r4, #8]
	adds r6, r1, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0806C680
	adds r4, r0, #0
	ldr r0, _08088C00
	cmp r4, r0
	bne _08088BF6
	bl sub_0806BE14
	ldr r3, _08088C04
	ldrb r2, [r5, #3]
	lsrs r2, r2, #6
	ldrb r1, [r5, #1]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r2, r2, r1
	adds r2, r2, r3
	ldrb r1, [r2]
	adds r2, r6, #0
	bl sub_0806C0B4
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0806C55C
_08088BF6:
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08088C00: .4byte 0x0000FFFF
_08088C04: .4byte gUnknown_081156CC
	.syntax divided
