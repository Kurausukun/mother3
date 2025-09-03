	.syntax unified
	push {lr}
	adds r3, r0, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0808010A
	adds r0, #0xc
	movs r1, #0
	bl sub_08083CF4
_0808010A:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
