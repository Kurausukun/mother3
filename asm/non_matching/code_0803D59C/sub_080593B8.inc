	.syntax unified
sub_080593B8:
	push {r4, lr}
	ldrb r2, [r0, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #8]
	movs r3, #0
	strh r3, [r0]
	strh r3, [r0, #4]
	ldr r1, _080593F0
	strh r1, [r0, #6]
	ldr r1, _080593F4
	strh r1, [r0, #2]
	ldr r2, _080593F8
	ldr r0, _080593FC
	adds r4, r2, r0
	ldrb r0, [r4]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	ldr r0, _08059400
	adds r2, r2, r0
	strb r3, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080593F0: .4byte 0x0000FF60
_080593F4: .4byte 0x00003890
_080593F8: .4byte gSomeBlend
_080593FC: .4byte 0x0000328C
_08059400: .4byte 0x00003292
	.syntax divided
