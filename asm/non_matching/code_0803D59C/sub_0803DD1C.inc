	.syntax unified
sub_0803DD1C:
	push {lr}
	ldr r1, _0803DD38
	movs r0, #1
	strb r0, [r1]
	bl sub_0804C1E8
	bl sub_08049DC4
	bl sub_08046D90
	bl sub_0803DE38
	pop {r0}
	bx r0
	.align 2, 0
_0803DD38: .4byte gUnknown_0200F920
	.syntax divided
