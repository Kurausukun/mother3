	.syntax unified
sub_0805A0A0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	str r1, [sp]
	ldr r0, [sp, #0x30]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	mov r1, sb
	ldr r0, [r1, #4]
	ldrh r0, [r0]
	movs r2, #4
	cmp r0, #4
	bhi _0805A0D2
	adds r2, r0, #0
_0805A0D2:
	mov r1, sb
	adds r1, #0x46
	strb r2, [r1]
	ldr r2, [sp, #4]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [sp, #8]
	lsls r0, r4, #0x1a
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	mov r2, sb
	ldr r0, [r2, #4]
	adds r5, r0, #2
	mov r6, sb
	adds r6, #0x18
	movs r7, #0
	mov sl, r1
	ldrb r4, [r1]
	cmp r7, r4
	bhs _0805A186
_0805A0FC:
	mov r0, sb
	ldr r0, [r0, #8]
	str r0, [sp, #0xc]
	ldr r0, _0805A198
	movs r1, #1
	bl sub_08000F04
	movs r3, #0
	ldrsb r3, [r5, r3]
	ldr r2, [sp]
	movs r4, #2
	ldrsh r1, [r2, r4]
	adds r3, r3, r1
	movs r1, #0xff
	ands r3, r1
	ldr r1, [r5]
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	orrs r3, r1
	movs r1, #1
	ldrsb r1, [r5, r1]
	movs r4, #0
	ldrsh r2, [r2, r4]
	mov ip, r2
	add r1, ip
	ldr r2, _0805A19C
	ands r1, r2
	lsls r1, r1, #0x10
	orrs r3, r1
	ldrh r2, [r5, #2]
	movs r4, #0xf0
	lsls r4, r4, #6
	adds r1, r4, #0
	ands r1, r2
	lsls r1, r1, #0x12
	orrs r3, r1
	str r3, [r0]
	mov r1, r8
	ldr r2, [sp, #8]
	orrs r1, r2
	ldr r4, [sp, #4]
	orrs r1, r4
	strh r1, [r0, #4]
	ldr r0, [r5]
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	lsls r0, r0, #5
	ldr r1, [sp, #0xc]
	adds r4, r1, r0
	str r4, [r6]
	ldm r5!, {r1}
	lsrs r0, r1, #0x1e
	lsls r1, r1, #2
	lsrs r1, r1, #0x1e
	bl sub_08002760
	strh r0, [r6, #4]
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r6, #8
	mov r2, sl
	ldrb r2, [r2]
	cmp r7, r2
	blo _0805A0FC
_0805A186:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A198: .4byte gUnknown_02016078
_0805A19C: .4byte 0x000001FF
	.syntax divided
