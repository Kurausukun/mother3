	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	ldr r6, [sp, #0x34]
	ldr r7, [sp, #0x38]
	mov r8, r7
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r0, #0x10
	str r7, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov ip, r5
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	add r2, sp, #4
	mov r3, r8
	strh r3, [r2]
	ldr r3, _08046850
	ldr r4, _08046854
	adds r2, r3, r4
	ldrh r2, [r2]
	mov r8, r2
	cmp r0, r1
	bhi _0804680E
	b _0804692E
_0804680E:
	mov r0, sb
	cmp r0, #0
	beq _0804689A
	ldr r1, _08046858
	adds r0, r3, r1
	ldrb r4, [r0]
	cmp r4, #7
	bne _0804686C
	ldr r0, _0804685C
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08046860
	mov ip, r2
	ldr r2, _08046864
	ldr r3, _08046868
	adds r2, r2, r3
	ldr r2, [r2]
	lsrs r2, r2, #3
	ands r2, r4
	add r2, ip
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r2, r5, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x20
	bl sub_08046A28
	b _0804689A
	.align 2, 0
_08046850: .4byte gSomeBlend
_08046854: .4byte 0x00002C98
_08046858: .4byte 0x00004260
_0804685C: .4byte gUnknown_080C6710
_08046860: .4byte gUnknown_080C697C
_08046864: .4byte gUnknown_0200F920
_08046868: .4byte 0x00006474
_0804686C:
	ldr r0, _080468E0
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r4, _080468E4
	ldr r2, _080468E8
	ldr r3, _080468EC
	adds r2, r2, r3
	ldr r2, [r2]
	lsrs r2, r2, #3
	movs r3, #7
	ands r2, r3
	adds r2, r2, r4
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	add r2, ip
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x20
	bl sub_08046A28
_0804689A:
	mov r0, sb
	add r0, sl
	ldr r4, [sp, #8]
	cmp r4, r0
	ble _0804692E
	ldr r0, _080468F0
	ldr r1, _080468F4
	adds r0, r0, r1
	ldrb r5, [r0]
	cmp r5, #7
	bne _08046900
	ldr r0, _080468F8
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080468FC
	ldr r2, _080468E8
	ldr r4, _080468EC
	adds r2, r2, r4
	ldr r2, [r2]
	lsrs r2, r2, #3
	ands r2, r5
	adds r2, r2, r3
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r2, r6, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x20
	bl sub_08046A28
	b _0804692E
	.align 2, 0
_080468E0: .4byte gUnknown_080C65F8
_080468E4: .4byte gUnknown_080C697C
_080468E8: .4byte gUnknown_0200F920
_080468EC: .4byte 0x00006474
_080468F0: .4byte gSomeBlend
_080468F4: .4byte 0x00004260
_080468F8: .4byte gUnknown_080C6724
_080468FC: .4byte gUnknown_080C6984
_08046900:
	ldr r0, _0804695C
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r4, _08046960
	ldr r2, _08046964
	ldr r7, _08046968
	adds r2, r2, r7
	ldr r2, [r2]
	lsrs r2, r2, #3
	movs r3, #7
	ands r2, r3
	adds r2, r2, r4
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r2, r6, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r3, #0x20
	bl sub_08046A28
_0804692E:
	add r0, sp, #4
	ldrh r0, [r0]
	cmp r0, #0
	beq _0804694C
	ldr r0, _0804696C
	ldr r1, _08046970
	adds r0, r0, r1
	ldrh r0, [r0]
	mov r2, r8
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_08050E94
_0804694C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804695C: .4byte gUnknown_080C660C
_08046960: .4byte gUnknown_080C6984
_08046964: .4byte gUnknown_0200F920
_08046968: .4byte 0x00006474
_0804696C: .4byte gSomeBlend
_08046970: .4byte 0x00002C98
	.syntax divided
