	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r1, #2
	bhi _0808CB3C
	cmp r2, #0
	blt _0808CB3C
	cmp r3, #0
	blt _0808CB3C
	cmp r3, #2
	bgt _0808CB3C
	adds r6, r2, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r5, r0, #2
	adds r0, r5, r4
	ldr r0, [r0, #0x2c]
	cmp r6, r0
	blt _0808CB40
_0808CB3C:
	movs r0, #0
	b _0808CB70
_0808CB40:
	ldr r1, [r4, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r2, [r0, #0x1c]
	movs r3, #0xfc
	lsls r3, r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	adds r1, r5, r4
	ldr r1, [r1, #0x30]
	adds r1, r1, r6
	ldrb r1, [r1]
	ldr r2, [r2, #4]
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0808CB70:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
