	.syntax unified
	push {lr}
	bl sub_08000D54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0805BB2C
	cmp r0, #1
	beq _0805BB26
	ldr r1, _0805BB30
_0805BB26:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805BB2C: .4byte gUnknown_080EE87F
_0805BB30: .4byte gUnknown_080EE81F
	.syntax divided
