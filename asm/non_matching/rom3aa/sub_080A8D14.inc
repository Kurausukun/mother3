	.syntax unified
sub_080A8D14:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080A8D44
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A8D40
	cmp r0, #0x37
	blt _080A8D60
	adds r1, #0xd
	cmp r0, #0x4b
	blt _080A8D60
	subs r1, #0x13
	cmp r0, #0x55
	bge _080A8D60
	movs r1, #0x8c
	b _080A8D60
	.align 2, 0
_080A8D40: .4byte 0x00000113
_080A8D44:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A8D70
	cmp r0, #0x19
	blt _080A8D60
	ldr r1, _080A8D74
	cmp r0, #0x41
	blt _080A8D60
	movs r1, #0x8c
	cmp r0, #0x5a
	bge _080A8D60
	adds r1, #0x94
_080A8D60:
	adds r0, r1, #0
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A8D70: .4byte 0x00000113
_080A8D74: .4byte 0x0000024B
	.syntax divided
