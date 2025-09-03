	.syntax unified
sub_0805504C:
	ldr r2, _08055064
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0xbc
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08055064: .4byte gLevelStatTable
	.syntax divided
