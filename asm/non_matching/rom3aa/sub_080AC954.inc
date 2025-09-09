	.syntax unified
sub_080AC954:
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
	bgt _080AC978
	ldr r0, _080AC974
	b _080AC996
	.align 2, 0
_080AC974: .4byte 0x0000014D
_080AC978:
	movs r0, #0
	movs r1, #0x63
	bl randS32_
	ldr r1, _080AC9A4
	cmp r0, #0x28
	blt _080AC994
	adds r1, #1
	cmp r0, #0x41
	blt _080AC994
	adds r1, #1
	cmp r0, #0x55
	bge _080AC994
	movs r1, #0xbe
_080AC994:
	adds r0, r1, #0
_080AC996:
	adds r1, r4, #0
	bl getMonsterSkill
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AC9A4: .4byte 0x0000014B
	.syntax divided
