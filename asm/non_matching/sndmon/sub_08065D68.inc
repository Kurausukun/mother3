	.syntax unified
	push {r4, lr}
	ldr r1, _08065D90
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _08065D84
	ldr r4, _08065D94
	movs r0, #0x38
	bl __builtin_new
	bl sub_08065DEC
	str r0, [r4]
_08065D84:
	ldr r0, _08065D94
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08065D90: .4byte gUnknown_020040EC
_08065D94: .4byte gUnknown_020040F0
	.syntax divided
