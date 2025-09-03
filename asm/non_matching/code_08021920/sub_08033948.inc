	.syntax unified
sub_08033948:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	movs r0, #0
	str r0, [sp, #4]
_08033964:
	ldr r0, [sp, #4]
	bl get_obj_direct
	adds r5, r0, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08033A34
	ldr r1, [sp]
	lsls r1, r1, #0x10
	mov sb, r1
	lsrs r2, r1, #0x10
	cmp r2, #7
	bls _08033A28
	adds r7, r5, #0
	adds r7, #0x8b
	ldrb r4, [r7]
	movs r0, #0x86
	adds r0, r0, r5
	mov r8, r0
	ldrb r0, [r0]
	adds r6, r5, #0
	adds r6, #0x88
	ldrh r1, [r6]
	movs r2, #4
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _080339C0
	mov r1, sb
	asrs r0, r1, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080339F2
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r1, sl
	movs r2, #4
	bl sub_080332AC
	b _08033A34
_080339C0:
	ldrb r4, [r7]
	mov r1, r8
	ldrb r0, [r1]
	ldrh r1, [r6]
	movs r2, #0
	bl sub_08035C0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bne _08033A14
	mov r1, sb
	asrs r0, r1, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080339F2
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r1, sl
	movs r2, #0
	bl sub_080332AC
	b _08033A34
_080339F2:
	movs r1, #2
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08033A34
	adds r1, r5, #0
	adds r1, #0xca
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _08033A10
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	b _08033A34
	.align 2, 0
_08033A10: .4byte gUnknown_0200E096
_08033A14:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	ldrb r1, [r7]
	movs r2, #7
	ands r2, r1
	mov r1, sl
	bl sub_080332AC
	b _08033A34
_08033A28:
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r1, sl
	bl sub_080332AC
_08033A34:
	ldr r0, [sp, #4]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, #4
	bls _08033964
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
