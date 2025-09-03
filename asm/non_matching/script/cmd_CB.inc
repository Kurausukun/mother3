	.syntax unified
cmd_CB:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, r1, #0
	cmp r5, #0
	bne _080211DC
	ldr r2, _080211D4
	ldr r0, _080211D8
	adds r2, r2, r0
	movs r0, #1
	ands r1, r0
	ldrb r3, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	b _080211F8
	.align 2, 0
_080211D4: .4byte gGame
_080211D8: .4byte 0x00008496
_080211DC:
	cmp r5, #1
	bne _080211F8
	ldr r1, _08021200
	ldr r0, _08021204
	adds r1, r1, r0
	movs r0, #1
	ands r3, r0
	lsls r3, r3, #1
	ldrb r2, [r1]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
_080211F8:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08021200: .4byte gGame
_08021204: .4byte 0x00008496
	.syntax divided
