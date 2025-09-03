	.syntax unified
sub_0805270C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	mov r0, sp
	strh r3, [r0]
	ldr r4, _080527F8
	adds r0, r4, #0
	movs r1, #0x40
	bl memclear
	ldr r0, _080527FC
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
	movs r6, #0x1f
	adds r5, r1, #0
	movs r1, #0x41
	rsbs r1, r1, #0
	mov ip, r1
	movs r2, #0x3f
	rsbs r2, r2, #0
	mov sl, r2
_0805274C:
	mov r0, sb
	adds r0, #0x3c
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _080527A2
	adds r1, r0, #0
	cmp r1, r7
	beq _080527A2
	movs r0, #0x6c
	muls r0, r1, r0
	ldr r2, _08052800
	adds r0, r0, r2
	ldr r2, [r0]
	cmp r2, r8
	bne _080527A2
	strb r1, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	ands r2, r6
	ldrb r1, [r4, #2]
	subs r0, #0x21
	ands r0, r1
	orrs r0, r2
	movs r1, #0x20
	orrs r0, r1
	mov r1, ip
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #2]
	adds r1, r3, #0
	ands r1, r6
	lsls r1, r1, #1
	ldrb r2, [r4, #3]
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #3]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	adds r4, #4
_080527A2:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bls _0805274C
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _080527E8
	movs r0, #0
	strb r0, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	ldrb r1, [r4, #2]
	subs r0, #0x21
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #2]
	ldrb r1, [r4, #3]
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #3]
	ldr r1, _08052804
	ldr r2, _08052808
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_080527E8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080527F8: .4byte gUnknown_020194E8
_080527FC: .4byte 0x00000DAE
_08052800: .4byte gUnknown_080E510C
_08052804: .4byte gSomeBlend
_08052808: .4byte 0x0000426E
	.syntax divided
