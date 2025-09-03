	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0807766A
	ldr r0, [r4, #0x60]
	cmp r0, #4
	beq _0807766A
	cmp r0, #1
	bne _0807766A
	ldr r1, [r4, #0x1c]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0807766A
	adds r0, r4, #0
	bl sub_08077A64
	movs r0, #0xd1
	bl playSound
_0807766A:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
