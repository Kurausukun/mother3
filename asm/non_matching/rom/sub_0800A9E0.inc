	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _0800AA04
	adds r0, #7
_0800AA04:
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	ldr r2, _0800AABC
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r1, #2
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _0800AA1C
	adds r0, #7
_0800AA1C:
	asrs r0, r0, #3
	mov r1, sp
	mov r7, sp
	strh r0, [r1, #2]
	ldrh r0, [r3, #4]
	lsrs r0, r0, #3
	strh r0, [r1, #4]
	ldrh r0, [r3, #6]
	lsrs r0, r0, #3
	strh r0, [r1, #6]
	movs r1, #0
	mov sl, r1
	cmp sl, r0
	bhs _0800AAAC
_0800AA38:
	mov r0, sp
	ldrh r0, [r0]
	mov sb, r0
	ldrh r0, [r7, #2]
	add r0, sl
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r0, sb
	mov r1, r8
	bl sub_0800AB64
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0800AAC0
	ldr r1, [sp, #8]
	mov r2, sb
	mov r3, r8
	bl sub_08001378
	adds r5, r0, #0
	movs r4, #0
	movs r0, #1
	add sl, r0
	ldrh r7, [r7, #4]
	cmp r4, r7
	bhs _0800AA9C
_0800AA6E:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0xc
	orrs r0, r6
	strh r0, [r5]
	mov r1, sb
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	ldr r2, _0800AAC4
	bl sub_0800AAC8
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r5, #2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r4, r0
	blo _0800AA6E
_0800AA9C:
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r7, sp
	ldrh r0, [r7, #6]
	cmp sl, r0
	blo _0800AA38
_0800AAAC:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AABC: .4byte 0xFFFF0000
_0800AAC0: .4byte gUnknown_02016078
_0800AAC4: .4byte 0x0000FFFF
	.syntax divided
