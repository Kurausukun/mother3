	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0808876E
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _08088772
_0808876E:
	movs r0, #0
	b _080887A8
_08088772:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08088740
	adds r5, r0, #0
	movs r3, #0
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	subs r2, r0, #1
_08088784:
	cmp r3, r2
	bge _080887A4
	adds r0, r3, r2
	asrs r1, r0, #1
	lsls r0, r1, #2
	adds r0, r0, r5
	ldrh r4, [r0]
	cmp r6, r4
	bge _0808879A
	subs r2, r1, #1
	b _08088784
_0808879A:
	adds r3, r1, #1
	ldrh r0, [r0, #4]
	cmp r6, r0
	bge _08088784
	adds r3, r1, #0
_080887A4:
	lsls r0, r3, #2
	adds r0, r5, r0
_080887A8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
