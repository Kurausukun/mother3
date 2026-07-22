	.syntax unified
sub_080AC678:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	bl sub_08072E38
	cmp r0, #0
	beq _080AC68A
	movs r0, #0
	b _080AC6DE
_080AC68A:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080AC69A
	movs r0, #3
	b _080AC6D8
_080AC69A:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _080AC6BA
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0xb2
	lsls r1, r1, #1
	cmp r0, #0x46
	bge _080AC6D6
	subs r1, #0x51
	b _080AC6D6
_080AC6BA:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AC6E4
	cmp r0, #0x2d
	blt _080AC6D6
	adds r1, #0x18
	cmp r0, #0x4b
	blt _080AC6D6
	movs r1, #0xd7
	cmp r0, #0x5f
	bge _080AC6D6
	adds r1, #0x47
_080AC6D6:
	adds r0, r1, #0
_080AC6D8:
	adds r1, r4, #0
	bl getMonsterSkill
_080AC6DE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC6E4: .4byte 0x00000105
	.syntax divided
