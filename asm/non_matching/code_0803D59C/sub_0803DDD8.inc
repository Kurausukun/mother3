	.syntax unified
	push {lr}
	ldr r2, _0803DE00
	ldr r0, _0803DE04
	ldrb r0, [r0]
	movs r1, #5
	cmp r0, #0xb
	bne _0803DDE8
	movs r1, #4
_0803DDE8:
	strb r1, [r2]
	bl sub_0804C408
	bl sub_08049DC4
	bl sub_08046D90
	bl sub_0803DE38
	pop {r0}
	bx r0
	.align 2, 0
_0803DE00: .4byte gUnknown_0200F920
_0803DE04: .4byte gUnknown_02004100
	.syntax divided
