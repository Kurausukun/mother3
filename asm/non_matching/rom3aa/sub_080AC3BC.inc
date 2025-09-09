	.syntax unified
sub_080AC3BC:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x1c]
	movs r0, #0x84
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #4]
	bl _call_via_r1
	cmp r0, #0
	bgt _080AC3DE
	movs r0, #0x81
	lsls r0, r0, #1
	b _080AC3F6
_080AC3DE:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080AC404
	cmp r1, #0x19
	blt _080AC3F6
	adds r0, #1
	cmp r1, #0x55
	bge _080AC3F6
	adds r0, #3
_080AC3F6:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC404: .4byte 0x0000015B
	.syntax divided
