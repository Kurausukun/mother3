	.syntax unified
sub_080873E4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r6, r2, #0
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _080873FA
	str r6, [r1]
_080873FA:
	movs r1, #0x87
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08087444
	ldr r1, [r4, #0x24]
	movs r0, #0
	bl randS32
	adds r3, r0, #0
	ldr r1, [r4, #0x24]
	adds r2, r1, #1
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bgt _0808747A
	cmp r3, r1
	bgt _0808747A
	str r2, [r4, #0x24]
	adds r2, r1, #0
	adds r4, #0x28
	lsls r5, r3, #2
	cmp r2, r3
	ble _08087472
	lsls r0, r2, #2
	subs r0, #4
	adds r1, r0, r4
_08087436:
	ldr r0, [r1]
	str r0, [r1, #4]
	subs r1, #4
	subs r2, #1
	cmp r2, r3
	bgt _08087436
	b _08087472
_08087444:
	ldr r1, [r4, #0x24]
	adds r2, r1, #1
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bgt _0808747A
	cmp r3, r1
	bgt _0808747A
	str r2, [r4, #0x24]
	adds r2, r1, #0
	adds r4, #0x28
	lsls r5, r3, #2
	cmp r2, r3
	ble _08087472
	lsls r0, r2, #2
	subs r0, #4
	adds r1, r0, r4
_08087466:
	ldr r0, [r1]
	str r0, [r1, #4]
	subs r1, #4
	subs r2, #1
	cmp r2, r3
	bgt _08087466
_08087472:
	adds r0, r4, r5
	str r6, [r0]
	movs r0, #1
	b _0808747C
_0808747A:
	movs r0, #0
_0808747C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
