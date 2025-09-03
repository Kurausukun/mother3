	.syntax unified
	push {r4, lr}
	ldr r3, _0805741C
	ldrh r1, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	ldrh r2, [r3, #8]
	movs r2, #0
	orrs r0, r1
	strh r0, [r3, #8]
	ldr r4, _08057420
	adds r0, r3, r4
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08057416
	ldrh r0, [r3, #8]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r1, r4, #0
	orrs r0, r1
	ldrh r1, [r3, #8]
	orrs r0, r2
	strh r0, [r3, #8]
_08057416:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805741C: .4byte gSomeBlend
_08057420: .4byte 0x00002CF0
	.syntax divided
