	.syntax unified
sub_0801B3A4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0801B3B0
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0801B3B0: .4byte gMapMusicTable
	.syntax divided
