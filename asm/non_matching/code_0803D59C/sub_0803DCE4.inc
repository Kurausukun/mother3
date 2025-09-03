	.syntax unified
sub_0803DCE4:
	push {lr}
	ldr r1, _0803DD10
	movs r0, #0
	strb r0, [r1]
	bl sub_0804BD84
	bl sub_08049DC4
	bl sub_08046D90
	ldr r0, _0803DD14
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803DD06
	ldr r0, _0803DD18
	bl sub_0803E738
_0803DD06:
	bl sub_0803DE38
	pop {r0}
	bx r0
	.align 2, 0
_0803DD10: .4byte gUnknown_0200F920
_0803DD14: .4byte gUnknown_02004100
_0803DD18: .4byte gUnknown_020225DC
	.syntax divided
