	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #0x180
	adds r7, r0, #0
	ldr r1, [r7, #0x1c]
	adds r1, #0xe8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r0, [r7, #0x50]
	ldr r1, [r0, #0x1c]
	movs r3, #0xfc
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, [r7, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl __16UnitTargetChoiceUsP4Unit
	mov r0, sp
	bl sub_08076B30
	cmp r0, #1
	beq _0808C362
	cmp r0, #1
	bgt _0808C324
	cmp r0, #0
	beq _0808C32A
	b _0808C392
_0808C324:
	cmp r0, #2
	beq _0808C388
	b _0808C392
_0808C32A:
	movs r6, #0
	b _0808C352
_0808C32E:
	ldr r5, [r7, #0x50]
	ldr r4, [r5, #0x1c]
	movs r3, #0xb4
	lsls r3, r3, #1
	adds r4, r4, r3
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r5, r5, r0
	mov r0, sp
	adds r1, r6, #0
	bl attackdata_118__10UnitTargeti
	adds r1, r0, #0
	ldr r2, [r4, #4]
	adds r0, r5, #0
	bl _call_via_r2
	adds r6, #1
_0808C352:
	mov r0, sp
	bl attackdata_110__C10UnitTarget
	cmp r6, r0
	blt _0808C32E
	adds r0, r7, #0
	movs r1, #4
	b _0808C380
_0808C362:
	ldr r2, [r7, #0x50]
	cmp r2, #0
	beq _0808C378
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808C378:
	movs r0, #0
	str r0, [r7, #0x50]
	adds r0, r7, #0
	movs r1, #2
_0808C380:
	movs r2, #0
	bl sub_0808C578
	b _0808C392
_0808C388:
	adds r0, r7, #0
	movs r1, #6
	movs r2, #0
	bl sub_0808C578
_0808C392:
	ldr r1, [r7, #0x1c]
	adds r1, #0xf0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	mov r0, sp
	movs r1, #2
	bl _._16UnitTargetChoice
	add sp, #0x180
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
