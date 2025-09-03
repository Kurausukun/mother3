	.syntax unified
	push {lr}
	movs r0, #0xfe
	bl sub_08036D60
	ldr r1, _0803FCBC
	movs r2, #0x80
	lsls r2, r2, #5
	bl sub_08001B18
	movs r0, #0xa6
	bl sub_08036D60
	ldr r1, _0803FCC0
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	pop {r0}
	bx r0
	.align 2, 0
_0803FCBC: .4byte 0x06015C00
_0803FCC0: .4byte 0x06016C00
	.syntax divided
