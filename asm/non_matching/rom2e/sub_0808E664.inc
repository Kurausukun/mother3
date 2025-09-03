	.syntax unified
sub_0808E664:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0806CA48
	cmp r4, r0
	bne _0808E68C
	adds r0, r6, #0
	movs r1, #0x75
	bl sub_0808E708
	b _0808E6FA
_0808E68C:
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0806CA70
	cmp r4, r0
	bne _0808E6AE
	adds r0, r6, #0
	movs r1, #0x64
	bl sub_0808E708
	b _0808E6FA
_0808E6AE:
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0806CA98
	cmp r4, r0
	bne _0808E6D0
	adds r0, r6, #0
	movs r1, #0x6c
	bl sub_0808E708
	b _0808E6FA
_0808E6D0:
	ldr r1, [r5, #0x1c]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x14]
	bl _call_via_r1
	adds r4, r0, #0
	bl sub_0806CAC0
	cmp r4, r0
	bne _0808E6F2
	adds r0, r6, #0
	movs r1, #0x72
	bl sub_0808E708
	b _0808E6FA
_0808E6F2:
	adds r0, r6, #0
	movs r1, #0x6d
	bl sub_0808E708
_0808E6FA:
	adds r0, r6, #0
	bl sub_0808E73C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
