	.syntax unified
sub_08002950:
	lsls r0, r0, #0x10
	ldr r3, _0800296C
	lsrs r0, r0, #0xf
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r3, r3, r2
	adds r2, r0, r3
	strb r1, [r2]
	adds r0, #1
	adds r0, r0, r3
	lsrs r1, r1, #8
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800296C: .4byte gSave
	.syntax divided
