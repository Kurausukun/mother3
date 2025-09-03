	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	ldr r4, _0804B524
	adds r6, r4, #0
	adds r6, #0x74
	adds r7, r4, #0
	adds r7, #0xe8
	movs r0, #0xae
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r1, r1, r4
	mov sb, r1
	adds r0, #0xe8
	adds r0, r0, r4
	mov r8, r0
	adds r1, r4, #0
	adds r1, #0x6f
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	adds r1, #0x74
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0804B528
	adds r1, r4, r0
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0804B52C
	adds r1, r4, r0
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _0804B530
	adds r1, r4, r0
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r0, [r3, #4]
	cmp r0, #0x14
	bne _0804B534
	adds r0, r6, #0
	movs r1, #3
	movs r2, #2
	bl sub_08050F2C
	adds r0, r6, #0
	movs r1, #3
	movs r2, #2
	b _0804B5FA
	.align 2, 0
_0804B524: .4byte gUnknown_0201A55C
_0804B528: .4byte 0x00000157
_0804B52C: .4byte 0x000001CB
_0804B530: .4byte 0x0000023F
_0804B534:
	cmp r0, #0x28
	bne _0804B54A
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_08050F2C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	b _0804B5B2
_0804B54A:
	cmp r0, #0x32
	beq _0804B5DC
	cmp r0, #0x36
	bne _0804B55C
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805108C
	b _0804B620
_0804B55C:
	cmp r0, #0x4a
	bne _0804B578
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl sub_08050F2C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
	movs r3, #0x10
	bl sub_080511F8
	b _0804B620
_0804B578:
	cmp r0, #0x5a
	bne _0804B588
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_08050F2C
	b _0804B620
_0804B588:
	cmp r0, #0x5e
	beq _0804B5CE
	cmp r0, #0x62
	beq _0804B5C0
	cmp r0, #0x66
	bne _0804B59E
	adds r0, r5, #0
	movs r1, #6
	bl sub_0805108C
	b _0804B620
_0804B59E:
	cmp r0, #0xa2
	bne _0804B5BA
	adds r0, r7, #0
	movs r1, #1
	movs r2, #2
	bl sub_08050F2C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #1
_0804B5B2:
	movs r3, #0x60
	bl sub_080511F8
	b _0804B620
_0804B5BA:
	ldr r1, [r3, #4]
	cmp r1, #0xc2
	bne _0804B5CA
_0804B5C0:
	adds r0, r5, #0
	movs r1, #7
	bl sub_0805108C
	b _0804B620
_0804B5CA:
	cmp r1, #0xc6
	bne _0804B5D8
_0804B5CE:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0805108C
	b _0804B620
_0804B5D8:
	cmp r1, #0xca
	bne _0804B5E6
_0804B5DC:
	adds r0, r5, #0
	movs r1, #1
	bl sub_0805108C
	b _0804B620
_0804B5E6:
	cmp r1, #0xce
	bne _0804B602
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl sub_08050F2C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
_0804B5FA:
	movs r3, #0x50
	bl sub_080511F8
	b _0804B620
_0804B602:
	ldr r0, _0804B650
	cmp r1, r0
	bls _0804B620
	bl sub_0804C68C
	movs r0, #9
	bl sub_0804B6E8
	ldr r0, _0804B654
	ldr r1, _0804B658
	adds r0, r0, r1
	movs r1, #0x14
	strb r1, [r0]
	bl sub_08049DC4
_0804B620:
	mov r0, r8
	bl sub_08050D80
	mov r0, sb
	bl sub_08050D80
	adds r0, r4, #0
	bl sub_08050D80
	adds r0, r6, #0
	bl sub_08050D80
	adds r0, r5, #0
	bl sub_08050D80
	adds r0, r7, #0
	bl sub_08050D80
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804B650: .4byte 0x00000175
_0804B654: .4byte gSomeBlend
_0804B658: .4byte 0x00004261
	.syntax divided
