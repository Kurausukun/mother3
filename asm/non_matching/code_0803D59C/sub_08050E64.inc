	.syntax unified
sub_08050E64:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08050E88
	ldr r1, _08050E8C
	adds r3, r2, r1
	ldr r1, _08050E90
	adds r2, r2, r1
	ldrh r1, [r2]
	lsls r1, r1, #3
	ldr r3, [r3]
	adds r3, r3, r1
	ldrh r1, [r2]
	adds r0, r0, r1
	ldrh r1, [r2]
	strh r0, [r2]
	adds r0, r3, #0
	bx lr
	.align 2, 0
_08050E88: .4byte gSomeBlend
_08050E8C: .4byte 0x0000C620
_08050E90: .4byte 0x00002C98
	.syntax divided
