	.syntax unified
sub_08048878:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r1, _080488D8
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r4, [r0, #8]
	movs r6, #0
	ldr r2, _080488DC
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r6, r0
	blo _0804889C
	b _080489E2
_0804889C:
	add r3, sp, #0xc
	mov r8, r3
_080488A0:
	ldrh r2, [r4, #8]
	ldr r1, _080488E0
	ldr r0, [sp, #0xc]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0xc]
	ldrh r2, [r4, #0xa]
	lsls r2, r2, #0x10
	ldr r1, _080488E4
	ands r1, r0
	orrs r1, r2
	str r1, [sp, #0xc]
	mov r2, r8
	ldrh r0, [r2]
	lsrs r1, r1, #0x10
	bl sub_08049894
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	movs r5, #0
	adds r6, #1
	mov sl, r6
	movs r3, #0x14
	adds r3, r3, r4
	mov sb, r3
	b _080489C8
	.align 2, 0
_080488D8: .4byte 0x00006C28
_080488DC: .4byte 0x000076DA
_080488E0: .4byte 0xFFFF0000
_080488E4: .4byte 0x0000FFFF
_080488E8:
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	adds r3, r0, #0
	ldr r0, _0804891C
	cmp r3, r0
	bls _08048924
	ldr r2, [sp, #4]
	ldrh r0, [r2]
	ldr r3, _08048920
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
	ldrb r0, [r2, #2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #2]
	mov r6, r8
	str r6, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	add r2, sp, #4
	add r3, sp, #8
	bl sub_08048B58
	b _080489BC
	.align 2, 0
_0804891C: .4byte 0x0000FEFF
_08048920: .4byte 0xFFFFF000
_08048924:
	ldr r0, [sp, #4]
	ldr r0, [r0]
	lsls r0, r0, #0x14
	cmp r0, #0
	bne _08048938
	ldr r0, _0804899C
	adds r1, r7, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08048938:
	ldr r2, [sp, #4]
	ldr r1, _080489A0
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r2]
	ldr r6, _080489A4
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r2]
	ldr r3, [sp, #4]
	ldrb r1, [r4, #0x10]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	ldrb r2, [r3, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r2, [sp, #4]
	ldrb r0, [r2, #2]
	movs r3, #2
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldr r3, [sp, #4]
	ldrb r1, [r4, #0x10]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	lsls r1, r1, #2
	ldrb r0, [r3, #2]
	movs r6, #5
	rsbs r6, r6, #0
	adds r2, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #2]
	cmp r5, #0
	bne _080489A8
	ldrb r1, [r4, #0x11]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080489A8
	ldr r0, [sp, #4]
	ldrb r1, [r0, #2]
	movs r2, #8
	orrs r1, r2
	b _080489B4
	.align 2, 0
_0804899C: .4byte 0x000076D8
_080489A0: .4byte 0x00000FFF
_080489A4: .4byte 0xFFFFF000
_080489A8:
	ldr r0, [sp, #4]
	ldrb r1, [r0, #2]
	movs r3, #9
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
_080489B4:
	strb r1, [r0, #2]
	ldr r0, [sp, #4]
	adds r0, #4
	str r0, [sp, #4]
_080489BC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [sp, #8]
	adds r0, #2
	str r0, [sp, #8]
_080489C8:
	ldrh r6, [r4, #0xe]
	cmp r5, r6
	blo _080488E8
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	mov r4, sb
	ldr r2, _080489F4
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r6, r0
	bhs _080489E2
	b _080488A0
_080489E2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080489F4: .4byte 0x000076DA
	.syntax divided
