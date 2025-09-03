	.syntax unified
	push {lr}
	adds r2, r0, #0
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0802F320
	adds r2, #0xbe
	ldrh r1, [r2]
	ldr r0, _0802F31C
	ands r0, r1
	b _0802F330
	.align 2, 0
_0802F31C: .4byte 0xFFFFF87F
_0802F320:
	adds r2, #0xbe
	ldrh r1, [r2]
	ldr r0, _0802F340
	ands r0, r1
	movs r3, #0x90
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
_0802F330:
	strh r0, [r2]
	ldr r1, _0802F344
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_0802F340: .4byte 0xFFFFF87F
_0802F344: .4byte gObjectContinue
	.syntax divided
