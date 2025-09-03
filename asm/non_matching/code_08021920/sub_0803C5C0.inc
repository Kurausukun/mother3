	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r7, #0
	ldr r0, _0803C944
	mov ip, r0
	movs r6, #1
	movs r1, #3
	rsbs r1, r1, #0
	mov sl, r1
	movs r2, #5
	rsbs r2, r2, #0
	mov sb, r2
_0803C5E0:
	lsls r4, r7, #3
	subs r4, r4, r7
	lsls r4, r4, #3
	mov r3, ip
	adds r5, r4, r3
	lsls r3, r7, #4
	add r3, r8
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1f
	ldr r1, _0803C948
	adds r5, r5, r1
	lsrs r0, r0, #0x1f
	ands r0, r6
	ldrb r1, [r5]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5]
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #1
	mov r1, sl
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldrb r0, [r3, #0xc]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	ands r0, r6
	lsls r0, r0, #2
	mov r2, sb
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	ldr r2, _0803C94C
	add r2, ip
	adds r1, r4, r2
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	strh r0, [r1, #2]
	ldr r1, _0803C950
	add r1, ip
	adds r1, r4, r1
	ldrh r0, [r3, #4]
	strh r0, [r1]
	ldrh r0, [r3, #6]
	strh r0, [r1, #2]
	ldr r0, _0803C954
	adds r4, r4, r0
	ldrh r0, [r3, #8]
	strh r0, [r4]
	ldrh r0, [r3, #0xa]
	strh r0, [r4, #2]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #2
	bls _0803C5E0
	movs r7, #0
	movs r1, #1
	mov ip, r1
_0803C662:
	lsls r3, r7, #1
	adds r3, r3, r7
	lsls r3, r3, #3
	ldr r2, _0803C944
	adds r3, r3, r2
	lsls r0, r7, #2
	mov r1, r8
	adds r6, r1, r0
	adds r5, r6, #0
	adds r5, #0x32
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	ldr r2, _0803C958
	adds r4, r3, r2
	mov r1, ip
	ands r0, r1
	ldrb r1, [r4]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	mov sl, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldrb r2, [r5]
	lsrs r2, r2, #3
	lsls r2, r2, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	strb r1, [r4]
	adds r0, r6, #0
	adds r0, #0x33
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	ldr r2, _0803C95C
	adds r4, r3, r2
	lsrs r1, r1, #0x1c
	ldrb r2, [r4]
	movs r0, #0x10
	rsbs r0, r0, #0
	mov sb, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	ldrh r0, [r6, #0x30]
	ldr r1, _0803C960
	adds r3, r3, r1
	strh r0, [r3]
	lsls r3, r7, #4
	ldr r2, _0803C944
	adds r3, r3, r2
	movs r0, #0x91
	lsls r0, r0, #1
	adds r5, r6, r0
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	ldr r1, _0803C964
	adds r4, r3, r1
	lsrs r0, r0, #0x1f
	mov r2, ip
	ands r0, r2
	ldrb r1, [r4]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #6
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	ldrb r0, [r5]
	movs r2, #0x3e
	ands r2, r0
	movs r0, #0x3f
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r4]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	ldr r6, _0803C968
	adds r3, r3, r6
	strh r0, [r3]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x13
	bls _0803C662
	movs r7, #0
	movs r0, #1
	mov ip, r0
	movs r1, #0xf
	mov sl, r1
_0803C748:
	lsls r0, r7, #2
	ldr r2, _0803C944
	adds r4, r0, r2
	mov r3, r8
	adds r6, r3, r0
	adds r5, r6, #0
	adds r5, #0x82
	ldrb r0, [r5]
	lsls r0, r0, #0x1f
	ldr r1, _0803C96C
	adds r3, r4, r1
	lsrs r0, r0, #0x1f
	mov r2, ip
	ands r0, r2
	ldrb r1, [r3]
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3]
	ldrb r0, [r5]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
	ldrb r2, [r5]
	lsrs r2, r2, #3
	lsls r2, r2, #3
	movs r0, #7
	ands r1, r0
	orrs r1, r2
	strb r1, [r3]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r1, [r0]
	lsls r1, r1, #0x1c
	ldr r2, _0803C970
	adds r3, r4, r2
	lsrs r1, r1, #0x1c
	mov r0, sl
	ands r1, r0
	ldrb r2, [r3]
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x80
	ldrh r0, [r0]
	ldr r1, _0803C974
	adds r4, r4, r1
	strh r0, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x27
	bls _0803C748
	movs r7, #0
	ldr r2, _0803C944
	mov sb, r2
_0803C7CC:
	lsls r1, r7, #2
	adds r1, r1, r7
	lsls r1, r1, #3
	mov r3, sb
	adds r5, r1, r3
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r6, r8
	adds r4, r6, r0
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r4, r4, r2
	ldrb r2, [r4]
	lsls r2, r2, #0x1f
	ldr r3, _0803C978
	adds r5, r5, r3
	lsrs r2, r2, #0x1f
	movs r6, #1
	ands r2, r6
	ldrb r3, [r5]
	subs r6, #3
	ands r3, r6
	orrs r3, r2
	strb r3, [r5]
	ldrb r2, [r4]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1f
	movs r6, #1
	ands r2, r6
	lsls r2, r2, #1
	subs r6, #4
	mov sl, r6
	mov r6, sl
	ands r3, r6
	orrs r3, r2
	strb r3, [r5]
	ldrb r2, [r4]
	movs r4, #0x3c
	ands r4, r2
	movs r6, #0x3d
	rsbs r6, r6, #0
	adds r2, r6, #0
	ands r3, r2
	orrs r3, r4
	strb r3, [r5]
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r0, r0, r2
	add r0, r8
	ldr r3, _0803C97C
	adds r1, r1, r3
	movs r2, #0x20
	bl sub_08001B18
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0xb
	bls _0803C7CC
	ldr r4, _0803C944
	movs r0, #0xc8
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	ldr r6, _0803C980
	adds r0, r4, r6
	strh r1, [r0]
	ldr r0, _0803C984
	add r0, r8
	ldrh r1, [r0]
	ldr r2, _0803C988
	adds r0, r4, r2
	strh r1, [r0]
	movs r0, #0xc9
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	ldr r3, _0803C98C
	adds r0, r4, r3
	strh r1, [r0]
	ldr r0, _0803C990
	add r0, r8
	ldrh r1, [r0]
	adds r6, #6
	adds r0, r4, r6
	strh r1, [r0]
	movs r0, #0xca
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	adds r2, #6
	adds r0, r4, r2
	strh r1, [r0]
	ldr r0, _0803C994
	add r0, r8
	ldrh r1, [r0]
	adds r3, #6
	adds r0, r4, r3
	strh r1, [r0]
	movs r0, #0xcb
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	adds r6, #6
	adds r0, r4, r6
	strh r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	adds r2, #0xc
	adds r0, r4, r2
	strh r1, [r0]
	ldr r0, _0803C998
	add r0, r8
	ldrh r1, [r0]
	adds r3, #4
	adds r0, r4, r3
	strh r1, [r0]
	movs r0, #0xcc
	lsls r0, r0, #2
	add r0, r8
	ldrh r1, [r0]
	adds r6, #4
	adds r0, r4, r6
	strh r1, [r0]
	ldr r0, _0803C99C
	add r0, r8
	ldrh r1, [r0]
	subs r2, #2
	adds r0, r4, r2
	strh r1, [r0]
	ldr r0, _0803C9A0
	add r0, r8
	ldrb r3, [r0]
	lsls r1, r3, #0x1f
	ldr r0, _0803C9A4
	adds r6, r4, r0
	lsrs r1, r1, #0x1f
	ldrb r2, [r6]
	movs r5, #2
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #2
	ands r1, r3
	mov r2, sl
	ands r0, r2
	orrs r0, r1
	movs r1, #4
	ands r1, r3
	movs r2, #5
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #8
	ands r1, r3
	subs r2, #4
	ands r0, r2
	orrs r0, r1
	movs r1, #0x10
	ands r1, r3
	subs r2, #8
	ands r0, r2
	orrs r0, r1
	movs r1, #0x20
	ands r1, r3
	subs r2, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	lsls r3, r3, #0x19
	ldr r6, _0803C9A8
	adds r4, r4, r6
	lsrs r3, r3, #0x1f
	ldrb r0, [r4]
	ands r5, r0
	orrs r5, r3
	strb r5, [r4]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803C944: .4byte gGame
_0803C948: .4byte 0x000058E5
_0803C94C: .4byte 0x000058B0
_0803C950: .4byte 0x000058B4
_0803C954: .4byte gUnknown_0200B4B8
_0803C958: .4byte 0x00005D74
_0803C95C: .4byte 0x00005D75
_0803C960: .4byte 0x00005D70
_0803C964: .4byte 0x00006488
_0803C968: .4byte 0x00006484
_0803C96C: .4byte 0x00005F42
_0803C970: .4byte 0x00005F43
_0803C974: .4byte 0x00005F40
_0803C978: .4byte 0x000065E0
_0803C97C: .4byte gUnknown_0200C1BC
_0803C980: .4byte 0x000067AC
_0803C984: .4byte 0x00000322
_0803C988: .4byte 0x000067AE
_0803C98C: .4byte 0x000067B0
_0803C990: .4byte 0x00000326
_0803C994: .4byte 0x0000032A
_0803C998: .4byte 0x0000032E
_0803C99C: .4byte 0x00000332
_0803C9A0: .4byte 0x00000336
_0803C9A4: .4byte 0x000067C4
_0803C9A8: .4byte 0x000067C5
	.syntax divided
