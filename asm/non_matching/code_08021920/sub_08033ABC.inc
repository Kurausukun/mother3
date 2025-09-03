	.syntax unified
sub_08033ABC:
	push {r4, lr}
	movs r4, #0
_08033AC0:
	adds r0, r4, #0
	bl get_obj_direct
	adds r1, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033ADC
	adds r0, r1, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_0803349C
_08033ADC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08033AC0
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
