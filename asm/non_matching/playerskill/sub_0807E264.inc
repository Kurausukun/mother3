	.syntax unified
sub_0807E264:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r2, r1, #1
	strb r2, [r0]
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _0807E31C
	adds r0, #0xc
	movs r1, #0
	bl sub_0806D7DC__11Unk0806D64C
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806DB38
	movs r0, #0
	movs r3, #0xb8
	mov sb, r3
_0807E296:
	movs r4, #0
	adds r1, r0, #1
	mov r8, r1
	mov r6, sb
	muls r6, r0, r6
	adds r0, r6, #0
	adds r0, #0xb4
	adds r7, r5, r0
_0807E2A6:
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
	movs r1, #0
	bl _call_via_r2
	adds r4, #1
	cmp r4, #1
	ble _0807E2A6
	mov r0, r8
	cmp r0, #2
	ble _0807E296
	movs r1, #0xde
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806DB38
	ldr r3, _0807E328
	adds r0, r5, r3
	movs r1, #0
	bl sub_0806DB38
	movs r1, #0x96
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806D7DC__11Unk0806D64C
	ldr r3, _0807E32C
	adds r0, r5, r3
	movs r1, #0
	bl sub_080867D4
	ldr r1, _0807E330
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806E948
	movs r3, #0xb5
	lsls r3, r3, #3
	adds r0, r5, r3
	movs r1, #0
	bl sub_0806E948
	ldr r1, _0807E334
	adds r0, r5, r1
	movs r1, #0
	bl sub_0806DB38
_0807E31C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0807E328: .4byte 0x00000414
_0807E32C: .4byte 0x0000051C
_0807E330: .4byte 0x0000054C
_0807E334: .4byte 0x00000604
	.syntax divided
