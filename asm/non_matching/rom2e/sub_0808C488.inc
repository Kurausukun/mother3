	.syntax unified
sub_0808C488:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0x54
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808C554
	adds r0, r6, #0
	adds r0, #0x60
	movs r1, #1
	bl sub_0806D7DC__11Unk0806D64C
	movs r4, #0
_0808C4A8:
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
	movs r1, #1
	bl _call_via_r2
	adds r4, #1
	cmp r4, #2
	ble _0808C4A8
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806DB38
	movs r5, #0
_0808C4DA:
	movs r0, #0xc4
	adds r4, r5, #0
	muls r4, r0, r4
	movs r3, #0x9f
	lsls r3, r3, #2
	adds r4, r4, r3
	adds r4, r6, r4
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806E948
	adds r4, #0x5c
	adds r0, r4, #0
	movs r1, #1
	bl sub_0808E930
	adds r5, #1
	cmp r5, #2
	ble _0808C4DA
	movs r1, #0x99
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806DB38
	ldr r3, _0808C55C
	adds r0, r6, r3
	movs r1, #1
	bl sub_0806DB38
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806DB38
	ldr r3, _0808C560
	adds r0, r6, r3
	movs r1, #1
	bl sub_0806D7DC__11Unk0806D64C
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806E948
	ldr r3, _0808C564
	adds r0, r6, r3
	movs r1, #1
	bl sub_0806E948
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #1
	bl sub_0806DB38
	adds r0, r6, #0
	bl sub_0808C7CC
_0808C554:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808C55C: .4byte 0x00000564
_0808C560: .4byte 0x0000069C
_0808C564: .4byte 0x00000764
	.syntax divided
