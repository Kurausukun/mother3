	.syntax unified
	push {lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, [r3, #0x58]
	cmp r0, r1
	bne _0808C58A
	cmp r2, #1
	bne _0808C590
_0808C58A:
	str r1, [r3, #0x58]
	movs r0, #1
	b _0808C592
_0808C590:
	movs r0, #0
_0808C592:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
