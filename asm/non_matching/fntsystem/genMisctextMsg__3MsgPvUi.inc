	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	movs r2, #0
	cmp r2, r1
	bge _0806E260
	ldrh r0, [r4]
	ldr r3, _0806E270
	cmp r0, r3
	beq _0806E260
	adds r5, r3, #0
	adds r3, r4, #0
_0806E252:
	adds r3, #2
	adds r2, #1
	cmp r2, r1
	bge _0806E260
	ldrh r0, [r3]
	cmp r0, r5
	bne _0806E252
_0806E260:
	adds r0, r6, #0
	adds r1, r4, #0
	bl __3MsgPCvUi
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0806E270: .4byte 0x0000FFFF
	.syntax divided
