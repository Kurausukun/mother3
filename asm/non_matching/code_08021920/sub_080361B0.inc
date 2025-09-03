	.syntax unified
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x38]
	ldrb r1, [r2, #0x14]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080361D6
	ldrh r0, [r2, #0xa]
	adds r0, #1
	strh r0, [r2, #0xa]
	ldr r1, [r3, #0x38]
	ldrh r0, [r1, #0xa]
	ldrh r1, [r1]
	cmp r0, r1
	bls _080361D6
	adds r0, r3, #0
	bl sub_08036030
_080361D6:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
