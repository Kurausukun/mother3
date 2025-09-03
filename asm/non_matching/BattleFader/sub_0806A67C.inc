    .syntax unified
sub_0806A67C:
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	adds r7, r3, #0
	adds r4, r5, #0
	adds r4, #0xcc
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0806A6A8
	adds r0, r5, #0
	bl sub_0806A760__11BattleFader
	ldrb r1, [r4]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r4]
_0806A6A8:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806A6C0
	adds r0, r5, #0
	bl sub_0806A80C__11BattleFader
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
_0806A6C0:
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806A6D8
	adds r0, r5, #0
	bl sub_0806A8BC__11BattleFader
	ldrb r1, [r4]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r4]
_0806A6D8:
	ldrb r1, [r4]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0
	beq _0806A734
	mov r0, r8
	cmp r0, #0
	ble _0806A74E
	movs r1, #0xf8
	lsls r1, r1, #2
	mov sb, r1
	movs r0, #0xf8
	lsls r0, r0, #7
	mov ip, r0
	mov r4, r8
_0806A6F6:
	ldrh r1, [r6]
	movs r0, #0x1f
	ands r0, r1
	mov r2, sb
	ands r2, r1
	mov r3, ip
	ands r3, r1
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0xc
	adds r1, r1, r0
	lsrs r2, r2, #4
	adds r0, r5, #0
	adds r0, #0x4c
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0]
	orrs r1, r0
	lsrs r3, r3, #9
	adds r0, r5, #0
	adds r0, #0x8c
	adds r0, r0, r3
	ldrh r0, [r0]
	orrs r1, r0
	strh r1, [r7]
	adds r6, #2
	adds r7, #2
	subs r4, #1
	cmp r4, #0
	bne _0806A6F6
	b _0806A74E
_0806A734:
	mov r1, r8
	lsls r0, r1, #1
	cmp r0, #0
	ble _0806A74E
	ldr r2, _0806A75C @ =0x040000D4
	str r6, [r2]
	str r7, [r2, #4]
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0806A74E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A75C: .4byte 0x040000D4
    .syntax divided
