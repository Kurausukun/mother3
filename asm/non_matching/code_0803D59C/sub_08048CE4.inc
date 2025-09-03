	.syntax unified
sub_08048CE4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r0, _08048D58
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08048D5C
	adds r0, r4, r1
	ldr r6, [r0]
	movs r2, #0xaa
	lsls r2, r2, #3
	adds r2, r2, r4
	mov sb, r2
	ldr r3, _08048D60
	adds r0, r4, r3
	ldrb r0, [r0]
	str r0, [sp, #0xc]
	mov r1, sp
	movs r0, #1
	strh r0, [r1]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _08048D1E
	b _08048EBA
_08048D1E:
	add r1, sp, #4
	mov sl, r1
	add r2, sp, #8
	mov r8, r2
	movs r3, #0xc3
	lsls r3, r3, #3
	adds r7, r4, r3
_08048D2C:
	ldr r0, [r6]
	lsls r0, r0, #0x14
	cmp r0, #0
	bne _08048D36
	b _08048EA0
_08048D36:
	ldr r1, _08048D64
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r1, #4
	cmp r6, r0
	bne _08048D90
	ldr r0, [r1, #4]
	lsls r0, r0, #0xc
	cmp r0, #0
	bge _08048D68
	adds r0, r4, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08049280
	b _08048D9A
	.align 2, 0
_08048D58: .4byte 0x000076D7
_08048D5C: .4byte 0x000025F4
_08048D60: .4byte 0x000076D6
_08048D64: .4byte 0x000025F8
_08048D68:
	mov r0, sp
	ldrh r0, [r0]
	add r5, sp, #4
	cmp r0, #0
	beq _08048D9C
	ldr r2, _08048D88
	adds r0, r4, r2
	ldrh r0, [r0]
	mov r3, sl
	strh r0, [r3]
	ldr r1, _08048D8C
	adds r0, r4, r1
	ldrh r0, [r0]
	strh r0, [r3, #2]
	b _08048D9C
	.align 2, 0
_08048D88: .4byte 0x000025FC
_08048D8C: .4byte 0x000025FE
_08048D90:
	adds r0, r4, #0
	adds r1, r6, #0
	add r2, sp, #4
	bl sub_08049280
_08048D9A:
	add r5, sp, #4
_08048D9C:
	movs r2, #0
	ldrsh r1, [r5, r2]
	cmp r1, #0
	bge _08048DA6
	adds r1, #7
_08048DA6:
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x10
	ldr r2, _08048ED0
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _08048DC0
	adds r0, #7
_08048DC0:
	asrs r0, r0, #3
	mov r1, r8
	strh r0, [r1, #2]
	ldr r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	ldrb r1, [r7]
	movs r3, #0x79
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7]
	mov r1, r8
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	bl sub_080498B0
	mov r2, sb
	str r0, [r2]
	mov r3, r8
	ldrh r0, [r3]
	ldrh r1, [r3, #2]
	bl sub_080498C4
	mov r1, sb
	str r0, [r1, #4]
	mov r3, r8
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r1, #2
	ldrsh r0, [r3, r1]
	lsls r0, r0, #5
	adds r2, r2, r0
	ldr r0, _08048ED4
	ands r2, r0
	lsls r2, r2, #7
	ldr r0, [r7]
	ldr r1, _08048ED8
	ands r0, r1
	orrs r0, r2
	str r0, [r7]
	ldrh r0, [r5]
	movs r2, #7
	ands r2, r0
	ldrb r0, [r7]
	movs r3, #8
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7]
	ldr r1, [r6]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	mov r0, sb
	bl sub_08048F74
	ldr r0, [r7]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x16
	ldr r2, _08048EDC
	adds r1, r4, r2
	strh r0, [r1]
	mov r0, sb
	adds r0, #8
	ldr r3, _08048EE0
	adds r1, r4, r3
	movs r2, #0x60
	bl sub_08001B18
	mov r0, sb
	adds r0, #0x68
	ldr r2, _08048EE4
	adds r1, r4, r2
	movs r2, #0x60
	bl sub_08001B18
	ldr r3, _08048EE8
	adds r1, r4, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r7, #0xcc
	movs r0, #0xcc
	add sb, r0
	ldr r0, [r6]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	bl sub_08049954
	mov r1, sl
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, sl
	strh r0, [r2]
	ldr r3, _08048EEC
	adds r1, r4, r3
	str r6, [r1]
	ldr r2, _08048EF0
	adds r1, r4, r2
	strh r0, [r1]
	ldrh r1, [r5, #2]
	adds r3, #6
	adds r0, r4, r3
	strh r1, [r0]
_08048EA0:
	adds r6, #4
	movs r1, #0xaa
	lsls r1, r1, #3
	adds r0, r4, r1
	cmp r6, r0
	bhs _08048EBA
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _08048EBA
	b _08048D2C
_08048EBA:
	ldr r3, _08048EF4
	adds r0, r4, r3
	str r6, [r0]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08048ED0: .4byte 0xFFFF0000
_08048ED4: .4byte 0x000003FF
_08048ED8: .4byte 0xFFFE007F
_08048EDC: .4byte 0x000025F0
_08048EE0: .4byte 0x00002530
_08048EE4: .4byte 0x00002590
_08048EE8: .4byte 0x000076D7
_08048EEC: .4byte 0x000025F8
_08048EF0: .4byte 0x000025FC
_08048EF4: .4byte 0x000025F4
	.syntax divided
