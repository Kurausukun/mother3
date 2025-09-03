	.syntax unified
sub_0805A418:
	push {r4, lr}
	ldr r4, _0805A448
	movs r0, #0
	strh r0, [r4]
	ldr r2, _0805A44C
	ldrh r1, [r2]
	ldr r0, _0805A450
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0805A454
	ldrh r1, [r2]
	ldr r0, _0805A458
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0805A45C
	ldr r1, _0805A460
	movs r2, #0x38
	bl memcpy
	movs r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A448: .4byte 0x04000208
_0805A44C: .4byte 0x04000200
_0805A450: .4byte 0x0000FFFC
_0805A454: .4byte 0x04000004
_0805A458: .4byte 0x0000FFE7
_0805A45C: .4byte gIntrHandlers
_0805A460: .4byte gUnknown_080C7DB0
	.syntax divided
