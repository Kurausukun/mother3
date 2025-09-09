	.syntax unified
sub_080AD2C8:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08072DFC__Fv
	cmp r0, #1
	bgt _080AD2F4
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080AD2F4
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	movs r1, #0x81
	cmp r0, #0x32
	bge _080AD2F0
	movs r1, #0x67
_080AD2F0:
	adds r0, r1, #0
	b _080AD2F6
_080AD2F4:
	movs r0, #0x67
_080AD2F6:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
