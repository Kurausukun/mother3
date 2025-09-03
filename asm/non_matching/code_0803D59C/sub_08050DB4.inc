	.syntax unified
sub_08050DB4:
	ldr r1, _08050DD0
	ldr r2, _08050DD4
	adds r0, r1, r2
	ldrh r2, [r0]
	movs r2, #0
	strh r2, [r0]
	ldr r3, _08050DD8
	adds r0, r1, r3
	ldrh r3, [r0]
	strh r2, [r0]
	ldr r0, _08050DDC
	adds r1, r1, r0
	strh r2, [r1]
	bx lr
	.align 2, 0
_08050DD0: .4byte gSomeBlend
_08050DD4: .4byte 0x00002C98
_08050DD8: .4byte 0x00002C9A
_08050DDC: .4byte 0x00004530
	.syntax divided
