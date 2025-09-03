	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	ldr r2, _08029014
	add r2, sl
	ldrb r1, [r2]
	movs r5, #0x21
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08029018
	add r2, sl
	ldrb r1, [r2]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, _0802901C
	add r0, sl
	movs r2, #0
	strb r2, [r0]
	ldr r0, _08029020
	add r0, sl
	ldrb r1, [r0]
	ldr r0, _08029024
	add r0, sl
	strb r1, [r0]
	ldr r0, _08029028
	add r0, sl
	movs r3, #0
	strh r2, [r0]
	ldr r0, _0802902C
	add r0, sl
	strh r2, [r0]
	ldr r1, _08029030
	add r1, sl
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08029034
	add r0, sl
	strb r3, [r0]
	ldr r0, _08029038
	add r0, sl
	strb r3, [r0]
	movs r0, #0xd3
	lsls r0, r0, #3
	add r0, sl
	strh r2, [r0]
	ldr r0, _0802903C
	add r0, sl
	strh r2, [r0]
	movs r0, #0
	str r0, [sp, #8]
_08028CE6:
	ldr r2, [sp, #8]
	lsls r1, r2, #2
	movs r0, #0xcd
	lsls r0, r0, #3
	add r0, sl
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r0, _08029040
	adds r0, r2, r0
	ldrb r5, [r0]
	adds r7, r2, #0
	adds r7, #1
	cmp r5, #0
	bne _08028D06
	b _08028FB4
_08028D06:
	ldr r1, _08029044
	movs r0, #0x6c
	muls r0, r5, r0
	adds r0, r0, r1
	ldrb r4, [r0, #1]
	cmp r4, #0
	bne _08028D16
	b _08028FB4
_08028D16:
	ldr r0, _08029034
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028D34
	ldr r0, _08029048
	ldr r3, _0802904C
	adds r2, r0, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08028D34
	ldrh r4, [r2]
_08028D34:
	ldr r0, [sp, #8]
	bl get_obj_direct
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_08036D18
	str r0, [sp]
	adds r0, r4, #0
	bl sub_08036D3C
	str r0, [sp, #4]
	ldr r1, _08029034
	add r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08028D6C
	ldr r1, _08029038
	add r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08028D6C:
	adds r1, r6, #0
	adds r1, #0x85
	str r1, [sp, #0xc]
	mov r2, sp
	ldrb r2, [r2, #8]
	strb r2, [r1]
	adds r1, #7
	ldr r0, _08029050
	strh r0, [r1]
	movs r3, #0
	str r3, [r6, #0x1c]
	adds r2, r6, #0
	adds r2, #0xbc
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r4, r6, #0
	adds r4, #0xbd
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #5
	ldrb r1, [r4]
	movs r5, #0x61
	rsbs r5, r5, #0
	adds r2, r5, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	movs r0, #0xcb
	adds r0, r0, r6
	mov r8, r0
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	mov r1, r8
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0xbf
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r3, #0x11
	rsbs r3, r3, #0
	ands r0, r3
	adds r5, #0x40
	ands r0, r5
	strb r0, [r2]
	movs r0, #0xc7
	adds r0, r0, r6
	mov sb, r0
	ldrb r1, [r0]
	adds r3, #0xe
	adds r0, r3, #0
	ands r0, r1
	mov r1, sb
	strb r0, [r1]
	adds r7, r6, #0
	adds r7, #0xca
	ldrb r1, [r7]
	adds r5, #0x1c
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r7]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r7]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7]
	adds r4, #0xb
	ldrb r1, [r4]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4]
	adds r2, r6, #0
	adds r2, #0xcd
	ldrb r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, [sp, #4]
	ldrb r0, [r2]
	lsls r0, r0, #0x1a
	movs r1, #0xc9
	adds r1, r1, r6
	mov ip, r1
	lsrs r0, r0, #0x1d
	lsls r0, r0, #4
	ldrb r1, [r1]
	movs r2, #0x71
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	mov r0, ip
	strb r1, [r0]
	ldr r2, [sp, #4]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r2, #0x7f
	ands r1, r2
	orrs r1, r0
	mov r0, ip
	strb r1, [r0]
	ldr r2, [sp, #4]
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	mov r0, r8
	ldrb r2, [r0]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	adds r2, r6, #0
	adds r2, #0xc6
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r4]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldrb r1, [r7]
	adds r0, r3, #0
	ands r0, r1
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r7]
	mov r2, r8
	ldrb r1, [r2]
	movs r7, #2
	rsbs r7, r7, #0
	adds r0, r7, #0
	ands r0, r1
	ands r0, r3
	ands r0, r5
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r0, r2
	mov r1, r8
	strb r0, [r1]
	adds r4, #4
	ldrb r0, [r4]
	ands r3, r0
	ands r3, r5
	adds r2, #8
	ands r3, r2
	strb r3, [r4]
	movs r3, #0
	str r3, [r6, #0x2c]
	str r3, [r6, #0x30]
	str r3, [r6, #0x34]
	mov r5, sb
	ldrb r1, [r5]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
	str r3, [r6, #0x38]
	str r3, [r6, #0x3c]
	ldr r1, [sp, #4]
	ldrb r0, [r1, #2]
	lsrs r0, r0, #1
	adds r3, r6, #0
	adds r3, #0xa6
	movs r2, #0
	mov r8, r2
	strh r0, [r3]
	ldrb r0, [r1, #3]
	lsrs r1, r0, #1
	adds r2, r6, #0
	adds r2, #0xa8
	strh r1, [r2]
	ldr r5, [sp, #0xc]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08028F16
	adds r0, r1, #4
	strh r0, [r2]
_08028F16:
	ldrh r0, [r3]
	lsls r0, r0, #4
	adds r1, r6, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, #2
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0xb2
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	ldrb r1, [r4]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4]
	ldr r2, [sp]
	ldrb r1, [r2, #8]
	adds r0, r6, #0
	adds r0, #0xb4
	strb r1, [r0]
	adds r0, #2
	movs r3, #0
	strh r3, [r0]
	adds r0, #4
	movs r1, #3
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r0, #3
	mov r5, r8
	strb r5, [r0]
	adds r2, r6, #0
	adds r2, #0x48
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #8
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2]
	ldr r1, [sp]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x19
	adds r0, #8
	strh r0, [r6, #0x14]
	ldrb r0, [r1]
	lsrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #3
	strh r0, [r6, #0x16]
	movs r2, #0
	ldr r7, [sp, #8]
	adds r7, #1
	adds r3, r6, #0
	adds r3, #0x74
	movs r4, #0xff
_08028F9C:
	adds r0, r3, r2
	ldrb r1, [r0]
	orrs r1, r4
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xc
	bls _08028F9C
	adds r0, r6, #0
	bl sub_08036BA4
_08028FB4:
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	cmp r0, #4
	bhi _08028FC0
	b _08028CE6
_08028FC0:
	ldr r0, _08029034
	add r0, sl
	ldrb r0, [r0]
	str r0, [sp, #8]
	cmp r0, #4
	bhi _08029000
	movs r2, #2
	rsbs r2, r2, #0
	adds r5, r2, #0
	movs r3, #3
	rsbs r3, r3, #0
	adds r4, r3, #0
_08028FD8:
	ldr r0, [sp, #8]
	bl get_obj_direct
	adds r6, r0, #0
	adds r0, #0x85
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r0]
	adds r0, #0x37
	ldrb r1, [r0]
	ands r1, r5
	ands r1, r4
	strb r1, [r0]
	ldr r0, [sp, #8]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	cmp r0, #4
	bls _08028FD8
_08029000:
	bl sub_0802B4D8
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029014: .4byte 0x0000069F
_08029018: .4byte 0x000006A1
_0802901C: .4byte 0x00000697
_08029020: .4byte 0x00000683
_08029024: .4byte 0x00000684
_08029028: .4byte 0x0000068C
_0802902C: .4byte 0x0000068E
_08029030: .4byte 0x00000696
_08029034: .4byte 0x00000681
_08029038: .4byte 0x00000682
_0802903C: .4byte 0x0000069A
_08029040: .4byte gSave
_08029044: .4byte gCharStats
_08029048: .4byte gGame
_0802904C: .4byte 0x000082AC
_08029050: .4byte 0x0000FFFF
	.syntax divided
