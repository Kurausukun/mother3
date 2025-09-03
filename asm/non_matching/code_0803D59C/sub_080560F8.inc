	.syntax unified
sub_080560F8:
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	ldr r1, _0805613C
	adds r0, r0, r1
	ldr r2, _08056140
	ldrh r3, [r0, #2]
	ldr r4, _08056144
	adds r1, r2, r4
	strh r3, [r1]
	ldrh r3, [r0, #8]
	adds r4, #4
	adds r1, r2, r4
	strh r3, [r1]
	ldrh r3, [r0, #4]
	adds r4, #0x1c
	adds r1, r2, r4
	strh r3, [r1]
	ldrh r3, [r0, #0xa]
	adds r4, #4
	adds r1, r2, r4
	strh r3, [r1]
	ldrh r3, [r0, #6]
	adds r4, #0x1c
	adds r1, r2, r4
	strh r3, [r1]
	ldrh r0, [r0, #0xc]
	ldr r1, _08056148
	adds r2, r2, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805613C: .4byte gUnknown_0200F930
_08056140: .4byte gSomeBlend
_08056144: .4byte 0x00002E04
_08056148: .4byte 0x00002E48
	.syntax divided
