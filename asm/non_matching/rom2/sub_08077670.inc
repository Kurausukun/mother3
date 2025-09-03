	.syntax unified
	push {lr}
	adds r2, r0, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080776A8
	ldr r0, [r2, #0x60]
	cmp r0, #4
	beq _080776A8
	cmp r0, #1
	bne _080776A8
	ldr r1, [r2, #0x1c]
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080776A8
	movs r0, #0xd2
	bl playSound
_080776A8:
	pop {r0}
	bx r0
	.syntax divided
