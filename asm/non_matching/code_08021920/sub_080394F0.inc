	.syntax unified
	push {r4, lr}
	bl sub_0800A07C
	ldr r3, _08039524
	ldr r0, _08039528
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #3
	bhi _0803951C
	ldr r0, _0803952C
	ldrb r1, [r1]
	lsls r2, r1, #2
	adds r2, r2, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r4, _08039530
	adds r1, r3, r4
	adds r0, r0, r1
	ldr r1, [r2]
	bl _call_via_r1
_0803951C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08039524: .4byte gSomeBlend
_08039528: .4byte 0x00003530
_0803952C: .4byte gUnknown_08D2E168
_08039530: .4byte 0x00002CB0
	.syntax divided
