	.syntax unified
sub_08005364:
	push {r4, r5, lr}
	ldr r5, _080053A8
	movs r4, #0
	strh r4, [r5]
	ldr r2, _080053AC
	ldrh r1, [r2]
	ldr r0, _080053B0
	ands r0, r1
	strh r0, [r2]
	ldr r2, _080053B4
	ldrh r1, [r2]
	ldr r0, _080053B8
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080053BC
	ldr r1, _080053C0
	movs r2, #0x38
	bl memcpy
	ldr r0, _080053C4
	ldr r1, _080053C8
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08001A14
	bl sub_08005C38
	ldr r0, _080053CC
	strh r4, [r0]
	movs r0, #1
	strh r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080053A8: .4byte 0x04000208
_080053AC: .4byte 0x04000200
_080053B0: .4byte 0x0000FFFC
_080053B4: .4byte 0x04000004
_080053B8: .4byte 0x0000FFE7
_080053BC: .4byte gIntrHandlers
_080053C0: .4byte gUnknown_080C1A58
_080053C4: .4byte sub_0803D474
_080053C8: .4byte gUnknown_03004B14
_080053CC: .4byte gUnknown_03004B0A
	.syntax divided
