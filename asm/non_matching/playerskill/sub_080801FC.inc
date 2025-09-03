	.syntax unified
	push {lr}
	adds r1, r0, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808021C
	ldr r0, [r1, #0x40]
	cmp r0, #3
	beq _0808021C
	cmp r0, #0
	bne _0808021C
	movs r0, #1
	str r0, [r1, #0x40]
	movs r0, #0xd2
	bl playSound
_0808021C:
	pop {r0}
	bx r0
	.syntax divided
