	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r0, sp
	strh r1, [r0]
	ldr r1, _08049AC0
	adds r0, r5, r1
	movs r2, #0
	strb r2, [r0]
	ldr r0, _08049AC4
	adds r3, r5, r0
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _08049AC8
	adds r0, r5, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r2, [r0]
	movs r4, #0
	ldr r0, _08049ACC
	adds r1, r5, r0
_08049A06:
	adds r0, r1, r4
	strb r2, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08049A06
	movs r4, #0xaa
	lsls r4, r4, #3
	adds r0, r5, #0
	adds r1, r4, #0
	bl memclear
	adds r4, r5, r4
	movs r1, #0xff
	lsls r1, r1, #5
	adds r0, r4, #0
	bl memclear
	ldr r1, _08049AD0
	adds r0, r5, r1
	movs r1, #0x60
	bl memclear
	ldr r1, _08049AD4
	adds r0, r5, r1
	movs r1, #0x60
	bl memclear
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08049AB8
	ldr r0, _08049AD8
	adds r1, r5, r0
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08049ADC
	adds r0, r5, r1
	strb r2, [r0]
	adds r1, #1
	adds r0, r5, r1
	strb r2, [r0]
	movs r4, #0
	ldr r0, _08049AE0
	mov ip, r0
	movs r6, #1
	ldr r7, _08049AE4
_08049A68:
	movs r0, #0x8c
	adds r2, r4, #0
	muls r2, r0, r2
	adds r2, r5, r2
	ldr r1, _08049AE8
	adds r3, r2, r1
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08049AEC
	adds r3, r2, r0
	ldrh r1, [r3]
	mov r0, ip
	ands r0, r1
	orrs r0, r6
	strh r0, [r3]
	ldr r1, _08049AF0
	adds r3, r2, r1
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r0, _08049AF4
	adds r2, r2, r0
	ldrh r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r6
	strh r0, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x5f
	bls _08049A68
	adds r0, r5, #0
	bl sub_08049B70
_08049AB8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08049AC0: .4byte 0x000076D8
_08049AC4: .4byte 0x000076DC
_08049AC8: .4byte 0x000025F4
_08049ACC: .4byte 0x000076D2
_08049AD0: .4byte 0x00002530
_08049AD4: .4byte 0x00002590
_08049AD8: .4byte 0x000076C8
_08049ADC: .4byte 0x000076DA
_08049AE0: .4byte 0xFFFFFC00
_08049AE4: .4byte 0xFFFFF000
_08049AE8: .4byte 0x0000268B
_08049AEC: .4byte 0x0000268A
_08049AF0: .4byte 0x00002689
_08049AF4: .4byte 0x00002688
	.syntax divided
