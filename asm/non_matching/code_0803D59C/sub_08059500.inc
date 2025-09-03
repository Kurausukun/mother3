	.syntax unified
sub_08059500:
	push {r4, lr}
	bl sub_0805980C
	ldr r0, _08059538
	ldrb r0, [r0]
	cmp r0, #0
	bne _08059530
	ldr r4, _0805953C
	ldrh r1, [r4, #8]
	movs r2, #0xc8
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r4, #8]
	orrs r0, r1
	strh r0, [r4, #8]
	ldr r1, _08059540
	adds r0, r4, r1
	bl sub_08059548
	ldr r2, _08059544
	adds r4, r4, r2
	adds r0, r4, #0
	bl sub_080596A0
_08059530:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08059538: .4byte gUnknown_02015DC0
_0805953C: .4byte gSomeBlend
_08059540: .4byte 0x00002CB0
_08059544: .4byte 0x00002D18
	.syntax divided
