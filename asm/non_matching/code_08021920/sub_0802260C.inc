	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [sp, #0x20]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsrs r1, r1, #0xa
	ldr r0, _0802268C
	adds r6, r1, r0
	cmp r2, #0
	beq _08022640
	adds r0, r5, #0
	adds r1, r2, #0
	bl sub_0800255C
	adds r5, r0, #0
	cmp r5, #0
	beq _0802267E
_08022640:
	adds r0, r5, #0
	bl sub_080025D8
	adds r4, r0, #0
	subs r4, r4, r5
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08001B18
	lsrs r4, r4, #0x11
	lsls r4, r4, #1
	adds r4, r4, r6
	ldr r0, _08022690
	adds r1, r0, #0
	strh r1, [r4]
	ldrh r0, [r6]
	cmp r0, r1
	beq _0802267E
	movs r3, #1
	rsbs r3, r3, #0
	movs r0, #0xf
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r7, #0
	bl draw_ui_text
_0802267E:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802268C: .4byte gUnknown_0201955E
_08022690: .4byte 0x0000FFFF
	.syntax divided
