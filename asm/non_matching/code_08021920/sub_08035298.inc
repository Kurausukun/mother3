	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	ldr r0, _080352F4
	ldr r1, _080352F8
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl get_obj_direct
	adds r7, r0, #0
	ldr r4, [r7, #0x40]
	movs r6, #0
	movs r5, #0
	movs r2, #0x1f
	mov sl, r2
	movs r0, #0x20
	rsbs r0, r0, #0
	mov sb, r0
_080352CA:
	movs r0, #0x14
	str r0, [sp]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08002E8C
	cmp r6, #0
	beq _08035310
	ldr r1, [r4]
	ldr r0, [r6]
	cmp r1, r0
	beq _080352FC
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0803677C
	mov r1, sl
	b _08035304
	.align 2, 0
_080352F4: .4byte gGame
_080352F8: .4byte 0x00008299
_080352FC:
	ldrb r1, [r6, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	mov r0, sl
_08035304:
	ands r1, r0
	ldrb r0, [r4, #4]
	mov r2, sb
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
_08035310:
	adds r6, r4, #0
	adds r0, r6, #0
	bl sub_08034FE4
	adds r4, r0, #0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _080352CA
	ldr r4, _08035378
	ldr r0, _0803537C
	adds r4, r4, r0
	ldrb r0, [r4]
	bl get_obj_direct
	adds r5, r0, #0
	ldrb r0, [r4]
	bl sub_08035138
	adds r4, r0, #0
	ldrb r1, [r6, #4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	ldrb r2, [r4, #4]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	ldrh r1, [r4, #4]
	ldr r0, _08035380
	ands r0, r1
	strh r0, [r4, #4]
	mov r1, r8
	ldrh r0, [r1]
	strh r0, [r4]
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	ldrh r0, [r1]
	strh r0, [r5]
	ldrh r0, [r1, #2]
	strh r0, [r5, #2]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035378: .4byte gGame
_0803537C: .4byte 0x00008299
_08035380: .4byte 0xFFFFC01F
	.syntax divided
