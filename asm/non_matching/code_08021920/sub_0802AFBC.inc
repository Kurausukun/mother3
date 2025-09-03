	.syntax unified
sub_0802AFBC:
	push {r4, r5, lr}
	movs r4, #0
	lsls r5, r0, #0x10
_0802AFC2:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802AFE0
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	asrs r1, r5, #0x10
	bl sub_0802B048
_0802AFE0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0802AFC2
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
