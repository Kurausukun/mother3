	.syntax unified
sub_08057F98:
	ldr r3, _08057FA8
	ldrb r1, [r3, #0x10]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3, #0x10]
	ldr r1, _08057FAC
	strb r0, [r1]
	bx lr
	.align 2, 0
_08057FA8: .4byte gUnknown_02015DA0
_08057FAC: .4byte gUnknown_02005084
	.syntax divided
