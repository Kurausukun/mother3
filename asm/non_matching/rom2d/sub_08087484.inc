	.syntax unified
sub_08087484:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	ldr r1, _08087520
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r7, r0
	bne _080874A4
	ldr r1, [r4, #0x1c]
	adds r1, #0xd8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_080874A4:
	movs r0, #0x85
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r7, r0
	bne _080874E4
	ldr r1, [r4, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080874E4
	ldr r1, [r4, #0x1c]
	adds r1, #0xc8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080874E4
	movs r0, #0
	str r0, [r5]
_080874E4:
	adds r5, r4, #0
	adds r5, #0x24
	movs r2, #0
	ldr r0, [r4, #0x24]
	cmp r2, r0
	bge _0808752E
	adds r1, r4, #0
	adds r1, #0x28
	adds r6, r1, #0
_080874F6:
	ldr r0, [r1]
	cmp r0, r7
	bne _08087524
	adds r0, r2, #1
	ldr r3, [r5]
	adds r4, r3, #0
	cmp r0, r4
	bge _08087516
	adds r1, r0, #0
	lsls r0, r2, #2
	adds r2, r0, r6
_0808750C:
	ldr r0, [r2, #4]
	stm r2!, {r0}
	adds r1, #1
	cmp r1, r3
	blt _0808750C
_08087516:
	subs r0, r4, #1
	str r0, [r5]
	movs r0, #1
	b _08087530
	.align 2, 0
_08087520: .4byte 0x0000042C
_08087524:
	adds r1, #4
	adds r2, #1
	ldr r0, [r5]
	cmp r2, r0
	blt _080874F6
_0808752E:
	movs r0, #0
_08087530:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
