	.syntax unified
sub_08034FFC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	bl get_obj_direct
	adds r6, r0, #0
	ldr r5, _0803504C
	movs r7, #0
	movs r0, #0x8b
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0x86
	adds r1, r1, r6
	mov sl, r1
	movs r2, #0x88
	adds r2, r2, r6
	mov sb, r2
_08035024:
	mov r3, r8
	ldrb r4, [r3]
	mov r1, sl
	ldrb r0, [r1]
	mov r2, sb
	ldrh r1, [r2]
	movs r2, #4
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _08035050
	ldrb r0, [r5, #4]
	movs r3, #0x20
	rsbs r3, r3, #0
	ands r0, r3
	movs r1, #4
	b _08035084
	.align 2, 0
_0803504C: .4byte gUnknown_0200D908
_08035050:
	mov r0, r8
	ldrb r4, [r0]
	mov r1, sl
	ldrb r0, [r1]
	mov r2, sb
	ldrh r1, [r2]
	movs r2, #0
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _08035074
	ldrb r0, [r5, #4]
	movs r3, #0x20
	rsbs r3, r3, #0
	ands r0, r3
	b _08035086
_08035074:
	mov r1, r8
	ldrb r0, [r1]
	movs r1, #7
	ands r1, r0
	ldrb r0, [r5, #4]
	movs r2, #0x20
	rsbs r2, r2, #0
	ands r0, r2
_08035084:
	orrs r0, r1
_08035086:
	strb r0, [r5, #4]
	mov r3, r8
	ldrb r0, [r3]
	lsrs r0, r0, #3
	cmp r0, #0xa
	bne _080350A4
	ldrh r0, [r5, #4]
	ldr r2, _080350A0
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r5, #4]
	b _080350B2
	.align 2, 0
_080350A0: .4byte 0xFFFFC01F
_080350A4:
	lsls r0, r0, #5
	ldrh r1, [r5, #4]
	ldr r3, _0803510C
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r5, #4]
_080350B2:
	adds r0, r6, #0
	adds r0, #0xbd
	ldrb r1, [r0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1e
	lsls r1, r1, #6
	ldrb r2, [r5, #5]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	ldrh r0, [r6]
	strh r0, [r5]
	ldrh r0, [r6, #2]
	strh r0, [r5, #2]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, #8
	cmp r7, #0x9f
	bls _08035024
	ldr r5, _08035110
	movs r7, #0
_080350E0:
	adds r0, r7, #0
	bl get_obj_direct
	str r5, [r0, #0x40]
	ldrh r1, [r6]
	strh r1, [r0]
	ldrh r1, [r6, #2]
	strh r1, [r0, #2]
	subs r5, #0xa0
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _080350E0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803510C: .4byte 0xFFFFC01F
_08035110: .4byte gUnknown_0200DD08
	.syntax divided
