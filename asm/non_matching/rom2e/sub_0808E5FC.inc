	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _0808E648
	str r0, [r5, #0x1c]
	movs r0, #0x9b
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #2
	bl _._10KeyFocuser
	adds r0, r5, #0
	adds r0, #0x2c
	cmp r0, #0
	beq _0808E638
	cmp r0, r4
	beq _0808E638
	adds r6, r0, #0
_0808E622:
	subs r4, #0x90
	ldr r1, [r4, #0x1c]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0xc]
	movs r1, #0
	bl _call_via_r2
	cmp r6, r4
	bne _0808E622
_0808E638:
	adds r0, r5, #0
	adds r1, r7, #0
	bl _._4Base
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E648: .4byte vt_09F85DA8
	.syntax divided
