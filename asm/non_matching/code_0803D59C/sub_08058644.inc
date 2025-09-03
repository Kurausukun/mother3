	.syntax unified
	push {r4, r5, lr}
	ldr r5, _08058678
	movs r4, #0
	strh r4, [r5]
	ldr r2, _0805867C
	ldrh r1, [r2]
	ldr r0, _08058680
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08058684
	ldrh r1, [r2]
	ldr r0, _08058688
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0805868C
	ldr r1, _08058690
	movs r2, #0x38
	bl memcpy
	ldr r0, _08058694
	strh r4, [r0]
	movs r0, #1
	strh r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058678: .4byte 0x04000208
_0805867C: .4byte 0x04000200
_08058680: .4byte 0x0000FFFC
_08058684: .4byte 0x04000004
_08058688: .4byte 0x0000FFE7
_0805868C: .4byte gIntrHandlers
_08058690: .4byte gUnknown_080C7668
_08058694: .4byte gUnknown_03004B00
	.syntax divided
