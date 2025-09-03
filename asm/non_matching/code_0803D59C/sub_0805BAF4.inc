	.syntax unified
	push {lr}
	bl sub_08000D54
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0805BB0C
	cmp r0, #1
	beq _0805BB06
	ldr r1, _0805BB10
_0805BB06:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0805BB0C: .4byte gUnknown_080EE85F
_0805BB10: .4byte gUnknown_080EE7FF
	.syntax divided
