	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808C7C4
	ldr r1, [r4, #0x58]
	cmp r1, #6
	beq _0808C7C4
	subs r0, r1, #1
	cmp r0, #1
	bhi _0808C7C4
	cmp r1, #1
	beq _0808C77A
	cmp r1, #2
	beq _0808C7A0
	b _0808C7C4
_0808C77A:
	ldr r1, [r4, #0x1c]
	adds r1, #0x88
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808C7C4
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd3
	bl playSound
	b _0808C7C4
_0808C7A0:
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808C7C4
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd3
	bl playSound
_0808C7C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
