	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08059D6C
	movs r1, #0xb5
	lsls r1, r1, #6
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r2, _08059D70
	adds r0, r0, r2
	movs r1, #0xa
	bl memclear
	ldr r0, _08059D74
	ldr r7, [r0, #0xc]
	ldrh r6, [r0, #0x10]
	movs r0, #0
	mov sb, r0
_08059C78:
	mov r0, sb
	bl sub_0805A2C8
	adds r4, r0, #0
	adds r0, #0x4d
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08059D4A
	ldrh r0, [r4, #0x3e]
	bl sub_08036D18
	adds r5, r0, #0
	ldrh r0, [r4, #0x3e]
	bl sub_08036D3C
	mov r8, r0
	adds r1, r4, #0
	adds r1, #0x44
	ldr r0, _08059D78
	strh r0, [r1]
	movs r0, #0
	str r0, [r4, #4]
	ldrb r0, [r5, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	subs r1, #4
	strb r0, [r1]
	ldrb r0, [r5, #1]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08059CCA
	ldrh r1, [r4, #0x3e]
	cmp r1, #0xff
	bls _08059CCA
	ldr r0, _08059D7C
	cmp r1, r0
	bhi _08059CCA
	adds r0, r4, #0
	bl sub_08059D80
_08059CCA:
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0
	strb r0, [r1]
	ldrh r0, [r4, #0x3e]
	bl sub_08036D60
	str r0, [r4, #0xc]
	str r7, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x4a
	strh r6, [r0]
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r4, #0
	adds r1, #0x41
	strb r0, [r1]
	ldrb r2, [r5, #1]
	adds r3, r4, #0
	adds r3, #0x4d
	lsrs r2, r2, #7
	lsls r2, r2, #3
	mov r8, r2
	ldrb r0, [r3]
	movs r2, #9
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r3]
	ldrb r1, [r5, #4]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrb r0, [r5, #5]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x39
	strb r1, [r0]
	ldrb r0, [r5, #6]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x3a
	strb r1, [r0]
	ldrb r0, [r5, #7]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x3b
	strb r1, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	adds r0, #1
	lsrs r1, r1, #4
	adds r1, #1
	muls r0, r1, r0
	lsls r1, r0, #5
	adds r7, r7, r1
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08059D4A:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0xf
	bls _08059C78
	ldr r0, _08059D74
	str r7, [r0, #0xc]
	strh r6, [r0, #0x10]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059D6C: .4byte gSomeBlend
_08059D70: .4byte 0x00002D42
_08059D74: .4byte gUnknown_02015DC0
_08059D78: .4byte 0x0000FFFF
_08059D7C: .4byte 0x0000026B
	.syntax divided
