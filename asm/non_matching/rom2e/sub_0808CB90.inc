	.syntax unified
sub_0808CB90:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r1, #0x20]
	ldr r1, [r5, #0x1c]
	adds r1, #0xd0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r4, r0
	bne _0808CBBA
	ldr r1, [r5, #0x1c]
	adds r1, #0xf8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_0808CBBA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
