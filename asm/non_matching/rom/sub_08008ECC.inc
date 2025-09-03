	.syntax unified
sub_08008ECC:
	push {r4, r5, lr}
	adds r4, r2, #0
	subs r5, r1, r0
	adds r0, r5, #0
	movs r1, #4
	bl Divide
	adds r5, r0, #0
	movs r1, #0x22
	bl sub_08002FD4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	strh r1, [r4]
	adds r0, r5, #0
	movs r1, #0x22
	bl Divide
	ldr r1, _08008F04
	ldr r2, _08008F08
	adds r1, r1, r2
	ldrb r1, [r1]
	muls r0, r1, r0
	strh r0, [r4, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008F04: .4byte gSomeBlend
_08008F08: .4byte 0x00011C89
	.syntax divided
