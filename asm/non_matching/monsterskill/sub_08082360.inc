	.syntax unified
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808236E
	movs r0, #1
_0808236E:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
