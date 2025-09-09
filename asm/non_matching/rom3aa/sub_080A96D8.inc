	.syntax unified
sub_080A96D8:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080A9708
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	adds r1, r0, #0
	ldr r0, _080A9700
	cmp r1, #0xf
	blt _080A971A
	movs r0, #0xc3
	cmp r1, #0x50
	bge _080A971A
	ldr r0, _080A9704
	b _080A971A
	.align 2, 0
_080A9700: .4byte 0x00000113
_080A9704: .4byte 0x000001D9
_080A9708:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A9728
	cmp r0, #0x19
	bge _080A9718
	subs r1, #0xc6
_080A9718:
	adds r0, r1, #0
_080A971A:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9728: .4byte 0x000001D9
	.syntax divided
