	.syntax unified
sub_0806E488:
	push {r4, lr}
	ldr r1, _0806E4B0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806E4A4
	ldr r4, _0806E4B4
	movs r0, #0xa4
	bl __builtin_new
	bl sub_0806E50C
	str r0, [r4]
_0806E4A4:
	ldr r0, _0806E4B4
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806E4B0: .4byte gUnknown_02001E64
_0806E4B4: .4byte gUnknown_02001E68
	.syntax divided
