	.syntax unified
sub_08018B30:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08018B6C
	ldr r2, _08018B70
	adds r0, r1, r2
	ldrh r0, [r0]
	mov ip, r1
	cmp r0, #0xcb
	beq _08018B54
	cmp r0, #0xcb
	blt _08018B78
	cmp r0, #0xd8
	bgt _08018B78
	cmp r0, #0xd7
	blt _08018B78
_08018B54:
	ldr r0, _08018B74
	add r0, ip
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08018B64
	b _08018E9E
_08018B64:
	bl sub_08018ED0
	b _08018E9E
	.align 2, 0
_08018B6C: .4byte gGame
_08018B70: .4byte 0x000067AC
_08018B74: .4byte 0x0000591D
_08018B78:
	ldr r4, _08018CA4
	ldr r0, _08018CA8
	adds r4, r4, r0
	ldrb r3, [r4]
	lsls r1, r3, #0x1f
	lsrs r1, r1, #0x1f
	ldr r0, _08018CAC
	add r0, ip
	ldrb r5, [r0]
	lsls r0, r5, #0x1e
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r2, #2
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1f
	ldr r0, _08018CB0
	add r0, ip
	ldrb r7, [r0]
	lsls r0, r7, #0x1e
	lsrs r0, r0, #0x1f
	orrs r1, r0
	lsls r1, r1, #1
	movs r3, #3
	rsbs r3, r3, #0
	ands r3, r2
	orrs r3, r1
	lsls r1, r3, #0x1d
	lsrs r1, r1, #0x1f
	ldr r0, _08018CB4
	add r0, ip
	ldrb r6, [r0]
	lsls r0, r6, #0x1e
	lsrs r0, r0, #0x1f
	orrs r1, r0
	lsls r1, r1, #2
	movs r2, #5
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1f
	lsls r0, r5, #0x1d
	lsrs r0, r0, #0x1f
	orrs r1, r0
	lsls r1, r1, #3
	movs r3, #9
	rsbs r3, r3, #0
	ands r3, r2
	orrs r3, r1
	lsls r1, r3, #0x1b
	lsrs r1, r1, #0x1f
	lsls r0, r7, #0x1d
	lsrs r0, r0, #0x1f
	orrs r1, r0
	lsls r1, r1, #4
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1f
	lsls r0, r6, #0x1d
	lsrs r0, r0, #0x1f
	orrs r1, r0
	lsls r1, r1, #5
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	orrs r2, r1
	strb r2, [r4]
	movs r1, #2
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	bne _08018C26
	adds r0, r1, #0
	ands r0, r7
	cmp r0, #0
	bne _08018C26
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	bne _08018C26
	b _08018D2E
_08018C26:
	ldr r0, _08018CB8
	add r0, ip
	ldrh r5, [r0]
	ldr r0, _08018CBC
	add r0, ip
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, _08018CC0
	add r0, ip
	ldrh r0, [r0]
	mov sb, r0
	ldr r0, _08018CC4
	add r0, ip
	ldrh r7, [r0]
	ldr r0, _08018CC8
	add r0, ip
	ldrh r6, [r0]
	ldr r0, _08018CCC
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _08018CE0
	movs r4, #0
	ldr r1, _08018CA4
	mov r8, r1
_08018C5A:
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	lsls r2, r4, #1
	ldr r0, _08018CD0
	add r0, r8
	adds r0, r2, r0
	adds r1, r3, #0
	add r1, sb
	strh r1, [r0]
	ldr r0, _08018CD4
	add r0, r8
	adds r0, r2, r0
	subs r1, r7, r3
	strh r1, [r0]
	ldr r0, _08018CD8
	adds r2, r2, r0
	adds r0, r3, r6
	strh r0, [r2]
	ldr r1, _08018CDC
	ldrh r0, [r1]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x9f
	bls _08018C5A
	b _08018D2E
	.align 2, 0
_08018CA4: .4byte gSomeBlend
_08018CA8: .4byte 0x0001ED11
_08018CAC: .4byte 0x000058E5
_08018CB0: .4byte 0x0000591D
_08018CB4: .4byte 0x00005955
_08018CB8: .4byte 0x000067B2
_08018CBC: .4byte 0x000067B4
_08018CC0: .4byte 0x000058B8
_08018CC4: .4byte 0x000058F0
_08018CC8: .4byte 0x00005928
_08018CCC: .4byte 0x000067C5
_08018CD0: .4byte 0x000146D0
_08018CD4: .4byte 0x00014810
_08018CD8: .4byte gUnknown_0202A978
_08018CDC: .4byte gUnknown_0200C3B6
_08018CE0:
	movs r4, #0
	ldr r2, _08018DE0
	mov r8, r2
