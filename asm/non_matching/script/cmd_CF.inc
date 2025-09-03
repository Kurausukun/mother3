	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r1, #4
	bl scriptstack_peek
	mov r8, r0
	adds r0, r4, #0
	movs r1, #3
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r4, #0
	movs r1, #2
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r5, r7, #0
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	mov sl, r0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	adds r6, r0, #0
	mov r0, r8
	bl get_obj
	adds r4, r0, #0
	cmp r4, #0
	beq _08020BFE
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r1, sb
	bl sub_080334D0
	cmp r7, #1
	bne _08020BCA
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #4
	b _08020BD6
_08020BCA:
	cmp r5, #2
	bne _08020BDA
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #2
_08020BD6:
	orrs r1, r2
	strb r1, [r0]
_08020BDA:
	adds r0, r4, #0
	adds r0, #0x46
	mov r1, sl
	strh r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq _08020BFE
	adds r2, r4, #0
	adds r2, #0x49
	movs r0, #3
	ands r6, r0
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2]
_08020BFE:
	movs r0, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
