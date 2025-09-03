	.syntax unified
sub_0808DF14:
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r1, #2
	bhi _0808DF50
	cmp r2, #0
	blt _0808DF50
	cmp r2, #1
	bgt _0808DF50
	lsls r0, r1, #1
	adds r5, r0, r2
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
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
	cmp r5, r0
	blt _0808DF54
_0808DF50:
	movs r0, #0
	b _0808DF7E
_0808DF54:
	ldr r1, [r4, #0x1c]
	adds r1, #0xb8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	ldr r1, [r0, #0x1c]
	movs r3, #0xfc
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #4]
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0808DF7E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
