	.syntax unified
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x22
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808061A
	movs r0, #1
_0808061A:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
