	.syntax unified
sub_0808EBA8:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, [r5, #0x1c]
	adds r2, #0xc0
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r6, sp
	mov r0, sp
	ldr r2, [r2, #4]
	adds r1, r5, r1
	bl _call_via_r2
	ldr r1, [r5, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #1
	beq _0808EBEE
	cmp r0, #1
	bgt _0808EBE2
	cmp r0, #0
	beq _0808EBE8
	b _0808EC16
_0808EBE2:
	cmp r0, #2
	beq _0808EC02
	b _0808EC16
_0808EBE8:
	ldr r0, [sp]
	str r0, [r4]
	b _0808EC1C
_0808EBEE:
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrh r0, [r5, #0x32]
	lsrs r0, r0, #1
	subs r1, r1, r0
	movs r2, #2
	ldrsh r0, [r6, r2]
	strh r1, [r4]
	b _0808EC1A
_0808EC02:
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldrh r1, [r5, #0x32]
	subs r0, r0, r1
	movs r2, #2
	ldrsh r1, [r6, r2]
	strh r0, [r4]
	strh r1, [r4, #2]
	b _0808EC1C
_0808EC16:
	movs r0, #0
	strh r0, [r4]
_0808EC1A:
	strh r0, [r4, #2]
_0808EC1C:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
