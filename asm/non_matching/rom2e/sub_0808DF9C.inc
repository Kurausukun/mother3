	.syntax unified
sub_0808DF9C:
	push {lr}
	adds r2, r0, #0
	ldr r1, [r1, #0x20]
	ldr r0, [r2, #0x24]
	cmp r1, r0
	bne _0808DFB8
	ldr r1, [r2, #0x1c]
	adds r1, #0xe0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
_0808DFB8:
	pop {r0}
	bx r0
	.syntax divided
