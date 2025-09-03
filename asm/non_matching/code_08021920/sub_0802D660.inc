	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	b _0802D692
_0802D668:
	adds r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802D68A
	ldr r0, [r1, #0x34]
	cmp r0, #0
	beq _0802D68A
	adds r0, r1, #0
	bl sub_0802D790
_0802D68A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
_0802D692:
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r4, r0
	blo _0802D668
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
