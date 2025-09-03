	.syntax unified
	push {lr}
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, _0806D514
	cmp r1, r0
	bne _0806D518
	ldrh r0, [r2, #4]
	b _0806D51A
	.align 2, 0
_0806D514: .4byte 0x206C6363
_0806D518:
	movs r0, #1
_0806D51A:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
