    .syntax unified
sub_080816FC:
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r5, #0
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r2, r3, r0
	ldr r0, [r2]
	cmp r5, r0
	bge _0808175C
	adds r1, r2, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r2, r3, r0
	movs r6, #4
_0808171C:
	ldrh r0, [r2]
	cmp r0, r4
	bne _08081750
	adds r4, r1, #0
	ldr r3, [r1]
	cmp r5, r3
	bge _0808174C
	adds r2, r5, #0
	adds r0, r2, #1
	cmp r0, r3
	bge _08081742
	adds r3, r6, r1
_08081734:
	ldr r0, [r3, #4]
	stm r3!, {r0}
	adds r2, #1
	adds r1, r2, #1
	ldr r0, [r4]
	cmp r1, r0
	blt _08081734
_08081742:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	movs r0, #1
	b _0808175E
_0808174C:
	movs r0, #0
	b _0808175E
_08081750:
	adds r2, #4
	adds r6, #4
	adds r5, #1
	ldr r0, [r1]
	cmp r5, r0
	blt _0808171C
_0808175C:
	movs r0, #0
_0808175E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
    .syntax divided
