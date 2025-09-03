	.syntax unified
sub_0802AAEC:
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	cmp r5, #0
	beq _0802ABC6
	adds r0, r6, #0
	bl get_char_stats
	adds r7, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_0802B88C
	adds r3, r0, #0
	cmp r4, #0
	beq _0802AB1A
	cmp r4, #1
	beq _0802AB44
	b _0802ABC6
_0802AB1A:
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	cmp r0, r1
	bne _0802ABC6
	ldr r1, [r7, #0x18]
	adds r0, r1, r5
	cmp r0, #0
	ble _0802AB38
	ldr r1, _0802AB34
	cmp r0, r1
	ble _0802AB3E
	strh r1, [r3, #8]
	b _0802AB40
	.align 2, 0
_0802AB34: .4byte 0x000003E7
_0802AB38:
	cmp r1, #1
	beq _0802ABC6
	movs r0, #1
_0802AB3E:
	strh r0, [r3, #8]
_0802AB40:
	ldr r0, [r7, #0x18]
	b _0802AB78
_0802AB44:
	ldrh r0, [r3, #8]
	ldrh r1, [r3, #0xa]
	cmp r0, r1
	bne _0802ABC6
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	adds r0, r0, r5
	cmp r0, #0
	bgt _0802AB62
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	cmp r0, #1
	beq _0802ABC6
	strh r4, [r3, #8]
	b _0802AB76
_0802AB62:
	ldr r1, _0802AB6C
	cmp r0, r1
	ble _0802AB70
	strh r1, [r3, #8]
	b _0802AB76
	.align 2, 0
_0802AB6C: .4byte 0x000003E7
_0802AB70:
	ldrh r0, [r7, #0x1c]
	adds r0, r5, r0
	strh r0, [r3, #8]
_0802AB76:
	ldrh r0, [r7, #0x1c]
_0802AB78:
	strh r0, [r3, #6]
	movs r1, #0
	adds r2, r3, #3
	movs r4, #0
_0802AB80:
	adds r0, r2, r1
	strb r4, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bls _0802AB80
	ldrh r0, [r3, #6]
	ldrh r1, [r3, #8]
	cmp r0, r1
	bls _0802ABC6
	movs r2, #7
	strb r2, [r3, #5]
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _0802ABA6
	subs r0, #1
	strb r0, [r3, #2]
	b _0802ABC6
_0802ABA6:
	movs r1, #9
	strb r1, [r3, #2]
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _0802ABB8
	subs r0, #1
	strb r0, [r3, #1]
	strb r2, [r3, #4]
	b _0802ABC6
_0802ABB8:
	strb r1, [r3, #1]
	ldrb r0, [r3]
	cmp r0, #0
	beq _0802ABC6
	subs r0, #1
	strb r0, [r3]
	strb r2, [r3, #3]
_0802ABC6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
