	.syntax unified
sub_08007FC8:
	push {r4, lr}
	ldr r4, _08007FF8
	ldr r1, _08007FFC
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r1, _08008000
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	ldr r2, _08008004
	adds r1, r4, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	bl sub_0800800C
	ldr r0, _08008008
	adds r4, r4, r0
	ldrh r0, [r4]
	movs r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007FF8: .4byte gSomeBlend
_08007FFC: .4byte 0x000121C0
_08008000: .4byte gUnknown_080C2A90
_08008004: .4byte 0x000121C2
_08008008: .4byte 0x00002C90
	.syntax divided
