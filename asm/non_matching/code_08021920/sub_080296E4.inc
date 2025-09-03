	.syntax unified
sub_080296E4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r1, _0802973C
	ldr r0, _08029740
	adds r3, r1, r0
	ldrb r0, [r3]
	cmp r0, #5
	bne _08029704
	b _08029AE6
_08029704:
	ldr r2, _08029744
	adds r2, r0, r2
	ldr r4, _08029748
	adds r1, r1, r4
	adds r0, r0, r1
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0]
	mov r4, sp
	ldrb r4, [r4, #4]
	strb r4, [r2]
	ldr r2, _0802974C
	movs r0, #0x6c
	ldr r4, [sp, #4]
	adds r1, r4, #0
	muls r1, r0, r1
	adds r0, r1, r2
	ldrb r5, [r0, #1]
	ldrb r4, [r3]
	adds r2, #0x18
	adds r1, r1, r2
	ldr r0, [r1]
	cmp r0, #0
	bgt _08029750
	mov r1, sp
	movs r0, #1
	b _08029754
	.align 2, 0
_0802973C: .4byte gGame
_08029740: .4byte 0x00008299
_08029744: .4byte gSave
_08029748: .4byte 0x00008294
_0802974C: .4byte gCharStats
_08029750:
	mov r1, sp
	movs r0, #0
_08029754:
	strh r0, [r1]
	adds r0, r4, #0
	bl get_obj_direct
	adds r7, r0, #0
	adds r0, r5, #0
	bl sub_08036D18
	str r0, [sp, #8]
	adds r0, r5, #0
	bl sub_08036D3C
	str r0, [sp, #0xc]
	adds r0, r4, #0
	bl sub_08035138
	str r0, [sp, #0x10]
	adds r0, r7, #0
	adds r0, #0xbc
	str r0, [sp, #0x14]
	ldrb r0, [r0]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x85
	str r0, [sp, #0x18]
	strb r4, [r0]
	adds r0, #1
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0]
	adds r0, #2
	strh r5, [r0]
	rsbs r0, r4, #0
	lsrs r0, r0, #0x1f
	adds r1, r7, #0
	adds r1, #0x87
	strb r0, [r1]
	ldr r2, [sp, #0x10]
	ldrh r1, [r2, #4]
	lsrs r1, r1, #5
	lsls r1, r1, #3
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x8b
	strb r0, [r1]
	adds r1, #1
	ldr r0, _08029AF8
	strh r0, [r1]
	movs r4, #0
	str r4, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x92
	strh r4, [r0]
	adds r1, #2
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x8f
	movs r1, #0
	strb r1, [r0]
	movs r2, #0xbf
	adds r2, r2, r7
	mov sb, r2
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r4, r7, #0
	adds r4, #0xcc
	str r4, [sp, #0x1c]
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r6, r7, #0
	adds r6, #0xc8
	ldrb r1, [r6]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	bl sub_080355AC
	adds r1, r7, #0
	adds r1, #0x9e
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrb r1, [r6]
	movs r0, #7
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r6]
	ldr r2, [sp, #0x10]
	str r2, [r7, #0x40]
	ldrb r1, [r2, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	movs r4, #7
	ands r1, r4
	lsls r1, r1, #2
	ldr r0, [sp, #0x14]
	ldrb r2, [r0]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r5, #0x21
	rsbs r5, r5, #0
	ands r0, r5
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	ldr r2, [sp, #8]
	ldrb r1, [r2, #1]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1f
	movs r4, #0xc7
	adds r4, r4, r7
	mov sl, r4
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #3
	ldrb r2, [r4]
	movs r4, #9
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	ldr r2, [sp, #0x1c]
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [sp, #0x10]
	ldrb r1, [r0, #5]
	adds r3, r7, #0
	adds r3, #0xbd
	movs r2, #3
	mov r8, r2
	lsrs r1, r1, #6
	lsls r1, r1, #3
	ldrb r2, [r3]
	movs r0, #0x19
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	str r3, [sp, #0x24]
	bl sub_08036CD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #5
	ldr r3, [sp, #0x24]
	ldrb r2, [r3]
	movs r1, #0x61
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	movs r2, #0xcb
	adds r2, r2, r7
	mov r8, r2
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	mov r0, sb
	ldrb r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	movs r3, #0x11
	rsbs r3, r3, #0
	ands r0, r3
	ands r0, r5
	mov r1, sb
	strb r0, [r1]
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r2, #3
	rsbs r2, r2, #0
	ands r0, r2
	mov r1, sl
	strb r0, [r1]
	ldr r0, [sp, #0x14]
	ldrb r1, [r0]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sl
	strb r0, [r1]
	adds r1, r7, #0
	adds r1, #0xca
	ldrb r0, [r1]
	ands r4, r0
	strb r4, [r1]
	ldrb r1, [r6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	movs r4, #0x7f
	ands r0, r4
	strb r0, [r6]
	adds r1, r7, #0
	adds r1, #0xcd
	ldrb r0, [r1]
	ands r2, r0
	strb r2, [r1]
	ldr r1, [sp, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1d
	adds r4, r7, #0
	adds r4, #0xc9
	movs r2, #7
	ands r0, r2
	lsls r0, r0, #4
	ldrb r2, [r4]
	movs r1, #0x71
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #7
	movs r2, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldr r4, [sp, #0xc]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #5
	mov r2, r8
	ldrb r1, [r2]
	ands r5, r1
	orrs r5, r0
	strb r5, [r2]
	adds r1, r7, #0
	adds r1, #0xc6
	ldrb r0, [r1]
	movs r4, #0x41
	rsbs r4, r4, #0
	ands r4, r0
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r1]
	mov r0, sp
	ldrh r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	movs r4, #1
	ands r0, r4
	lsls r0, r0, #4
	ldr r2, [sp, #0x1c]
	ldrb r1, [r2]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2]
	movs r4, #0
	str r4, [r7, #0x2c]
	str r4, [r7, #0x30]
	str r4, [r7, #0x34]
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2, #2]
	lsrs r0, r0, #1
	adds r3, r7, #0
	adds r3, #0xa6
	strh r0, [r3]
	ldrb r0, [r2, #3]
	lsrs r1, r0, #1
	adds r2, r7, #0
	adds r2, #0xa8
	strh r1, [r2]
	ldr r4, [sp, #0x18]
	ldrb r0, [r4]
	cmp r0, #0
	bne _080299EC
	adds r0, r1, #4
	strh r0, [r2]
_080299EC:
	ldrh r0, [r3]
	lsls r0, r0, #4
	adds r1, r7, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, #2
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xb2
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	ldr r2, [sp, #0x1c]
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldr r4, [sp, #8]
	ldrb r1, [r4, #8]
	adds r0, r7, #0
	adds r0, #0xb4
	strb r1, [r0]
	adds r0, #2
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	movs r1, #3
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r0, #3
	movs r2, #0
	strb r2, [r0]
	adds r2, r7, #0
	adds r2, #0x48
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #8
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldr r4, [sp, #0x10]
	ldrh r0, [r4]
	strh r0, [r7]
	ldrh r0, [r4, #2]
	strh r0, [r7, #2]
	movs r0, #0
	strh r0, [r7, #4]
	strh r0, [r7, #6]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x19
	adds r0, #8
	strh r0, [r7, #0x14]
	ldrb r0, [r1]
	lsrs r0, r0, #4
	adds r0, #1
	lsls r0, r0, #3
	strh r0, [r7, #0x16]
	movs r2, #0
	adds r3, r7, #0
	adds r3, #0x74
	movs r4, #0xff
_08029A84:
	adds r0, r3, r2
	ldrb r1, [r0]
	orrs r1, r4
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xc
	bls _08029A84
	adds r0, r7, #0
	bl sub_08036BA4
	ldr r4, _08029AFC
	ldr r2, _08029B00
	adds r1, r4, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	bne _08029AC6
	ldr r0, [sp, #4]
	bl sub_08001D2C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08029AC6
	ldr r0, _08029B04
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08029AC6:
	ldr r4, _08029B08
	adds r0, r4, #0
	bl sub_080293BC
	bl sub_08029D10
	ldr r2, _08029B0C
	adds r1, r4, r2
	ldr r0, _08029B10
	str r0, [r1]
	ldr r0, _08029B14
	adds r4, r4, r0
	movs r0, #0
	strh r0, [r4]
	bl sub_08030180
_08029AE6:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029AF8: .4byte 0x0000FFFF
_08029AFC: .4byte gGame
_08029B00: .4byte 0x00008299
_08029B04: .4byte 0x0000829A
_08029B08: .4byte gUnknown_0200D818
_08029B0C: .4byte 0x000020F0
_08029B10: .4byte 0x06010000
_08029B14: .4byte 0x000020F4
	.syntax divided
