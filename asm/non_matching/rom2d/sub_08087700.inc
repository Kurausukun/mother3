	.syntax unified
sub_08087700:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	adds r1, #0x90
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	ble _08087732
	ldr r1, [r4, #0x1c]
	adds r1, #0x98
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #4]
	movs r1, #0
	bl _call_via_r2
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r4, r2
	b _0808773A
_08087732:
	movs r0, #0x85
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #0
_0808773A:
	str r0, [r1]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
