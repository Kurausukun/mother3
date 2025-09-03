	.syntax unified
sub_08086460:
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x4c
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x59
	bls _0808648C
	cmp r2, #0
	beq _080864A8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
	b _080864A8
_0808648C:
	ldr r0, [r2, #0x40]
	asrs r0, r0, #0x10
	cmp r0, #0xaa
	ble _080864A8
	cmp r2, #0
	beq _080864A8
	ldr r1, [r2, #0x1c]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0xc]
	movs r1, #3
	bl _call_via_r2
_080864A8:
	pop {r0}
	bx r0
	.syntax divided
