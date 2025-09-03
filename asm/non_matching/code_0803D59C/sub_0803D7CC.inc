	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x10]
	ldr r3, _0803D86C
	ands r3, r0
	ldrb r5, [r4, #0x12]
	ldrh r7, [r4, #2]
	ldrh r6, [r4, #4]
	movs r0, #0
	mov r8, r0
	ldrh r0, [r4]
	cmp r8, r0
	bhs _0803D85E
	ldr r0, _0803D870
	mov sb, r0
_0803D7F2:
	mov r0, sb
	ldrh r2, [r0]
	lsls r2, r2, #3
	ldr r0, _0803D874
	adds r2, r2, r0
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #0xe
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2]
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #0xe
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	strh r0, [r2, #2]
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #0xa
	orrs r0, r7
	lsls r1, r6, #0xc
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r1, [r4, #8]
	adds r1, r1, r3
	ldrb r2, [r4, #9]
	adds r2, r2, r5
	ldrb r0, [r4, #6]
	adds r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrb r0, [r4, #7]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x17
	lsrs r3, r1, #0x17
	lsls r2, r2, #0x10
	movs r0, #0xff
	lsls r0, r0, #0x10
	ands r0, r2
	lsrs r5, r0, #0x10
	str r3, [sp]
	bl sub_08032DF4
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [sp]
	ldrh r0, [r4]
	cmp r8, r0
	blo _0803D7F2
_0803D85E:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803D86C: .4byte 0x000001FF
_0803D870: .4byte gMenuObjCount
_0803D874: .4byte gMenuObjBuffer
	.syntax divided
