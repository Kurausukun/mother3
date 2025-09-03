	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	bl sub_0801A61C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x14
	adds r0, r5, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x14
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	cmp r1, #0
	blt _0801A9B4
	cmp r1, r6
	bge _0801A9B4
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _0801A9B4
	cmp r2, r3
	blt _0801A9BC
_0801A9B4:
	ldr r0, _0801A9B8
	b _0801A9D0
	.align 2, 0
_0801A9B8: .4byte gUnknown_08D2D640
_0801A9BC:
	adds r0, r5, #0
	bl sub_0801A904
	ldr r1, [r0]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x1c
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	bl sub_0801AD4C
_0801A9D0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
