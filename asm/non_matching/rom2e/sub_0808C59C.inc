	.syntax unified
sub_0808C59C:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x54
	ldrb r5, [r0]
	cmp r5, #0
	bne _0808C612
	ldr r1, [r4, #0x58]
	cmp r1, #6
	beq _0808C612
	subs r0, r1, #1
	cmp r0, #1
	bhi _0808C612
	cmp r1, #1
	beq _0808C5BE
	cmp r1, #2
	beq _0808C5EE
	b _0808C612
_0808C5BE:
	ldr r1, [r4, #0x1c]
	adds r1, #0x70
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808C612
	adds r0, r4, #0
	adds r0, #0x4d
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd0
	bl playSound
	b _0808C612
_0808C5EE:
	ldr r1, [r4, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808C612
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd0
	bl playSound
_0808C612:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
