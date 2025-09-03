	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x88
	ldr r2, _08032AD8
	adds r0, r2, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08036E70
	adds r2, r4, #0
	adds r2, #0x90
	movs r1, #1
	strb r1, [r2]
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x58
	movs r0, #9
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032AD8: .4byte 0xFFFFFD30
	.syntax divided
