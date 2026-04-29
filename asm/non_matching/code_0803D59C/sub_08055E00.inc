	.syntax unified
sub_08055E00:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	bl sub_08055F44
	ldr r2, _08055F0C
	ldr r0, _08055F10
	adds r3, r2, r0
	ldrb r0, [r3]
	lsls r0, r0, #2
	ldr r1, _08055F14
	adds r0, r0, r1
	str r0, [sp, #0x10]
	ldrh r0, [r2]
	movs r1, #0
	ldr r0, _08055F18
	strh r0, [r2]
	ldrh r0, [r2, #2]
	ldr r0, _08055F1C
	strh r0, [r2, #2]
	ldrh r0, [r2, #4]
	strh r1, [r2, #4]
	movs r7, #0
	adds r5, r2, #0
	mov r8, r1
	ldr r2, _08055F20
	adds r2, r2, r5
	mov sl, r2
	mov sb, r3
_08055E40:
	ldrh r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r2, [r5, #8]
	orrs r1, r0
	strh r1, [r5, #8]
	cmp r7, #0x50
	bne _08055E7A
	ldr r1, _08055F24
	adds r0, r5, r1
	mov r1, sl
	movs r2, #0x80
	lsls r2, r2, #3
	bl CpuSmartSet
	movs r0, #1
	str r0, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	ldr r1, _08055F28
	adds r0, r5, r1
	mov r1, sl
	movs r2, #0
	movs r3, #0xa
	bl sub_080031F0
_08055E7A:
	ldr r2, _08055F2C
	adds r6, r5, r2
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055ECC
	ldr r0, _08055F30
	adds r4, r5, r0
	ldrb r3, [r4]
	ldr r1, [sp, #0x10]
	ldrb r1, [r1, #3]
	cmp r3, r1
	bhs _08055ECC
	adds r0, #3
	adds r2, r5, r0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	mov r2, sb
	ldrb r1, [r2]
	ldr r2, _08055F34
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _08055F38
	strb r3, [r0]
	adds r0, r3, #1
	strb r0, [r4]
	ldr r2, _08055F3C
	mov r0, sb
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldrb r4, [r4]
	adds r0, r0, r4
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r6]
_08055ECC:
	bl sub_0803E260
	bl sub_08001960
	bl sub_0803E50C
	cmp r7, #0x4f
	bls _08055EE6
	ldr r0, _08055F40
	movs r1, #0
	movs r2, #0x20
	bl sub_0805629C
_08055EE6:
	cmp r7, #0x3c
	bne _08055EF2
	movs r0, #0
	movs r1, #2
	bl musicPlayerFadeOutTemp_bgm
_08055EF2:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x59
	bls _08055E40
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055F0C: .4byte gSomeBlend
_08055F10: .4byte 0x0000C5B0
_08055F14: .4byte gUnknown_080C714C
_08055F18: .4byte 0x00001E41
_08055F1C: .4byte 0x0000070C
_08055F20: .4byte 0x0000C624
_08055F24: .4byte 0x00002750
_08055F28: .4byte 0x0000420C
_08055F2C: .4byte 0x0000C5B3
_08055F30: .4byte 0x0000C5B2
_08055F34: .4byte 0x0000C5C1
_08055F38: .4byte gUnknown_020225EB
_08055F3C: .4byte gUnknown_080C7158
_08055F40: .4byte gUnknown_0201A234
	.syntax divided
