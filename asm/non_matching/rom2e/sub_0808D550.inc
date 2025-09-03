	.syntax unified
sub_0808D550:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_0808D9E0
_0808D55C:
	ldr r0, [r4, #0x34]
	subs r0, #1
	cmp r0, #4
	bhi _0808D55C
	lsls r0, r0, #2
	ldr r1, _0808D570
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808D570: .4byte _0808D574
_0808D574:
	.4byte _0808D588
	.4byte _0808D592
	.4byte _0808D5A4
	.4byte _0808D5A8
	.4byte _0808D5C6
_0808D588:
	ldr r1, [r4, #0x1c]
	adds r1, #0x68
	movs r2, #0
	ldrsh r0, [r1, r2]
	b _0808D59A
_0808D592:
	ldr r1, [r4, #0x1c]
	adds r1, #0xa8
	movs r3, #0
	ldrsh r0, [r1, r3]
_0808D59A:
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	b _0808D55C
_0808D5A4:
	movs r0, #0
	b _0808D5E2
_0808D5A8:
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _0808D5BE
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808D5BE:
	movs r0, #0
	str r0, [r4, #0x2c]
	movs r0, #1
	b _0808D5E2
_0808D5C6:
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _0808D5DC
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_0808D5DC:
	movs r0, #0
	str r0, [r4, #0x2c]
	movs r0, #2
_0808D5E2:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
