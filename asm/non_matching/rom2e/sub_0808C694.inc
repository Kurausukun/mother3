	.syntax unified
sub_0808C694:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808C6D0
	ldr r0, [r4, #0x58]
	cmp r0, #6
	beq _0808C6D0
	subs r0, #1
	cmp r0, #1
	bhi _0808C6D0
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808C6D0
	adds r0, r4, #0
	bl sub_0808C7CC
	movs r0, #0xda
	bl playSound
_0808C6D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
