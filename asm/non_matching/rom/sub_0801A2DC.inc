	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sp
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801A338
	cmp r5, #0
	bne _0801A318
	ldr r1, _0801A310
	ldrb r0, [r1, #0xf]
	lsls r0, r0, #0x1f
	adds r6, r1, #0
	movs r4, #0
	cmp r0, #0
	beq _0801A352
	ldr r1, _0801A314
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	adds r4, r5, #0
	b _0801A352
	.align 2, 0
_0801A310: .4byte gGame
_0801A314: .4byte 0x000058E5
_0801A318:
	ldr r3, _0801A330
	lsls r4, r5, #3
	subs r0, r4, r5
	lsls r0, r0, #3
	adds r0, r0, r3
	ldr r1, _0801A334
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	b _0801A350
	.align 2, 0
_0801A330: .4byte gGame
_0801A334: .4byte 0x000058E5
_0801A338:
	ldr r3, _0801A38C
	lsls r4, r5, #3
	subs r1, r4, r5
	lsls r1, r1, #3
	adds r1, r1, r3
	ldr r0, _0801A390
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
_0801A350:
	adds r6, r3, #0
_0801A352:
	subs r0, r4, r5
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r1, _0801A390
	adds r4, r0, r1
	ldrb r3, [r4]
	lsls r0, r3, #0x1f
	cmp r0, #0
	beq _0801A394
	lsls r2, r5, #2
	adds r2, r2, r6
	ldrb r0, [r2, #0x1d]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	lsls r0, r0, #1
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r4]
	ldrb r2, [r2, #0x1d]
	movs r0, #4
	ands r0, r2
	movs r2, #5
	rsbs r2, r2, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
	b _0801A3A2
	.align 2, 0
_0801A38C: .4byte gGame
_0801A390: .4byte 0x000058E5
_0801A394:
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r3
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r4]
_0801A3A2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
