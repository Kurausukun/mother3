	.syntax unified
sub_0806E978:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	bl replace__3MsgRC3Msg
	adds r4, #0x49
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0806E998
	movs r0, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r4]
_0806E998:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
