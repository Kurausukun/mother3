	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, [sp, #0x24]
	ldr r4, [sp, #0x28]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	ldr r0, _0805A8FC
	ldrh r1, [r7]
	bl sub_08000F04
	adds r4, r0, #0
	adds r3, r7, #2
	movs r5, #0
	ldrh r0, [r7]
	cmp r5, r0
	bhs _0805A8EA
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
_0805A892:
	movs r1, #0
	ldrsb r1, [r3, r1]
	add r1, ip
	movs r0, #0xff
	ands r1, r0
	ldrb r2, [r3, #1]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x16
	orrs r1, r0
	lsrs r2, r2, #6
	lsls r2, r2, #0xe
	orrs r1, r2
	strh r1, [r4]
	movs r1, #2
	ldrsb r1, [r3, r1]
	adds r1, r6, r1
	ldr r2, _0805A900
	adds r0, r2, #0
	ands r1, r0
	ldrb r0, [r3, #3]
	lsrs r0, r0, #1
	lsls r0, r0, #9
	orrs r1, r0
	strh r1, [r4, #2]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r1, [sp]
	adds r0, r1, r0
	mov r2, sb
	lsls r1, r2, #0xa
	orrs r0, r1
	mov r2, sl
	lsls r1, r2, #0xc
	orrs r0, r1
	strh r0, [r4, #4]
	adds r4, #8
	adds r3, #6
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r7]
	cmp r5, r0
	blo _0805A892
_0805A8EA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A8FC: .4byte gUnknown_02016078
_0805A900: .4byte 0x000001FF
	.syntax divided
