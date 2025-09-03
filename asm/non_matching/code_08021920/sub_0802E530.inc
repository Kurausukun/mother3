	.syntax unified
sub_0802E530:
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r1, #2]
	movs r0, #2
	ldrsh r1, [r1, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802E570
	ldr r0, _0802E568
	ldr r1, _0802E56C
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_0801B498
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r2, [r1]
	subs r2, #5
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x14]
	adds r0, r4, #0
	adds r0, #0x96
	strh r1, [r0]
	b _0802E576
	.align 2, 0
_0802E568: .4byte gGame
_0802E56C: .4byte 0x000067AC
_0802E570:
	adds r0, r4, #0
	adds r0, #0x96
	strh r2, [r0]
_0802E576:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
