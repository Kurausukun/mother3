	.syntax unified
	push {r4, lr}
	ldr r1, _0806FDA8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #1
	bne _0806FD9C
	ldr r4, _0806FDAC
	movs r0, #0x24
	bl __builtin_new
	bl sub_0806FE04
	str r0, [r4]
_0806FD9C:
	ldr r0, _0806FDAC
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0806FDA8: .4byte gUnknown_02001F20
_0806FDAC: .4byte gUnknown_02001F24
	.syntax divided
