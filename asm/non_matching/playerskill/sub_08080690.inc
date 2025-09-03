	.syntax unified
sub_08080690:
	push {lr}
	ldr r0, [r0, #0x48]
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808069E
	movs r0, #1
_0808069E:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
