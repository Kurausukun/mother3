	.syntax unified
	push {r4, lr}
	ldr r1, _0806B068
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806B05E
	ldr r4, _0806B06C
	movs r0, #0x88
	lsls r0, r0, #1
	bl __builtin_new
	bl sub_0806B0C4
	str r0, [r4]
_0806B05E:
	ldr r0, _0806B06C
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806B068: .4byte gUnknown_02001CEC
_0806B06C: .4byte gUnknown_02001CF0
	.syntax divided
