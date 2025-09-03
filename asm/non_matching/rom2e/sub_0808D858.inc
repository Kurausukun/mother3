	.syntax unified
sub_0808D858:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r0, #0x30
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0808D8FE
	adds r0, #0xc
	movs r1, #0
	bl sub_0806D7DC
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806DB38
	movs r0, #0
	movs r3, #0xb8
	mov sb, r3
_0808D88A:
	movs r4, #0
	adds r1, r0, #1
	mov r8, r1
	mov r5, sb
	muls r5, r0, r5
	adds r0, r5, #0
	adds r0, #0xa8
	adds r7, r6, r0
_0808D89A:
	movs r0, #0x5c
	muls r0, r4, r0
	adds r1, r5, r6
	adds r1, r0, r1
	adds r1, #0xa8
	ldr r2, [r1, #0x1c]
	adds r2, #0x78
	adds r0, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #0
	bl _call_via_r2
	adds r4, #1
	cmp r4, #1
	ble _0808D89A
	mov r0, r8
	cmp r0, #2
	ble _0808D88A
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806D7DC
	movs r3, #0xf6
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #0
	bl sub_080867D4
	movs r1, #0x81
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806E948
	ldr r3, _0808D90C
	adds r0, r6, r3
	movs r1, #0
	bl sub_0806E948
	movs r1, #0x98
	lsls r1, r1, #3
	adds r0, r6, r1
	movs r1, #0
	bl sub_0806DB38
_0808D8FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D90C: .4byte 0x00000464
	.syntax divided
