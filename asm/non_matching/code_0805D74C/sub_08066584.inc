	.syntax unified
sub_08066584:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	str r0, [sp, #0x5c]
	bl __4Base
	ldr r0, _080666DC
	ldr r1, [sp, #0x5c]
	str r0, [r1, #0x1c]
	adds r1, #0x24
	mov sb, r1
	mov r0, sb
	bl sub_0806D64C
	ldr r7, [sp, #0x5c]
	adds r7, #0x90
	ldr r2, _080666E0
	mov r8, r2
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	ldr r5, _080666E4
	str r5, [sp, #0xc]
	str r2, [sp, #4]
	str r0, [sp, #8]
	add r2, sp, #0x40
	movs r4, #0xa
	strh r4, [r2]
	strh r4, [r2, #2]
	adds r0, r7, #0
	add r1, sp, #4
	bl sub_08071108
	str r5, [sp, #0xc]
	ldr r6, _080666E8
	str r6, [r7, #0x1c]
	ldr r1, [sp, #0x5c]
	adds r1, #0xec
	str r1, [sp, #0x60]
	add r1, sp, #0x10
	str r5, [sp, #0x18]
	mov r2, r8
	str r2, [sp, #0x10]
	mov r0, sl
	str r0, [r1, #4]
	add r2, sp, #0x44
	strh r4, [r2]
	strh r4, [r2, #2]
	ldr r0, [sp, #0x60]
	bl sub_08071108
	str r5, [sp, #0x18]
	ldr r1, [sp, #0x60]
	str r6, [r1, #0x1c]
	ldr r1, _080666EC
	add r6, sp, #0x1c
	adds r0, r6, #0
	bl sub_080706A0
	add r2, sp, #0x28
	mov r8, r2
	mov r0, r8
	movs r1, #1
	bl sub_080706A0
	bl sub_0807078C
	adds r1, r0, #0
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0x34
	adds r0, r4, #0
	bl sub_080706A0
	str r4, [sp]
	mov r0, sb
	movs r1, #1
	adds r2, r6, #0
	mov r3, r8
	bl sub_0806D744
	str r5, [sp, #0x3c]
	str r5, [sp, #0x30]
	str r5, [sp, #0x24]
	add r1, sp, #0x48
	movs r0, #0x40
	movs r2, #0
	strh r2, [r1]
	strh r0, [r1, #2]
	mov r0, sb
	bl sub_0806D814
	add r1, sp, #0x4c
	movs r0, #0xf0
	movs r2, #0x20
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, sb
	bl sub_0806D828
	add r1, sp, #0x50
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	mov r0, sb
	bl sub_0806D83C
	ldr r5, _080666F0
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #3
	bl sub_080706D0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08071150
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	adds r0, r7, #0
	movs r1, #1
	bl sub_08071174
	add r1, sp, #0x54
	movs r4, #0x78
	movs r0, #0x46
	strh r4, [r1]
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl sub_08071194
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	bl sub_080706D0
	ldr r0, [sp, #0x60]
	adds r1, r6, #0
	bl sub_08071150
	adds r0, r6, #0
	movs r1, #2
	bl _._3Msg
	ldr r0, [sp, #0x60]
	movs r1, #1
	bl sub_08071174
	add r1, sp, #0x58
	movs r0, #0x52
	strh r4, [r1]
	strh r0, [r1, #2]
	ldr r0, [sp, #0x60]
	bl sub_08071194
	ldr r0, [sp, #0x5c]
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080666DC: .4byte vt_09F7E3E8
_080666E0: .4byte gUnknown_08CE39F8
_080666E4: .4byte _vt.6ResPtr
_080666E8: .4byte vt_09F7E458
_080666EC: .4byte 0x00000289
_080666F0: .4byte 0x000003A7
	.syntax divided
