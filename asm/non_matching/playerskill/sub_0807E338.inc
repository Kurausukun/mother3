	.syntax unified
sub_0807E338:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x3c
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807E3FA
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #1
	bl sub_0806D7DC__11Unk0806D64C
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #1
	bl sub_0806DB38
	movs r0, #0
	movs r3, #0xb8
	mov sb, r3
_0807E36E:
	movs r4, #0
	adds r1, r0, #1
	mov r8, r1
	mov r6, sb
	muls r6, r0, r6
	adds r0, r6, #0
	adds r0, #0xb4
	adds r7, r5, r0
_0807E37E:
	movs r0, #0x5c
	muls r0, r4, r0
	adds r1, r6, r5
	adds r1, r0, r1
	adds r1, #0xb4
	ldr r2, [r1, #0x1c]
	adds r2, #0x78
	adds r0, r7, r0
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #4]
	movs r1, #1
	bl _call_via_r2
	adds r4, #1
	cmp r4, #1
	ble _0807E37E
	mov r0, r8
	cmp r0, #2
	ble _0807E36E
	movs r1, #0xde
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #1
	bl sub_0806DB38
	ldr r3, _0807E408
	adds r0, r5, r3
	movs r1, #1
	bl sub_0806DB38
	movs r1, #0x96
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #1
	bl sub_0806D7DC__11Unk0806D64C
	ldr r3, _0807E40C
	adds r0, r5, r3
	movs r1, #1
	bl sub_080867D4
	ldr r1, _0807E410
	adds r0, r5, r1
	movs r1, #1
	bl sub_0806E948
	movs r3, #0xb5
	lsls r3, r3, #3
	adds r0, r5, r3
	movs r1, #1
	bl sub_0806E948
	ldr r1, _0807E414
	adds r0, r5, r1
	movs r1, #1
	bl sub_0806DB38
	adds r0, r5, #0
	bl sub_0807E61C
_0807E3FA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E408: .4byte 0x00000414
_0807E40C: .4byte 0x0000051C
_0807E410: .4byte 0x0000054C
_0807E414: .4byte 0x00000604
	.syntax divided
