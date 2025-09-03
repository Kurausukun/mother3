	.syntax unified
	push {r4, r5, lr}
	ldr r3, _080260FC
	movs r2, #1
	movs r1, #1
	strb r1, [r3]
	ldr r1, _08026100
	adds r4, r3, r1
	ldrb r1, [r4]
	orrs r1, r2
	ldr r5, _08026104
	adds r2, r3, r5
	strh r0, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r4]
	ldr r0, _08026108
	adds r3, r3, r0
	ldrb r1, [r3]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080260FC: .4byte gGame
_08026100: .4byte 0x00008494
_08026104: .4byte 0x0000845A
_08026108: .4byte 0x00008496
	.syntax divided
