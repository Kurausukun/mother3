	.syntax unified
sub_0808E64C:
	push {r4, lr}
	adds r4, r0, #0
	b _0808E658
_0808E652:
	movs r0, #1
	bl setsleep
_0808E658:
	ldrh r0, [r4, #0x24]
	cmp r0, #3
	bls _0808E652
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
