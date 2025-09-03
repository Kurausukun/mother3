	.syntax unified
	push {lr}
	ldr r0, _0803FC8C
	movs r1, #0x19
	bl sub_0800289C
	ldr r1, _0803FC90
	movs r2, #0x80
	lsls r2, r2, #7
	bl sub_08001A14
	pop {r0}
	bx r0
	.align 2, 0
_0803FC8C: .4byte gMenuData
_0803FC90: .4byte 0x06013000
	.syntax divided
