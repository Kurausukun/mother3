	.syntax unified
sub_080A69E8:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _080A69FC
	ldr r0, _080A69F8
	b _080A6A1C
	.align 2, 0
_080A69F8: .4byte 0x0000026D
_080A69FC:
	bl sub_08072DFC__Fv
	cmp r0, #2
	bgt _080A6A0A
	movs r0, #0x9b
	lsls r0, r0, #2
	b _080A6A1C
_080A6A0A:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080A6A28
	cmp r0, #0x37
	bge _080A6A1A
	subs r1, #0xf
_080A6A1A:
	adds r0, r1, #0
_080A6A1C:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A6A28: .4byte 0x000001B9
	.syntax divided
