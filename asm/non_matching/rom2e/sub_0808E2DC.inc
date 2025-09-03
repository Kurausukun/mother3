	.syntax unified
sub_0808E2DC:
	push {lr}
	adds r1, r0, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808E2FC
	ldr r0, [r1, #0x2c]
	cmp r0, #2
	beq _0808E2FC
	cmp r0, #0
	bne _0808E2FC
	movs r0, #1
	str r0, [r1, #0x2c]
	movs r0, #0xd3
	bl playSound
_0808E2FC:
	pop {r0}
	bx r0
	.syntax divided
