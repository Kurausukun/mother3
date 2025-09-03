	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
	ldrh r0, [r7, #0x24]
	cmp r5, r0
	bge _0808E772
	movs r6, #0x88
	lsls r6, r6, #0xf
	adds r4, r7, #0
	adds r4, #0x2c
_0808E750:
	ldr r2, [r4, #0x1c]
	adds r2, #0x80
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	lsrs r1, r6, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r6, r6, r0
	adds r4, #0x90
	adds r5, #1
	ldrh r1, [r7, #0x24]
	cmp r5, r1
	blt _0808E750
_0808E772:
	ldrh r5, [r7, #0x24]
	cmp r5, #3
	bgt _0808E7AA
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xf
	adds r6, r0, r1
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, #0x2c
	adds r4, r0, r7
_0808E78A:
	ldr r2, [r4, #0x1c]
	adds r2, #0x80
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, r4, r0
	lsrs r1, r6, #0x10
	ldr r2, [r2, #4]
	bl _call_via_r2
	movs r0, #0x80
	lsls r0, r0, #9
	adds r6, r6, r0
	adds r4, #0x90
	adds r5, #1
	cmp r5, #3
	ble _0808E78A
_0808E7AA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
