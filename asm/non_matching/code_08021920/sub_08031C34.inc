	.syntax unified
sub_08031C34:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, sp
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	ldrh r0, [r1]
	cmp r0, #4
	bls _08031C6A
	movs r0, #4
_08031C6A:
	str r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r5, r1, #2
	movs r3, #0
	str r3, [sp, #0x14]
	ldr r4, [sp, #0x18]
	cmp r3, r4
	blo _08031C82
	b _08031DC2
_08031C82:
	b _08031DB4
_08031C84:
	ldr r3, _08031CA8
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08031CAC
	adds r0, r0, r1
	mov sb, r0
	ldr r0, _08031CB0
	movs r1, #0
	ldrsb r1, [r5, r1]
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldrb r2, [r5]
	cmp r1, r0
	blt _08031CB4
	ldr r0, [sp, #0x3c]
	ldrb r6, [r0, #1]
	b _08031CB8
	.align 2, 0
_08031CA8: .4byte 0x000121B0
_08031CAC: .4byte gUnknown_030038F0
_08031CB0: .4byte gUnknown_02001008
_08031CB4:
	ldr r1, [sp, #0x3c]
	ldrb r6, [r1]
_08031CB8:
	lsls r0, r2, #0x18
	asrs r0, r0, #8
	lsrs r7, r0, #0x10
	movs r0, #1
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, [sp, #4]
	ldr r3, [r2, #0x3c]
	movs r4, #0xc
	ldrsh r1, [r3, r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08031CDE
	ldrh r4, [r3]
	ldrh r3, [r3, #2]
	b _08031D0A
_08031CDE:
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #4
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xe]
	ldrh r3, [r3, #0xc]
	bl lerp2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [sp, #4]
	ldr r3, [r0, #0x3c]
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r2, #6
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xe]
	ldrh r3, [r3, #0xc]
	bl lerp2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08031D0A:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r2, r1, #0
	muls r2, r0, r2
	lsls r2, r2, #8
	mov r4, r8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	lsls r1, r1, #8
	asrs r2, r2, #0x10
	ldr r3, [sp, #8]
	movs r4, #2
	ldrsh r0, [r3, r4]
	adds r2, r2, r0
	movs r0, #0xff
	ands r2, r0
	ldr r0, [r5]
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	orrs r2, r0
	asrs r1, r1, #0x10
	movs r4, #0
	ldrsh r0, [r3, r4]
	adds r1, r1, r0
	ldr r0, _08031D78
	ands r1, r0
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrh r1, [r5, #2]
	movs r3, #0xf0
	lsls r3, r3, #6
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x12
	orrs r2, r0
	mov r4, sb
	str r2, [r4]
	lsls r0, r6, #0xa
	mov r1, sl
	orrs r0, r1
	ldr r2, [sp, #0xc]
	orrs r0, r2
	strh r0, [r4, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031D7C
	movs r0, #0
	b _08031D86
	.align 2, 0
_08031D78: .4byte 0x000001FF
_08031D7C:
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x10
	ldr r4, _08031DD4
	adds r0, r0, r4
	lsrs r0, r0, #0x10
_08031D86:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_08032DAC
	ldm r5!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp, #0x14]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bhs _08031DC2
_08031DB4:
	ldr r0, _08031DD8
	ldr r2, _08031DDC
	adds r1, r0, r2
	ldrh r1, [r1]
	cmp r1, #0x7f
	bhi _08031DC2
	b _08031C84
_08031DC2:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031DD4: .4byte 0xFF600000
_08031DD8: .4byte gSomeBlend
_08031DDC: .4byte 0x000121B0
	.syntax divided
