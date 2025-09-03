	.syntax unified
sub_0808E708:
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r0, [r3, #0x24]
	cmp r0, #3
	bhi _0808E738
	ldr r0, _0808E730
	ldrh r2, [r3, #0x24]
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r1, r0
	bne _0808E734
	adds r0, r2, #1
	strh r0, [r3, #0x24]
	adds r0, r3, #0
	adds r0, #0x26
	adds r0, r0, r2
	strb r1, [r0]
	b _0808E738
	.align 2, 0
_0808E730: .4byte gUnknown_08119544
_0808E734:
	movs r0, #0
	strh r0, [r3, #0x24]
_0808E738:
	pop {r0}
	bx r0
	.syntax divided
