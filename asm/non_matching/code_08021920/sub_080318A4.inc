	.syntax unified
sub_080318A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	adds r1, #0x8b
	ldrb r1, [r1]
	mov r8, r1
	movs r1, #1
	add r8, r1
	mov r1, r8
	bl sub_08002BCC
	adds r7, r0, #0
	ldr r4, _08031910
	bl sub_08002C20
	lsls r1, r0, #0x10
	lsrs r3, r1, #0x10
	strh r0, [r4]
	adds r2, r6, #0
	adds r2, #0x92
	ldrh r0, [r2]
	cmp r0, r3
	blo _08031924
	adds r4, r6, #0
	adds r4, #0xca
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
	adds r5, r6, #0
	adds r5, #0xcc
	ldrb r0, [r5]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _08031914
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	bl sub_08033414
	ldrb r2, [r4]
	movs r1, #9
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4]
	ldrb r0, [r5]
	ands r1, r0
	strb r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	b _08031962
	.align 2, 0
_08031910: .4byte gUnknown_02001002
_08031914:
	adds r0, r6, #0
	adds r0, #0xbf
	ldrb r0, [r0]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08031922
	subs r0, r3, #1
_08031922:
	strh r0, [r2]
_08031924:
	ldrh r1, [r7]
	cmp r1, #0
	bne _08031938
	ldr r0, _08031934
	strh r1, [r0]
	movs r0, #0
	b _08031962
	.align 2, 0
_08031934: .4byte gUnknown_02001000
_08031938:
	adds r3, r7, #2
	ldrb r2, [r3, #1]
	adds r0, r6, #0
	adds r0, #0x92
	ldrh r0, [r0]
	ldr r5, _0803196C
	mov r1, r8
	lsls r4, r1, #0x10
	cmp r2, r0
	bhs _0803195C
	adds r1, r0, #0
_0803194E:
	adds r3, #2
	ldrb r0, [r3, #1]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r1
	blo _0803194E
_0803195C:
	ldrb r0, [r3]
	strh r0, [r5]
	asrs r0, r4, #0x10
_08031962:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803196C: .4byte gUnknown_02001000
	.syntax divided
