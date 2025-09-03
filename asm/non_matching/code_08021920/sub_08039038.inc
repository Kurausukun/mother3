	.syntax unified
sub_08039038:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	ldr r6, _08039058
	movs r0, #0
	mov r8, r0
_08039046:
	ldrh r2, [r6]
	ldrh r0, [r6, #2]
	adds r1, r0, #0
	cmp r1, #0xf0
	bne _0803905C
	movs r1, #0xf
	movs r4, #0xf2
	b _0803906E
	.align 2, 0
_08039058: .4byte gUnknown_080C5AC8
_0803905C:
	cmp r1, #0xef
	bne _08039066
	movs r1, #0x10
	movs r4, #0xf1
	b _0803906E
_08039066:
	subs r0, #0xf1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r4, [r6, #2]
_0803906E:
	ldr r5, _08039158
	ldr r3, _0803915C
	adds r0, r5, r3
	ldrh r0, [r0]
	cmp r1, r0
	bne _0803913A
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r2, r0
	beq _0803913A
	adds r0, r2, #0
	bl get_flag
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803913A
	cmp r4, #0
	beq _0803913A
	ldr r0, _08039160
	adds r0, #0x10
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0x62
	bhi _080390A2
	cmp r0, #0
	beq _0803913A
_080390A2:
	ldr r1, _08039164
	adds r0, r5, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, _08039168
	adds r0, r5, r3
	lsls r1, r1, #3
	ldrh r0, [r0]
	adds r1, r1, r0
	movs r7, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0803916C
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	ldr r1, _08039170
	adds r0, r5, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r3, _08039174
	adds r1, r5, r3
	lsls r0, r0, #3
	ldrh r1, [r1]
	adds r0, r0, r1
	add r5, sp, #8
	strh r0, [r5, #2]
	movs r0, #0xf0
	strh r0, [r5, #4]
	movs r0, #0xa0
	strh r0, [r5, #6]
	ldrh r1, [r6, #4]
	subs r1, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x10]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x10]
	ldrh r0, [r6, #6]
	subs r0, #0x10
	add r4, sp, #0x10
	strh r0, [r4, #2]
	movs r0, #0x20
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080023E0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803913A
	ldrb r1, [r6, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08039178
	adds r0, r0, r1
	ldrh r1, [r4]
	add r2, sp, #8
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	ldrh r3, [r5, #2]
	subs r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	str r7, [sp]
	str r7, [sp, #4]
	movs r3, #0x20
	bl sub_0803D678
_0803913A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r6, #0xc
	cmp r0, #0x13
	bhi _0803914C
	b _08039046
_0803914C:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08039158: .4byte gSomeBlend
_0803915C: .4byte 0x00003684
_08039160: .4byte gSave
_08039164: .4byte 0x0000366C
_08039168: .4byte 0x00003670
_0803916C: .4byte 0xFFFF0000
_08039170: .4byte 0x0000366E
_08039174: .4byte 0x00003672
_08039178: .4byte gUnknown_080C1E50
	.syntax divided
