	.syntax unified
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #1
	bne _08071902
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _0807190C
_08071902:
	adds r2, r0, #0
	adds r2, #0x40
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
_0807190C:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
