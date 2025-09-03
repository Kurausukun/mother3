	.syntax unified
sub_0805931C:
	push {r4, lr}
	ldr r1, _08059348
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0805934C
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r4, #0
	bl memclear
	ldr r1, _08059350
	adds r0, r4, r1
	bl sub_08059358
	ldr r0, _08059354
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_080593B8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08059348: .4byte gUnknown_02015DC0
_0805934C: .4byte gUnknown_020192BC
_08059350: .4byte 0xFFFFFA1C
_08059354: .4byte 0xFFFFFA84
	.syntax divided
