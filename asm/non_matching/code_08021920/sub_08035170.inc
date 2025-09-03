	.syntax unified
sub_08035170:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	add r1, sp, #4
	strh r0, [r1]
	adds r0, r1, #0
	ldrh r0, [r0]
	cmp r0, #0
	beq _080351D4
	movs r0, #0
	bl get_obj_direct
	adds r6, r0, #0
	ldr r4, _080351D8
	movs r5, #0
	movs r7, #0x1f
	movs r0, #0x20
	rsbs r0, r0, #0
	mov r8, r0
	ldr r3, _080351DC
_0803519E:
	adds r0, r6, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	movs r1, #7
	ands r1, r0
	ands r1, r7
	ldrb r2, [r4, #4]
	mov r0, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	ldrh r1, [r4, #4]
	adds r0, r3, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r4, #4]
	ldrh r0, [r6]
	strh r0, [r4]
	ldrh r0, [r6, #2]
	strh r0, [r4, #2]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #8
	cmp r5, #0x9f
	bls _0803519E
_080351D4:
	movs r5, #0
	b _08035260
	.align 2, 0
_080351D8: .4byte gUnknown_0200D908
_080351DC: .4byte 0xFFFFC01F
_080351E0:
	mov r0, sl
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _080351FA
	ldr r1, [r6, #0x40]
	ldrh r0, [r6]
	strh r0, [r1]
	ldr r1, [r6, #0x40]
	ldrh r0, [r6, #2]
	strh r0, [r1, #2]
	b _08035286
_080351FA:
	ldr r4, [r6, #0x40]
	movs r5, #0
	movs r7, #0
	movs r1, #0x1f
	mov sb, r1
	movs r2, #0x20
	rsbs r2, r2, #0
	mov r8, r2
_0803520A:
	movs r0, #0x14
	str r0, [sp]
	adds r0, r6, #0
	mov r1, sl
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_08002E8C
	cmp r5, #0
	beq _08035246
	ldr r1, [r4]
	ldr r0, [r5]
	cmp r1, r0
	beq _08035232
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803677C
	mov r1, sb
	b _0803523A
_08035232:
	ldrb r1, [r5, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	mov r0, sb
_0803523A:
	ands r1, r0
	ldrb r0, [r4, #4]
	mov r2, r8
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
_08035246:
	adds r5, r4, #0
	adds r0, r5, #0
	bl sub_08034FE4
	adds r4, r0, #0
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x13
	bls _0803520A
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
_08035260:
	cmp r5, #3
	bhi _08035286
	adds r0, r5, #0
	bl get_obj_direct
	adds r6, r0, #0
	adds r4, r5, #1
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	mov sl, r0
	adds r0, r6, #0
	adds r0, #0xbc
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	str r4, [sp, #8]
	cmp r0, #0
	bne _080351E0
_08035286:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
