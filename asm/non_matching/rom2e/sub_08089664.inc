	.syntax unified
sub_08089664:
	push {lr}
	adds r1, r0, #0
	b _0808966C
_0808966A:
	ldr r1, [r1, #0x20]
_0808966C:
	ldr r0, [r1, #0x20]
	cmp r0, #0
	bne _0808966A
	adds r0, r1, #0
	pop {r1}
	bx r1
	.syntax divided
