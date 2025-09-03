	.syntax unified
sub_080117C4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r1, #0
	str r0, [sp, #0xc]
	adds r0, #0x40
	str r0, [sp, #0x10]
	ldr r1, [r4]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x1c
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	bl sub_0801AD4C
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0801AE18
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #0xf0
	lsls r1, r1, #2
	mov ip, r1
	mov r2, ip
	ands r2, r0
	mov ip, r2
	lsls r1, r0, #0x11
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x1f
	mov sl, r1
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x1c
	lsls r0, r0, #0xc
	mov sb, r0
	movs r6, #0
	ldr r3, [sp]
	ldr r3, [r3]
	mov r8, r3
_0801181A:
	ldr r1, [sp, #8]
	adds r0, r1, r6
	ldrb r3, [r0]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r2, r3
	mov r1, r8
	ands r2, r1
	adds r7, r0, #0
	cmp r2, #0
	beq _08011866
	adds r0, r3, #4
	ldr r2, [sp]
	adds r0, r2, r0
	lsls r4, r6, #1
	ldr r3, [sp, #0xc]
	adds r5, r4, r3
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	add r2, ip
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #4]
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, sl
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	mov r0, sb
	orrs r2, r0
	strh r2, [r5]
	adds r1, r4, #0
	b _0801186E
_08011866:
	lsls r1, r6, #1
	ldr r3, [sp, #0xc]
	adds r0, r1, r3
	strh r2, [r0]
_0801186E:
	ldrb r3, [r7, #2]
	movs r2, #0x80
	lsls r2, r2, #9
	lsls r2, r3
	mov r0, r8
	ands r2, r0
	cmp r2, #0
	beq _080118B0
	adds r0, r3, #4
	ldr r2, [sp]
	adds r0, r2, r0
	ldr r3, [sp, #0x10]
	adds r4, r1, r3
	ldr r3, [r0]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	add r2, ip
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [sp, #4]
	eors r0, r1
	lsls r0, r0, #0xa
	orrs r2, r0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1f
	mov r0, sl
	eors r0, r3
	lsls r0, r0, #0xb
	orrs r2, r0
	mov r0, sb
	orrs r2, r0
	strh r2, [r4]
	b _080118B6
_080118B0:
	ldr r3, [sp, #0x10]
	adds r0, r1, r3
	strh r2, [r0]
_080118B6:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #1
	bls _0801181A
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
