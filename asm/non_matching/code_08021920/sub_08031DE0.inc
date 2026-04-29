	.syntax unified
sub_08031DE0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0xc]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	mov r0, sp
	strh r1, [r0]
	ldr r0, [r7, #0x1c]
	ldrh r0, [r0]
	movs r1, #4
	cmp r0, #4
	bhi _08031E16
	adds r1, r0, #0
_08031E16:
	adds r0, r7, #0
	adds r0, #0x90
	strb r1, [r0]
	ldr r2, [sp, #0xc]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	ldr r1, [r7, #0x1c]
	adds r5, r1, #2
	movs r3, #0x54
	adds r3, r3, r7
	mov sl, r3
	movs r4, #0
	str r4, [sp, #0x18]
	str r0, [sp, #0x20]
	ldrb r0, [r0]
	cmp r4, r0
	blo _08031E3C
	b _08031FB0
_08031E3C:
	ldr r1, [r7, #0x20]
	str r1, [sp, #0x14]
	ldr r0, _08031E48
	ldr r2, _08031E4C
	adds r1, r0, r2
	b _08031FA8
	.align 2, 0
_08031E48: .4byte gSomeBlend
_08031E4C: .4byte 0x000121B0
_08031E50:
	ldr r3, _08031E74
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _08031E78
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	ldr r0, _08031E7C
	movs r1, #0
	ldrsb r1, [r5, r1]
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldrb r2, [r5]
	cmp r1, r0
	blt _08031E80
	ldr r0, [sp, #0x44]
	ldrb r6, [r0, #1]
	b _08031E84
	.align 2, 0
_08031E74: .4byte 0x000121B0
_08031E78: .4byte gUnknown_030038F0
_08031E7C: .4byte gUnknown_02001008
_08031E80:
	ldr r1, [sp, #0x44]
	ldrb r6, [r1]
_08031E84:
	lsls r0, r2, #0x18
	asrs r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r0, #1
	ldrsb r0, [r5, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r3, [r7, #0x3c]
	movs r2, #0xc
	ldrsh r1, [r3, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08031EAA
	ldrh r4, [r3]
	ldrh r3, [r3, #2]
	b _08031ED4
_08031EAA:
	movs r4, #0
	ldrsh r0, [r3, r4]
	movs r2, #4
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xe]
	ldrh r3, [r3, #0xc]
	bl lerp2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, [r7, #0x3c]
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r2, #6
	ldrsh r1, [r3, r2]
	ldrh r2, [r3, #0xe]
	ldrh r3, [r3, #0xc]
	bl lerp2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08031ED4:
	mov r0, r8
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r2, r1, #0
	muls r2, r0, r2
	lsls r2, r2, #8
	mov r4, sb
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	lsls r1, r1, #8
	asrs r2, r2, #0x10
	ldr r3, [sp, #4]
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
	ldr r0, _08031F44
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
	ldr r4, [sp, #0x1c]
	str r2, [r4]
	lsls r0, r6, #0xa
	ldr r1, [sp, #8]
	orrs r0, r1
	ldr r2, [sp, #0xc]
	orrs r0, r2
	strh r0, [r4, #4]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08031F48
	movs r0, #0
	b _08031F52
	.align 2, 0
_08031F44: .4byte 0x000001FF
_08031F48:
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x10
	ldr r4, _08031FC0
	adds r0, r0, r4
	lsrs r0, r0, #0x10
_08031F52:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_08032DAC
	ldr r0, [r5]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	lsls r0, r0, #5
	ldr r1, [sp, #0x14]
	adds r0, r1, r0
	mov r2, sl
	str r0, [r2]
	ldm r5!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	mov r3, sl
	strh r0, [r3, #4]
	ldr r4, [sp, #8]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	movs r0, #8
	add sl, r0
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x20]
	ldrb r1, [r1]
	cmp r2, r1
	bhs _08031FB0
	ldr r2, [r7, #0x20]
	str r2, [sp, #0x14]
	ldr r0, _08031FC4
	ldr r3, _08031FC8
	adds r1, r0, r3
_08031FA8:
	ldrh r1, [r1]
	cmp r1, #0x7f
	bhi _08031FB0
	b _08031E50
_08031FB0:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031FC0: .4byte 0xFF600000
_08031FC4: .4byte gSomeBlend
_08031FC8: .4byte 0x000121B0
	.syntax divided
