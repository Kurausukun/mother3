	.syntax unified
cmd_play_anim_above:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r1, #2
	bl scriptstack_peek
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r7, r6, #0
	adds r0, r5, #0
	bl get_obj
	adds r4, r0, #0
	cmp r4, #0
	beq _0802041A
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r1, r8
	bl sub_080334D0
	cmp r6, #1
	bne _0802040A
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #4
	b _08020416
_0802040A:
	cmp r7, #2
	bne _0802041A
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r1, [r0]
	movs r2, #2
_08020416:
	orrs r1, r2
	strb r1, [r0]
_0802041A:
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
