	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #2
	bl IsPlayerAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808BEB2
	bl sub_08072858
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r5, #0
	adds r6, #0x4d
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r0, #2
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	bl sub_0808CB18
	strh r0, [r4, #2]
	bl sub_08072858
	movs r1, #0
	ldrsb r1, [r6, r1]
	strh r1, [r0, #4]
	b _0808BEFE
_0808BEB2:
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #4
	bl IsPlayerAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808BEFE
	bl sub_08072858
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r5, #0
	adds r6, #0x4d
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r0, #2
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r5, #0
	bl sub_0808CB18
	strh r0, [r4, #6]
	bl sub_08072858
	movs r1, #0
	ldrsb r1, [r6, r1]
	strh r1, [r0, #8]
_0808BEFE:
	bl sub_08072858
	adds r4, r0, #0
	ldr r1, [r5, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	strb r0, [r4, #0xe]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
