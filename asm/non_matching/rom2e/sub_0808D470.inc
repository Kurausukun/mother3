	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r0, #1
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_0808DF14
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #1
	bl IsPlayerAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D4AE
	bl sub_08072858
	strh r4, [r0]
	b _0808D4F8
_0808D4AE:
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #3
	bl IsPlayerAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D4D4
	bl sub_08072858
	strh r4, [r0, #0xa]
	b _0808D4F8
_0808D4D4:
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #6
	bl IsPlayerAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D4F8
	bl sub_08072858
	strh r6, [r0, #0xc]
_0808D4F8:
	bl sub_08072858
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xc0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	strb r0, [r4, #0xe]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
