	.syntax unified
checkSoftReset:
	push {lr}
	adds r1, r0, #0
	ldr r0, _08059824
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805981E
	adds r0, r1, #0
	bl CheckSoftResetKeys
_0805981E:
	pop {r0}
	bx r0
	.align 2, 0
_08059824: .4byte gUnknown_02015DC0
	.syntax divided
