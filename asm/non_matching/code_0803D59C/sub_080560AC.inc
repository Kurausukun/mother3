	.syntax unified
sub_080560AC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	ldr r1, _080560E8
	adds r0, r0, r1
	ldr r2, _080560EC
	ldr r3, _080560F0
	adds r1, r2, r3
	ldrh r1, [r1]
	strh r1, [r0, #2]
	adds r3, #4
	adds r1, r2, r3
	ldrh r1, [r1]
	strh r1, [r0, #8]
	adds r3, #0x1c
	adds r1, r2, r3
	ldrh r1, [r1]
	strh r1, [r0, #4]
	adds r3, #4
	adds r1, r2, r3
	ldrh r1, [r1]
	strh r1, [r0, #0xa]
	adds r3, #0x1c
	adds r1, r2, r3
	ldrh r1, [r1]
	strh r1, [r0, #6]
	ldr r1, _080560F4
	adds r2, r2, r1
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080560E8: .4byte gUnknown_0200F930
_080560EC: .4byte gSomeBlend
_080560F0: .4byte 0x00002E04
_080560F4: .4byte 0x00002E48
	.syntax divided
