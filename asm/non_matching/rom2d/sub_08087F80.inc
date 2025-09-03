	.syntax unified
	push {lr}
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, _08087F90
	cmp r1, r0
	bne _08087F94
	ldrh r0, [r2, #4]
	b _08087F96
	.align 2, 0
_08087F90: .4byte 0x20206762
_08087F94:
	movs r0, #1
_08087F96:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
