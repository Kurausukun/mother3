	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	ldrh r0, [r6]
	bl sub_08050E64
	adds r4, r0, #0
	adds r3, r6, #2
	movs r5, #0
	ldrh r0, [r6]
	cmp r5, r0
	bhs _08050CEE
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
_08050CA0:
	movs r2, #0
	ldrsb r2, [r3, r2]
	add r2, ip
	movs r0, #0xff
	ands r2, r0
	ldrb r0, [r3, #1]
	lsrs r0, r0, #6
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r0, #2
	ldrsb r0, [r3, r0]
	adds r0, r0, r7
	ldr r1, _08050CFC
	ands r0, r1
	lsls r0, r0, #0x10
	orrs r2, r0
	ldrb r0, [r3, #3]
	lsrs r0, r0, #1
	lsls r0, r0, #0x19
	orrs r2, r0
	str r2, [r4]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	movs r2, #0xd8
	lsls r2, r2, #2
	adds r0, r0, r2
	mov r2, sb
	lsls r1, r2, #0xa
	orrs r0, r1
	strh r0, [r4, #4]
	adds r4, #8
	adds r3, #6
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldrh r0, [r6]
	cmp r5, r0
	blo _08050CA0
_08050CEE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050CFC: .4byte 0x000001FF
	.syntax divided
