	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
	bl get_obj
	cmp r0, #0
	beq _0801FF94
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	bl sub_08036338
_0801FF94:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
