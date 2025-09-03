	.syntax unified
sub_08056584:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r0, _0805660C
	ldrb r1, [r0, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080565FE
	lsls r0, r2, #5
	ldr r1, _08056610
	adds r4, r0, r1
	movs r5, #0
	lsls r6, r3, #4
	cmp r5, r6
	bge _080565FE
	movs r0, #0xf8
	lsls r0, r0, #2
	mov sl, r0
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sb, r0
	ldr r0, _08056614
	adds r0, r0, r1
	mov r8, r0
	ldr r0, _08056618
	adds r0, r0, r1
	mov ip, r0
	ldr r0, _0805661C
	adds r7, r1, r0
_080565CC:
	ldrh r3, [r4]
	movs r1, #0x1f
	ands r1, r3
	mov r0, sl
	ands r0, r3
	mov r2, sb
	ands r2, r3
	lsls r1, r1, #1
	add r1, r8
	lsrs r0, r0, #4
	add r0, ip
	ldrh r1, [r1]
	ldrh r0, [r0]
	orrs r1, r0
	lsrs r2, r2, #9
	adds r2, r2, r7
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #2
	cmp r5, r6
	blt _080565CC
_080565FE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805660C: .4byte gUnknown_0200F920
_08056610: .4byte gUnknown_02018778
_08056614: .4byte 0x00010AF4
_08056618: .4byte 0x00010B34
_0805661C: .4byte 0x00010B74
	.syntax divided
