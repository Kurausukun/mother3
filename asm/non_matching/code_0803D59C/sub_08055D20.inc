	.syntax unified
sub_08055D20:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08055D38
	movs r2, #0x64
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, #0x21
	adds r1, r1, r3
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_08055D38: .4byte gUnknown_020050C0
	.syntax divided
