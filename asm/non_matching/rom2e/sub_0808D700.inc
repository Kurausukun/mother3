	.syntax unified
sub_0808D700:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x28
	ldrb r1, [r6]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r2, [r4]
	bl sub_0808DF14
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0808D71E
	movs r0, #0
	b _0808D752
_0808D71E:
	ldrb r1, [r6]
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_0808DF14
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08061A4C
	str r0, [r5, #0x2c]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl sub_0808D9E0
_0808D752:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.syntax divided
