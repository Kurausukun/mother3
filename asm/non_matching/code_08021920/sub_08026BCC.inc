	.syntax unified
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r1, _08026C24
	ldrb r0, [r1, #5]
	cmp r4, r0
	bhs _08026C1E
	adds r2, r1, #0
	adds r2, #0x52
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	blt _08026C1E
	adds r5, r1, #0
	adds r6, r2, #0
_08026BE8:
	adds r0, r5, #0
	adds r0, #0x3d
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08026C06
	adds r0, r4, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_08033620
_08026C06:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r0, [r5, #5]
	cmp r4, r0
	bhs _08026C1E
	adds r0, r4, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _08026BE8
_08026C1E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026C24: .4byte gEncounter
	.syntax divided
