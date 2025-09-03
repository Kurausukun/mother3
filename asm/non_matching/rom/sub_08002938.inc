	.syntax unified
sub_08002938:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0800294C
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r2, r2, r3
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800294C: .4byte gSave
	.syntax divided
