	.syntax unified
sub_0806CBE0:
	push {r4, lr}
	ldr r1, _0806CC08
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806CBFC
	ldr r4, _0806CC0C
	movs r0, #0x4c
	bl __builtin_new
	bl __6KeyPad
	str r0, [r4]
_0806CBFC:
	ldr r0, _0806CC0C
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806CC08: .4byte gUnknown_02001E2C
_0806CC0C: .4byte gUnknown_02001E30
	.syntax divided
