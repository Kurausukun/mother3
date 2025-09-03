	.syntax unified
	push {r4, lr}
	ldr r3, _08039EB8
	ldr r0, _08039EBC
	adds r1, r3, r0
	ldrh r0, [r1]
	cmp r0, #5
	bhi _08039EB0
	ldr r0, _08039EC0
	ldrh r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r4, _08039EC4
	adds r1, r3, r4
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_08039EB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039EB8: .4byte gSomeBlend
_08039EBC: .4byte 0x00003612
_08039EC0: .4byte gUnknown_08D2E178
_08039EC4: .4byte 0x000035BC
	.syntax divided