_08018CE6:
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	lsls r2, r4, #1
	ldr r0, _08018DE4
	add r0, r8
	adds r0, r2, r0
	adds r1, r3, #0
	add r1, sb
	strh r1, [r0]
	ldr r0, _08018DE8
	add r0, r8
	adds r0, r2, r0
	adds r1, r3, r7
	strh r1, [r0]
	ldr r0, _08018DEC
	adds r2, r2, r0
	adds r0, r3, r6
	strh r0, [r2]
	ldr r1, _08018DF0
	ldrh r0, [r1]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x9f
	bls _08018CE6
_08018D2E:
	ldr r2, _08018DF4
	ldr r1, _08018DF8
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r1
	mov ip, r2
	cmp r0, #0
	bne _08018D60
	ldr r0, _08018DFC
	add r0, ip
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08018D60
	ldr r0, _08018E00
	add r0, ip
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08018D60
	b _08018E76
_08018D60:
	ldr r0, _08018E04
	add r0, ip
	ldrh r5, [r0]
	ldr r0, _08018E08
	add r0, ip
	ldrh r0, [r0]
	mov sl, r0
	ldr r0, _08018E0C
	add r0, ip
	ldrh r0, [r0]
	mov sb, r0
	ldr r0, _08018E10
	add r0, ip
	ldrh r7, [r0]
	ldr r0, _08018E14
	add r0, ip
	ldrh r6, [r0]
	ldr r0, _08018E18
	add r0, ip
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08018E28
	movs r4, #0
	ldr r2, _08018DE0
	mov r8, r2
_08018D94:
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	lsls r2, r4, #1
	ldr r0, _08018E1C
	add r0, r8
	adds r0, r2, r0
	adds r1, r3, #0
	add r1, sb
	strh r1, [r0]
	ldr r0, _08018E20
	add r0, r8
	adds r0, r2, r0
	subs r1, r7, r3
	strh r1, [r0]
	ldr r0, _08018E24
	adds r2, r2, r0
	adds r0, r3, r6
	strh r0, [r2]
	ldr r1, _08018DF0
	ldrh r0, [r1]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x9f
	bls _08018D94
	b _08018E76
	.align 2, 0
_08018DE0: .4byte gSomeBlend
_08018DE4: .4byte 0x000146D0
_08018DE8: .4byte 0x00014810
_08018DEC: .4byte gUnknown_0202A978
_08018DF0: .4byte gUnknown_0200C3B6
_08018DF4: .4byte gGame
_08018DF8: .4byte 0x000058E5
_08018DFC: .4byte 0x0000591D
_08018E00: .4byte 0x00005955
_08018E04: .4byte 0x000067B2
_08018E08: .4byte 0x000067B4
_08018E0C: .4byte 0x000058BA
_08018E10: .4byte 0x000058F2
_08018E14: .4byte 0x0000592A
_08018E18: .4byte 0x000067C5
_08018E1C: .4byte 0x00014A90
_08018E20: .4byte 0x00014BD0
_08018E24: .4byte gUnknown_0202AD38
_08018E28:
	movs r4, #0
	ldr r2, _08018EAC
	mov r8, r2
_08018E2E:
	adds r0, r5, #0
	bl sub_08002F8C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	lsls r2, r4, #1
	ldr r0, _08018EB0
	add r0, r8
	adds r0, r2, r0
	adds r1, r3, #0
	add r1, sb
	strh r1, [r0]
	ldr r0, _08018EB4
	add r0, r8
	adds r0, r2, r0
	adds r1, r3, r7
	strh r1, [r0]
	ldr r0, _08018EB8
	adds r2, r2, r0
	adds r0, r3, r6
	strh r0, [r2]
	ldr r1, _08018EBC
	ldrh r0, [r1]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x9f
	bls _08018E2E
_08018E76:
	ldr r2, _08018EC0
	ldr r0, _08018EC4
	adds r3, r2, r0
	ldr r1, _08018EC8
	adds r0, r2, r1
	ldrh r4, [r0]
	ldrb r1, [r2, #0xe]
	lsrs r1, r1, #6
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r2, _08018ECC
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, #1
	muls r0, r4, r0
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
_08018E9E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018EAC: .4byte gSomeBlend
_08018EB0: .4byte 0x00014A90
_08018EB4: .4byte 0x00014BD0
_08018EB8: .4byte gUnknown_0202AD38
_08018EBC: .4byte gUnknown_0200C3B6
_08018EC0: .4byte gGame
_08018EC4: .4byte 0x000067B2
_08018EC8: .4byte 0x000067B6
_08018ECC: .4byte 0x000058E4
	.syntax divided
