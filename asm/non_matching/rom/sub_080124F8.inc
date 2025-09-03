	.syntax unified
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r4, _08012518
	ldr r1, _0801251C
	adds r0, r4, r1
	ldrh r0, [r0]
	bl sub_0801B53C
	adds r2, r0, #0
	ldr r0, _08012520
	adds r6, r4, r0
	movs r7, #0
	ldrb r0, [r2, #3]
	b _08012580
	.align 2, 0
_08012518: .4byte gGame
_0801251C: .4byte 0x000067AC
_08012520: .4byte 0x00006350
_08012524:
	adds r5, r2, #0
	ldrb r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6, #8]
	str r5, [r6]
	adds r5, #8
	str r5, [r6, #4]
	ldrb r0, [r2, #4]
	lsls r0, r0, #2
	adds r5, r5, r0
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _08012570
	mov r4, sp
	adds r4, #2
	ldrb r0, [r2, #3]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strh r0, [r4]
	ldrb r0, [r2, #3]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08012564
	adds r0, r2, #4
	movs r1, #0
	bl sub_080263A4
	ldrh r1, [r4]
	orrs r1, r0
	strh r1, [r4]
_08012564:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08012570
	adds r0, r7, #0
	bl sub_08012C48
_08012570:
	adds r2, r5, #0
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r6, #0xc
	cmp r7, #0x18
	bhi _08012586
	ldrb r0, [r5, #3]
_08012580:
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08012524
_08012586:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
