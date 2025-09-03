	.syntax unified
sub_080347B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0xa2
	ldrh r0, [r1]
	cmp r0, #0
	beq _080347F4
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080347D8
	b _08034956
_080347D8:
	adds r2, r6, #0
	adds r2, #0xca
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #1
	bl sub_08033620
	movs r0, #1
	b _08034958
_080347F4:
	adds r1, r6, #0
	adds r1, #0xcb
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	mov r8, r1
	cmp r0, #0
	beq _08034874
	adds r0, r6, #0
	adds r0, #0xc
	subs r1, #0xc3
	add r7, sp, #4
	adds r5, r6, #0
	adds r5, #0xb0
	ldrh r3, [r5]
	adds r4, r6, #0
	adds r4, #0xb2
	ldrh r2, [r4]
	str r2, [sp]
	adds r2, r7, #0
	bl sub_08002E8C
	add r0, sp, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	ldr r1, _0803486C
	ldr r2, [sp, #8]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #8]
	movs r3, #2
	ldrsh r0, [r7, r3]
	movs r3, #2
	ldrsh r1, [r6, r3]
	subs r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	ldr r1, _08034870
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	cmp r1, #0
	beq _080348C6
	add r1, sp, #8
	adds r0, r6, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080348C6
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r5]
	b _0803490A
	.align 2, 0
_0803486C: .4byte 0xFFFF0000
_08034870: .4byte 0x0000FFFF
_08034874:
	adds r0, r6, #0
	adds r0, #0xc
	adds r1, r6, #0
	adds r1, #8
	add r7, sp, #4
	adds r5, r6, #0
	adds r5, #0xb0
	ldrh r3, [r5]
	adds r4, r6, #0
	adds r4, #0xb2
	ldrh r2, [r4]
	str r2, [sp]
	adds r2, r7, #0
	bl sub_08002E8C
	add r0, sp, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	asrs r0, r0, #4
	add r2, sp, #8
	strh r0, [r2]
	movs r3, #2
	ldrsh r0, [r7, r3]
	movs r3, #2
	ldrsh r1, [r6, r3]
	subs r0, r0, r1
	asrs r0, r0, #4
	strh r0, [r2, #2]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080348C6
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_0800C694
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08034924
_080348C6:
	add r0, sp, #4
	ldrh r0, [r0]
	strh r0, [r6]
	ldrh r0, [r7, #2]
	strh r0, [r6, #2]
	ldrh r2, [r5]
	ldrh r3, [r4]
	movs r0, #0
	movs r1, #0x80
	bl sub_08002E60
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r2, r6, #0
	adds r2, #0xae
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _080348F6
	rsbs r0, r0, #0
_080348F6:
	muls r0, r1, r0
	asrs r1, r0, #8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _08034904
	rsbs r1, r1, #0
_08034904:
	lsls r0, r1, #4
	rsbs r0, r0, #0
	strh r0, [r6, #6]
_0803490A:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r4, [r4]
	cmp r0, r4
	blo _08034956
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0803492E
_08034924:
	adds r0, r6, #0
	bl sub_080349C0
	movs r0, #1
	b _08034958
_0803492E:
	ldr r1, _08034964
	ldr r2, _08034968
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1]
	adds r1, r6, #0
	adds r1, #0xa2
	movs r0, #0x32
	strh r0, [r1]
	adds r4, r6, #0
	adds r4, #0x85
	ldrb r0, [r4]
	bl sub_08033484
	ldrb r0, [r4]
	movs r1, #0x1f
	bl sub_080334D0
_08034956:
	movs r0, #0
_08034958:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08034964: .4byte gSomeBlend
_08034968: .4byte 0x000121B8
	.syntax divided
