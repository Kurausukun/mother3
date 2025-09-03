	.syntax unified
sub_0808C3B4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x54
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0808C476
	adds r0, #0xc
	movs r1, #0
	bl sub_0806D7DC
	movs r4, #0
_0808C3D0:
	movs r0, #0x5c
	muls r0, r4, r0
	adds r1, r0, r6
	adds r1, #0xcc
	ldr r2, [r1, #0x1c]
	adds r2, #0x78
	adds r0, #0xcc
	adds r0, r6, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	adds r4, #1
	cmp r4, #2
	ble _0808C3D0
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806DB38
	movs r5, #0
_0808C402:
	movs r0, #0xc4
	adds r4, r5, #0
	muls r4, r0, r4
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r4, r4, r3
	adds r4, r6, r4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806E948
	adds r4, #0x5c
	adds r0, r4, #0
	movs r1, #0
	bl sub_0808E930
	adds r5, #1
	cmp r5, #2
	ble _0808C402
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806DB38
	ldr r3, _0808C47C
	adds r0, r6, r3
	movs r1, #0
	bl sub_0806DB38
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806DB38
	ldr r3, _0808C480
	adds r0, r6, r3
	movs r1, #0
	bl sub_0806D7DC
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806E948
	ldr r3, _0808C484
	adds r0, r6, r3
	movs r1, #0
	bl sub_0806E948
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806DB38
_0808C476:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808C47C: .4byte 0x00000564
_0808C480: .4byte 0x0000069C
_0808C484: .4byte 0x00000764
	.syntax divided
