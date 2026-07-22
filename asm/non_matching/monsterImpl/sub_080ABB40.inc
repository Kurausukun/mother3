	.syntax unified
sub_080ABB40:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080ABB78
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #2
	cmp r0, #0x14
	blt _080ABB70
	movs r1, #0x2b
	cmp r0, #0x23
	blt _080ABB70
	movs r1, #0x8c
	lsls r1, r1, #2
	cmp r0, #0x28
	blt _080ABB70
	ldr r1, _080ABB74
	cmp r0, #0x41
	bge _080ABB70
	subs r1, #1
_080ABB70:
	adds r0, r1, #0
	b _080ABB92
	.align 2, 0
_080ABB74: .4byte 0x0000012B
_080ABB78:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080ABBA0
	cmp r1, #0x3c
	blt _080ABB92
	movs r0, #0x8c
	lsls r0, r0, #2
	cmp r1, #0x50
	bge _080ABB92
	movs r0, #0x2b
_080ABB92:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080ABBA0: .4byte 0x00000113
	.syntax divided
