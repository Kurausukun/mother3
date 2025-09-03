	.syntax unified
sub_080595D8:
	push {lr}
	adds r2, r0, #0
	adds r0, #0x64
	ldrb r0, [r0]
	ldr r1, [r2, #0x60]
	ldr r0, _08059604
	cmp r1, r0
	bls _080595FE
	adds r3, r2, #0
	adds r3, #0x65
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #0
	str r0, [r2, #0x60]
_080595FE:
	pop {r0}
	bx r0
	.align 2, 0
_08059604: .4byte 0x000001DF
	.syntax divided
