	.syntax unified
set_ailment:
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, sp
	strh r2, [r1]
	bl get_char_stats
	adds r4, r0, #0
	cmp r5, #8
	bls _0802ADE8
	b _0802AF1C
_0802ADE8:
	lsls r0, r5, #2
	ldr r1, _0802ADF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802ADF4: .4byte _0802ADF8
_0802ADF8:
	.4byte _0802AE1C
	.4byte _0802AE30
	.4byte _0802AE46
	.4byte _0802AE5C
	.4byte _0802AE72
	.4byte _0802AE88
	.4byte _0802AE9E
	.4byte _0802AECA
	.4byte _0802AEB4
_0802AE1C:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	b _0802AEC2
_0802AE30:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3]
	movs r0, #3
	rsbs r0, r0, #0
	b _0802AEC2
_0802AE46:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3]
	movs r0, #5
	rsbs r0, r0, #0
	b _0802AEC2
_0802AE5C:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #9
	rsbs r0, r0, #0
	b _0802AEC2
_0802AE72:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3]
	movs r0, #0x11
	rsbs r0, r0, #0
	b _0802AEC2
_0802AE88:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3]
	movs r0, #0x21
	rsbs r0, r0, #0
	b _0802AEC2
_0802AE9E:
	mov r0, sp
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	movs r1, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3]
	movs r0, #0x41
	rsbs r0, r0, #0
	b _0802AEC2
_0802AEB4:
	mov r0, sp
	ldrh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x30
	lsls r1, r1, #7
	ldrb r2, [r3]
	movs r0, #0x7f
_0802AEC2:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _0802AF1C
_0802AECA:
	mov r3, sp
	ldrh r1, [r3]
	adds r4, #0x30
	lsls r1, r1, #7
	ldrb r2, [r4]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrh r1, [r3]
	movs r2, #1
	ands r2, r1
	lsls r3, r2, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r3
	lsls r3, r2, #5
	adds r1, #0x20
	ands r0, r1
	orrs r0, r3
	lsls r3, r2, #4
	adds r1, #0x10
	ands r0, r1
	orrs r0, r3
	lsls r3, r2, #3
	adds r1, #8
	ands r0, r1
	orrs r0, r3
	lsls r3, r2, #2
	adds r1, #4
	ands r0, r1
	orrs r0, r3
	lsls r3, r2, #1
	adds r1, #2
	ands r0, r1
	orrs r0, r3
	adds r1, #1
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
_0802AF1C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.syntax divided
