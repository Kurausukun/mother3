	.syntax unified
sub_08019BF0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r4, _08019C3C
	ldr r6, _08019C40
	adds r1, r4, r6
	strh r2, [r1]
	ldr r7, _08019C44
	adds r1, r4, r7
	strh r3, [r1]
	movs r2, #0
	mov sb, r4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	mov r6, sb
	ldr r4, _08019C48
	movs r7, #2
	mov ip, r7
	movs r0, #4
	mov sl, r0
_08019C26:
	cmp r3, r8
	beq _08019C2E
	cmp r2, r3
	bne _08019C8C
_08019C2E:
	cmp r5, #1
	beq _08019C62
	cmp r5, #1
	bgt _08019C4C
	cmp r5, #0
	beq _08019C52
	b _08019C8C
	.align 2, 0
_08019C3C: .4byte gGame
_08019C40: .4byte 0x000067B4
_08019C44: .4byte 0x000067B6
_08019C48: .4byte 0x000058E5
_08019C4C:
	cmp r5, #2
	beq _08019C76
	b _08019C8C
_08019C52:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, r0, r4
	ldrb r1, [r0]
	mov r7, ip
	b _08019C70
_08019C62:
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, r0, r4
	ldrb r1, [r0]
	mov r7, sl
_08019C70:
	orrs r1, r7
	strb r1, [r0]
	b _08019C8C
_08019C76:
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r6
	adds r1, r1, r4
	ldrb r0, [r1]
	mov r7, ip
	orrs r0, r7
	mov r7, sl
	orrs r0, r7
	strb r0, [r1]
_08019C8C:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #2
	bls _08019C26
	ldr r0, _08019CC0
	add r0, sb
	ldrh r0, [r0]
	cmp r0, #0xcb
	beq _08019CAC
	cmp r0, #0xcb
	blt _08019CCC
	cmp r0, #0xd8
	bgt _08019CCC
	cmp r0, #0xd7
	blt _08019CCC
_08019CAC:
	movs r0, #5
	bl sub_08005900
	ldr r0, _08019CC4
	ldr r1, _08019CC8
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08001A14
	b _08019CF6
	.align 2, 0
_08019CC0: .4byte 0x000067AC
_08019CC4: .4byte 0x0803D61C
_08019CC8: .4byte gUnknown_03004E14
_08019CCC:
	cmp r5, #1
	beq _08019CE8
	cmp r5, #1
	bgt _08019CDA
	cmp r5, #0
	beq _08019CE0
	b _08019CF6
_08019CDA:
	cmp r5, #2
	beq _08019CF0
	b _08019CF6
_08019CE0:
	movs r0, #3
	bl sub_08005900
	b _08019CF6
_08019CE8:
	movs r0, #4
	bl sub_08005900
	b _08019CF6
_08019CF0:
	movs r0, #2
	bl sub_08005900
_08019CF6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.syntax divided
