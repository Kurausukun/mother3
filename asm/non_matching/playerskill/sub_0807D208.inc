	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0807D240
	str r0, [r4, #0x1c]
	ldr r1, _0807D244
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x90
	movs r1, #2
	bl sub_0806D4B0
	adds r0, r4, #0
	adds r0, #0x34
	ldr r1, _0807D248
	str r1, [r0, #0x1c]
	movs r1, #2
	bl sub_0807113C
	adds r0, r4, #0
	adds r1, r5, #0
	bl _._4Base
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807D240: .4byte vt_09F82648
_0807D244: .4byte gUnknown_020021B8
_0807D248: .4byte vt_09F826C8
	.syntax divided
