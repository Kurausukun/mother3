	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _08020388
	ldr r0, _0802038C
	adds r6, r4, r0
	ldrb r0, [r6]
	movs r1, #8
	orrs r0, r1
	strb r0, [r6]
	adds r0, r5, #0
	movs r1, #3
	bl scriptstack_peek
	ldr r2, _08020390
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #2
	bl scriptstack_peek
	ldr r2, _08020394
	adds r1, r4, r2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #1
	bl scriptstack_peek
	ldr r1, _08020398
	adds r4, r4, r1
	strh r0, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl scriptstack_peek
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #4
	ldrb r2, [r6]
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020388: .4byte gGame
_0802038C: .4byte 0x00008495
_08020390: .4byte 0x000083C8
_08020394: .4byte 0x000083C4
_08020398: .4byte 0x000083C6
	.syntax divided
