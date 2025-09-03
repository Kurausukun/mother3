	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #1
	str r0, [r5, #0x2c]
	cmp r4, #0
	ble _080856BE
_080856A2:
	movs r0, #1
	bl setsleep
	subs r4, #1
	ldr r0, [r5, #0x2c]
	cmp r0, #1
	bne _080856B4
	cmp r4, #0
	bgt _080856A2
_080856B4:
	movs r0, #0
	cmp r4, #0
	ble _080856CC
	movs r0, #1
	b _080856CC
_080856BE:
	movs r0, #1
	bl setsleep
	ldr r0, [r5, #0x2c]
	cmp r0, #1
	beq _080856BE
	movs r0, #1
_080856CC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
