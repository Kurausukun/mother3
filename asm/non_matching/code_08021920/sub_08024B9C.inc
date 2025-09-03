	.syntax unified
sub_08024B9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r4, _08024BE0
	ldr r1, _08024BE4
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0
	strb r1, [r0, #9]
	ldr r2, _08024BE8
	adds r0, r4, r2
	strb r1, [r0]
	ldr r3, _08024BEC
	adds r0, r4, r3
	bl sub_08009E38
	ldr r1, _08024BF0
	adds r0, r4, r1
	bl sub_08024F74
	ldr r0, _08024BF4
	ldr r2, _08024BF8
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bne _08024C00
	ldr r3, _08024BFC
	adds r1, r4, r3
	movs r0, #4
	b _08024C06
	.align 2, 0
_08024BE0: .4byte gSomeBlend
_08024BE4: .4byte 0x00011960
_08024BE8: .4byte 0x00011C8E
_08024BEC: .4byte 0x00005778
_08024BF0: .4byte 0x00004B1C
_08024BF4: .4byte gGame
_08024BF8: .4byte 0x000067AC
_08024BFC: .4byte 0x000053A2
_08024C00:
	ldr r0, _08024CA8
	adds r1, r4, r0
	movs r0, #6
_08024C06:
	strh r0, [r1]
	ldr r5, _08024CAC
	ldr r4, _08024CB0
	movs r2, #0x14
	movs r7, #0
	ldr r1, _08024CB4
	adds r1, r1, r4
	mov r8, r1
	movs r0, #0x88
	lsls r0, r0, #4
	adds r3, r4, r0
_08024C1C:
	movs r0, #2
	strh r0, [r4]
	mov r1, r8
	ldrh r0, [r1]
	lsls r0, r0, #4
	muls r0, r7, r0
	strh r0, [r4, #2]
	strh r2, [r4, #4]
	ldrh r1, [r1]
	movs r0, #0xb0
	muls r0, r1, r0
	strh r0, [r4, #6]
	str r5, [r4, #8]
	str r6, [r4, #0xc]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	adds r0, r6, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_080230C8
	adds r6, r0, #0
	ldr r2, [sp]
	ldr r3, [sp, #4]
	cmp r6, #0
	beq _08024C78
	adds r0, r2, #2
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0xd
	ands r1, r0
	lsrs r2, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #4
	adds r5, r5, r0
	ldr r0, _08024CB8
	cmp r5, r0
	bls _08024C6C
	ldr r5, _08024CAC
_08024C6C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r4, #0x14
	cmp r7, #0x4f
	bls _08024C1C
_08024C78:
	ldr r1, _08024CBC
	ldr r3, _08024CC0
	adds r0, r1, r3
	strh r2, [r0]
	ldr r2, _08024CC4
	adds r0, r1, r2
	ldrh r2, [r0]
	subs r3, #2
	adds r0, r1, r3
	ldrh r0, [r0]
	lsls r0, r0, #4
	muls r0, r2, r0
	movs r2, #0xb4
	lsls r2, r2, #2
	adds r0, r0, r2
	subs r3, #2
	adds r1, r1, r3
	strh r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024CA8: .4byte 0x000053A2
_08024CAC: .4byte 0x06008800
_08024CB0: .4byte gUnknown_0201AB44
_08024CB4: .4byte 0x00000886
_08024CB8: .4byte 0x0600FFFF
_08024CBC: .4byte gSomeBlend
_08024CC0: .4byte 0x000053A4
_08024CC4: .4byte 0x0000539C
	.syntax divided
