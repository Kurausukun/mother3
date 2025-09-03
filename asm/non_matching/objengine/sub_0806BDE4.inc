	.syntax unified
	push {r4, lr}
	ldr r1, _0806BE0C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806BE02
	ldr r4, _0806BE10
	movs r0, #0xb5
	lsls r0, r0, #4
	bl __builtin_new
	bl sub_0806BE68
	str r0, [r4]
_0806BE02:
	ldr r0, _0806BE10
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806BE0C: .4byte gUnknown_02001D00
_0806BE10: .4byte gUnknown_02001D04
	.syntax divided
