	.syntax unified
sub_0803E304:
	push {r4, r5, lr}
	ldr r5, _0803E338
	movs r4, #0
	strh r4, [r5]
	ldr r2, _0803E33C
	ldrh r1, [r2]
	ldr r0, _0803E340
	ands r0, r1
	strh r0, [r2]
	ldr r2, _0803E344
	ldrh r1, [r2]
	ldr r0, _0803E348
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0803E34C
	ldr r1, _0803E350
	movs r2, #0x38
	bl memcpy
	ldr r0, _0803E354
	strh r4, [r0]
	movs r0, #1
	strh r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803E338: .4byte 0x04000208
_0803E33C: .4byte 0x04000200
_0803E340: .4byte 0x0000FFFC
_0803E344: .4byte 0x04000004
_0803E348: .4byte 0x0000FFE7
_0803E34C: .4byte gIntrHandlers
_0803E350: .4byte gUnknown_080C5FA0
_0803E354: .4byte gUnknown_03004B00
	.syntax divided
