	.syntax unified
sub_0803DE08:
	push {lr}
	ldr r1, _0803DE30
	movs r0, #6
	strb r0, [r1]
	bl sub_0804C4B4
	bl sub_08049DC4
	bl sub_08046D90
	bl sub_0803DE38
	ldr r0, _0803DE34
	ldrb r0, [r0]
	cmp r0, #4
	bne _0803DE2C
	bl sub_0805614C
_0803DE2C:
	pop {r0}
	bx r0
	.align 2, 0
_0803DE30: .4byte gUnknown_0200F920
_0803DE34: .4byte gUnknown_020051E8
	.syntax divided
