	.syntax unified
sub_0808D9E0:
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x34]
	cmp r0, r1
	bne _0808D9F2
	cmp r2, #1
	bne _0808D9F8
_0808D9F2:
	str r1, [r3, #0x34]
	movs r0, #1
	b _0808D9FA
_0808D9F8:
	movs r0, #0
_0808D9FA:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
