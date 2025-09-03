	.syntax unified
sub_08088740:
	push {lr}
	ldr r2, [r0]
	cmp r2, #0
	beq _0808874E
	ldrh r0, [r2, #2]
	cmp r1, r0
	blt _08088752
_0808874E:
	movs r0, #0
	b _08088758
_08088752:
	lsls r0, r1, #2
	adds r0, #4
	adds r0, r2, r0
_08088758:
	pop {r1}
	bx r1
	.syntax divided
