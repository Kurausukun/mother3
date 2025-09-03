	.syntax unified
sub_0802D618:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	b _0802D650
_0802D620:
	adds r0, r4, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802D648
	adds r0, r1, #0
	adds r0, #0xca
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0802D648
	adds r0, r1, #0
	bl sub_0803496C
_0802D648:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r5, #0
_0802D650:
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r4, r0
	blo _0802D620
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
