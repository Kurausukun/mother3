	.syntax unified
	push {r4, lr}
	ldr r4, _080400C0
	ldr r1, _080400C4
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r1, _080400C8
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	ldr r2, _080400CC
	adds r1, r4, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	bl sub_080400D4
	ldr r0, _080400D0
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080400C0: .4byte gSomeBlend
_080400C4: .4byte 0x0000C5C1
_080400C8: .4byte gUnknown_080C714C
_080400CC: .4byte 0x0000C5C3
_080400D0: .4byte 0x00002C90
	.syntax divided
