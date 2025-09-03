	.syntax unified
sub_0800A07C:
	push {lr}
	ldr r0, _0800A08C
	movs r1, #0xcc
	lsls r1, r1, #1
	bl memclear
	pop {r0}
	bx r0
	.align 2, 0
_0800A08C: .4byte gUnknown_0201B7A0
	.syntax divided
