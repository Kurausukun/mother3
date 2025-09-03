	.syntax unified
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
_0802B92C:
	adds r0, r4, #0
	bl get_obj_direct
	adds r0, #0x86
	ldrb r0, [r0]
	cmp r0, r5
	bne _0802B940
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	b _0802B94E
_0802B940:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802B92C
	movs r0, #1
	rsbs r0, r0, #0
_0802B94E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
