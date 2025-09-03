	.syntax unified
sub_080487A0:
	push {r4, r5, r6, lr}
	ldr r5, _080487C4
	ldr r3, _080487C8
	adds r6, r5, r3
	ldrb r3, [r6]
	movs r4, #1
	orrs r3, r4
	strb r3, [r6]
	ldr r4, _080487CC
	adds r3, r5, r4
	strh r0, [r3]
	ldr r0, _080487D0
	adds r5, r5, r0
	strh r1, [r5]
	strh r2, [r5, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080487C4: .4byte gSomeBlend
_080487C8: .4byte 0x000041E6
_080487CC: .4byte 0x000041E4
_080487D0: .4byte 0x000041E0
	.syntax divided
