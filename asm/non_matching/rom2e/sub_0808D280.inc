	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #1
	bl IsPlayerAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D2AE
	bl sub_08072858
	ldrh r7, [r0]
	b _0808D2FC
_0808D2AE:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #3
	bl IsPlayerAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D2D4
	bl sub_08072858
	ldrh r7, [r0, #0xa]
	b _0808D2FC
_0808D2D4:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	movs r1, #6
	bl IsPlayerAndType
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808D2FA
	bl sub_08072858
	ldrh r7, [r0, #0xc]
	b _0808D2FC
_0808D2FA:
	movs r7, #0
_0808D2FC:
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r2, #0xfe
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r7, #0
	bl _call_via_r2
	adds r4, r0, #0
	ldr r1, [r6, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bge _0808D386
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807066C
	adds r5, r6, #0
	adds r5, #0x28
	movs r1, #0
	mov r8, r1
	strb r0, [r5]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0807067C
	adds r4, r6, #0
	adds r4, #0x29
	strb r0, [r4]
	ldrb r1, [r5]
	ldrb r2, [r4]
	adds r0, r6, #0
	bl sub_0808DF14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r7
	beq _0808D392
	mov r2, r8
	strb r2, [r5]
	strb r2, [r4]
	b _0808D392
_0808D386:
	adds r0, r6, #0
	adds r0, #0x28
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
_0808D392:
	ldr r4, [r6, #0x1c]
	adds r4, #0xb0
	movs r3, #0
	ldrsh r5, [r4, r3]
	adds r5, r6, r5
	bl sub_08072858
	ldrb r1, [r0, #0xe]
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
