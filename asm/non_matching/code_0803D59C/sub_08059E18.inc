	.syntax unified
	push {r4, lr}
	movs r4, #0
_08059E1C:
	adds r0, r4, #0
	bl sub_0805A2C8
	adds r1, r0, #0
	adds r0, #0x4d
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08059E34
	adds r0, r1, #0
	bl sub_08059E44
_08059E34:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08059E1C
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
