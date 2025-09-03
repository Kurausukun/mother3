	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r3, _0803CB18
	adds r1, r7, #0
	movs r2, #0
	ldr r0, _0803CB1C
	adds r0, r0, r3
	mov ip, r0
_0803C9BC:
	ldrh r0, [r1]
	strh r0, [r3]
	adds r1, #2
	ldrh r0, [r1]
	strh r0, [r3, #2]
	adds r1, #2
	ldrh r0, [r1]
	strh r0, [r3, #4]
	adds r1, #2
	adds r3, #8
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x9f
	bls _0803C9BC
	movs r2, #0
	ldr r4, _0803CB20
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r3, r7, r1
_0803C9E4:
	adds r1, r2, r4
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #4
	bls _0803C9E4
	ldr r1, _0803CB24
	adds r0, r7, r1
	ldrb r1, [r0]
	ldr r0, _0803CB28
	add r0, ip
	strb r1, [r0]
	ldr r1, _0803CB2C
	adds r0, r7, r1
	ldrb r1, [r0]
	ldr r0, _0803CB30
	add r0, ip
	strb r1, [r0]
	ldr r1, _0803CB34
	adds r0, r7, r1
	ldrb r1, [r0]
	ldr r0, _0803CB38
	add r0, ip
	strb r1, [r0]
	movs r1, #0xf2
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0]
	ldr r0, _0803CB3C
	add r0, ip
	strh r1, [r0]
	ldr r1, _0803CB40
	adds r0, r7, r1
	ldrh r1, [r0]
	ldr r0, _0803CB44
	add r0, ip
	strh r1, [r0]
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0]
	ldr r0, _0803CB48
	add r0, ip
	strh r1, [r0]
	ldr r0, _0803CB4C
	adds r6, r7, r0
	ldrb r5, [r6]
	lsls r1, r5, #0x1f
	ldr r3, _0803CB50
	add r3, ip
	lsrs r1, r1, #0x1f
	ldrb r2, [r3]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x1e
	ands r1, r5
	movs r2, #0x1f
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrh r0, [r6]
	movs r1, #0xf0
	lsls r1, r1, #1
	ands r1, r0
	ldrh r2, [r3]
	ldr r0, _0803CB54
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _0803CB58
	adds r0, r7, r1
	ldrb r3, [r0]
	ldr r5, _0803CB5C
	add r5, ip
	movs r1, #2
	ands r1, r3
	ldrb r2, [r5]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #4
	ands r1, r3
	movs r2, #5
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #8
	ands r1, r3
	subs r2, #4
	ands r0, r2
	orrs r0, r1
	movs r1, #0x10
	ands r1, r3
	subs r2, #8
	ands r0, r2
	orrs r0, r1
	lsls r1, r3, #0x1a
	lsrs r1, r1, #0x1f
	lsls r1, r1, #6
	subs r2, #0x30
	ands r0, r2
	orrs r0, r1
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	lsls r1, r1, #7
	movs r2, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r5, r7, r0
	ldrb r1, [r5]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #1
	ldr r6, _0803CB60
	add r6, ip
	orrs r1, r3
	ldrb r2, [r6]
	subs r0, #0x2f
	ands r0, r2
	orrs r0, r1
	ldrb r3, [r5]
	lsls r1, r3, #0x1b
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	lsls r3, r3, #0x1a
	ldr r1, _0803CB64
	add r1, ip
	lsrs r3, r3, #0x1f
	ldrb r0, [r1]
	ands r4, r0
	orrs r4, r3
	strb r4, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803CB18: .4byte gUnknown_0200D908
_0803CB1C: .4byte 0xFFFF82F8
_0803CB20: .4byte gUnknown_0200DE94
_0803CB24: .4byte 0x000003C5
_0803CB28: .4byte 0x00008299
_0803CB2C: .4byte 0x000003C6
_0803CB30: .4byte 0x0000829A
_0803CB34: .4byte 0x000003C7
_0803CB38: .4byte 0x0000829B
_0803CB3C: .4byte 0x0000829E
_0803CB40: .4byte 0x000003CA
_0803CB44: .4byte 0x000082AC
_0803CB48: .4byte 0x000082B4
_0803CB4C: .4byte 0x000003CE
_0803CB50: .4byte 0x000082B6
_0803CB54: .4byte 0xFFFFFE1F
_0803CB58: .4byte 0x000003CF
_0803CB5C: .4byte 0x000082B7
_0803CB60: .4byte 0x000082B8
_0803CB64: .4byte 0x000082B9
	.syntax divided
