	.syntax unified
sub_0808C6D8:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808C752
	ldr r1, [r4, #0x58]
	cmp r1, #6
	beq _0808C752
	subs r0, r1, #1
	cmp r0, #1
	bhi _0808C752
	cmp r1, #1
	beq _0808C6FA
	cmp r1, #2
	beq _0808C720
	b _0808C752
_0808C6FA:
	ldr r1, [r4, #0x1c]
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0808C738
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd3
	bl playSound
	b _0808C752
_0808C720:
	ldr r1, [r4, #0x1c]
	adds r1, #0xb0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808C746
_0808C738:
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd2
	bl playSound
	b _0808C752
_0808C746:
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xd3
	bl playSound
_0808C752:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
