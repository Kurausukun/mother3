	.syntax unified
sub_0806FB78:
	push {r4, lr}
	ldr r1, _0806FBA0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806FB94
	ldr r4, _0806FBA4
	movs r0, #0x40
	bl __builtin_new
	bl sub_0806FBFC
	str r0, [r4]
_0806FB94:
	ldr r0, _0806FBA4
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806FBA0: .4byte gUnknown_02001F0C
_0806FBA4: .4byte gUnknown_02001F10
	.syntax divided
