	.syntax unified
	push {lr}
	adds r1, r0, #0
	adds r2, r1, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	cmp r0, #1
	bne _080577A6
	ldr r0, [r1, #0x24]
	cmp r0, #0x3b
	bls _080577B4
	ldrb r0, [r2]
	adds r0, #1
	bl sub_08057A14
	b _080577B4
_080577A6:
	ldr r0, [r1, #0x24]
	cmp r0, #0x77
	bls _080577B4
	ldrb r0, [r2]
	adds r0, #1
	bl sub_08057A14
_080577B4:
	pop {r0}
	bx r0
	.syntax divided
