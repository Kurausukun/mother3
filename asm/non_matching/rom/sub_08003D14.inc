	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	ldr r1, _08003D30
	lsrs r0, r0, #0xf
	adds r1, r0, r1
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08003D2A
	movs r0, #1
	rsbs r0, r0, #0
_08003D2A:
	pop {r1}
	bx r1
	.align 2, 0
_08003D30: .4byte gUnknown_02015EC0
	.syntax divided
