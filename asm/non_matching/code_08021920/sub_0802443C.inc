	.syntax unified
sub_0802443C:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080244BC
	ldr r1, _080244C0
	adds r3, r0, r1
	movs r1, #0
	strh r1, [r3]
	ldr r2, _080244C4
	adds r4, r0, r2
	movs r5, #0
	ldr r2, _080244C8
	adds r1, r0, r2
	adds r2, r0, #0
	ldrh r1, [r1]
	cmp r5, r1
	bhs _080244AA
	ldr r0, _080244CC
	adds r7, r2, r0
	adds r6, r3, #0
_08024462:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08024498
	cmp r0, #2
	bne _08024498
	bl sub_080244D4
	adds r1, r0, #0
	cmp r1, #0
	beq _08024490
	adds r0, r4, #0
	bl sub_08022368
	ldr r0, [r4, #0x10]
	ldrh r1, [r7]
	ldrh r2, [r4, #4]
	movs r3, #0xf
	str r3, [sp]
	subs r3, #0x10
	bl sub_08022474
	movs r0, #0
	strh r0, [r4]
_08024490:
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	ldr r2, _080244BC
_08024498:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x14
	ldr r1, _080244C8
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r5, r0
	blo _08024462
_080244AA:
	ldr r0, _080244D0
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080244BC: .4byte gSomeBlend
_080244C0: .4byte 0x000053AA
_080244C4: .4byte 0x00004B1C
_080244C8: .4byte 0x0000539C
_080244CC: .4byte 0x00005398
_080244D0: .4byte 0x0000539E
	.syntax divided
