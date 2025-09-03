	.syntax unified
	ldr r3, _0805AE5C
	ldrb r1, [r3, #0xc]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3, #0xc]
	ldr r1, _0805AE60
	strb r0, [r1]
	bx lr
	.align 2, 0
_0805AE5C: .4byte gUnknown_02015E00
_0805AE60: .4byte gUnknown_020051E0
	.syntax divided
