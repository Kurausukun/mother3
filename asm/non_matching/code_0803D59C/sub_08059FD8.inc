	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r1
	ldr r1, [sp, #0x24]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	ldr r1, [r0, #4]
	ldrh r0, [r1]
	cmp r0, #4
	bls _0805A002
	movs r0, #4
_0805A002:
	mov sl, r0
	mov r2, r8
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r7, [sp]
	lsls r0, r7, #0x1a
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r4, r1, #2
	movs r5, #0
	cmp r5, sl
	bhs _0805A088
_0805A01C:
	ldr r0, _0805A098
	movs r1, #1
	bl sub_08000F04
	movs r3, #0
	ldrsb r3, [r4, r3]
	mov r2, sb
	movs r7, #2
	ldrsh r1, [r2, r7]
	adds r3, r3, r1
	movs r1, #0xff
	ands r3, r1
	ldr r1, [r4]
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	orrs r3, r1
	movs r1, #1
	ldrsb r1, [r4, r1]
	movs r7, #0
	ldrsh r2, [r2, r7]
	mov ip, r2
	add r1, ip
	ldr r2, _0805A09C
	ands r1, r2
	lsls r1, r1, #0x10
	orrs r3, r1
	ldrh r2, [r4, #2]
	movs r7, #0xf0
	lsls r7, r7, #6
	adds r1, r7, #0
	ands r1, r2
	lsls r1, r1, #0x12
	orrs r3, r1
	str r3, [r0]
	adds r1, r6, #0
	ldr r2, [sp]
	orrs r1, r2
	mov r7, r8
	orrs r1, r7
	strh r1, [r0, #4]
	ldm r4!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, sl
	blo _0805A01C
_0805A088:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A098: .4byte gUnknown_02016078
_0805A09C: .4byte 0x000001FF
	.syntax divided
