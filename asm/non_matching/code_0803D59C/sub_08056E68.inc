	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r5, _08056F34
	ldrb r1, [r5, #0x10]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r6, #3
	rsbs r6, r6, #0
	ands r0, r6
	strb r0, [r5, #0x10]
	movs r0, #0
	mov r8, r0
	str r0, [r5, #0xc]
	ldr r4, _08056F38
	movs r1, #0xc4
	lsls r1, r1, #6
	adds r3, r4, r1
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	mov r0, r8
	strb r0, [r5]
	ldrb r0, [r5, #2]
	ands r2, r0
	ands r2, r6
	ldr r0, _08056F3C
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r1, [r1]
	lsls r1, r1, #0x1f
	adds r0, #0xcc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	orrs r0, r1
	movs r1, #1
	mov sb, r1
	lsrs r0, r0, #0x1f
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #2]
	ldr r0, _08056F40
	adds r6, r4, r0
	mov r1, r8
	str r1, [r6]
	ldr r0, _08056F44
	adds r1, r4, r0
	ldr r0, _08056F48
	str r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #1
	bl memclear
	adds r0, r4, #0
	bl sub_080013D0
	adds r0, r4, #0
	adds r0, #0x50
	bl sub_08001454
	ldr r1, _08056F4C
	adds r0, r4, r1
	movs r1, #3
	bl sub_08001630
	adds r0, r4, #0
	bl sub_08056F58
	adds r5, #8
	adds r0, r5, #0
	bl sub_08056FB0
	ldr r1, _08056F50
	adds r0, r4, r1
	bl sub_08056FBC
	ldr r0, _08056F54
	adds r4, r4, r0
	ldrb r0, [r4]
	bl sub_08057A14
	ldrb r0, [r6]
	mov r1, sb
	orrs r0, r1
	strb r0, [r6]
	adds r0, r6, #0
	bl sub_08056CC0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056F34: .4byte gUnknown_02015DA0
_08056F38: .4byte gSomeBlend
_08056F3C: .4byte gUnknown_020050C0
_08056F40: .4byte 0x00002CB0
_08056F44: .4byte 0x000030FC
_08056F48: .4byte gUnknown_030040F0
_08056F4C: .4byte 0x00002CA0
_08056F50: .4byte 0x00002CB8
_08056F54: .4byte 0x00002CE4
	.syntax divided
