	.syntax unified
sub_0802CED4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	b _0802CF06
_0802CEDC:
	adds r0, r5, #5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0802CEFE
	adds r0, r4, #0
	bl sub_08035FE4
	adds r0, r4, #0
	bl sub_08036030
_0802CEFE:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #0
_0802CF06:
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r5, r0
	blo _0802CEDC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
