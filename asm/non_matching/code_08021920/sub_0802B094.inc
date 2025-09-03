	.syntax unified
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r4, #0
	lsls r5, r1, #0x10
_0802B09E:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802B0BE
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	adds r1, r6, #0
	asrs r2, r5, #0x10
	bl sub_0802B0D0
_0802B0BE:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802B09E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
