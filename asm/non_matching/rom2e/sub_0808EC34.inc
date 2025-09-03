	.syntax unified
sub_0808EC34:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0806BE14
	adds r7, r0, #0
	adds r0, r5, #0
	adds r0, #0x48
	bl sub_0806D648
	ldr r2, _0808ECA0
	ldr r1, [r5, #0x40]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #5
	adds r6, r0, r1
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r4, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r0, r4, r0
	cmp r4, r0
	bge _0808EC8E
_0808EC66:
	adds r0, r5, #0
	adds r0, #0x2a
	adds r0, r0, r4
	ldrb r2, [r0]
	lsls r2, r2, #5
	adds r2, r6, r2
	adds r0, r7, #0
	movs r1, #1
	bl sub_0806C0B4
	adds r2, r0, #0
	adds r4, #1
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r0, #1
	ldrb r0, [r0]
	adds r1, r1, r0
	cmp r4, r1
	blt _0808EC66
_0808EC8E:
	adds r0, r2, #1
	adds r1, r5, #0
	adds r1, #0x29
	ldrb r1, [r1]
	subs r0, r0, r1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808ECA0: .4byte gUnknown_08119976
	.syntax divided
