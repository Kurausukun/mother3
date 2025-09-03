	.syntax unified
sub_080483E0:
	push {r4, r5, lr}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r1, #0
	ldr r0, _080483FC
	cmp r1, r0
	beq _08048430
	cmp r1, r0
	bgt _08048400
	subs r0, #1
	cmp r1, r0
	beq _08048414
	b _08048494
	.align 2, 0
_080483FC: .4byte 0x0000FFA1
_08048400:
	ldr r0, _08048410
	cmp r2, r0
	beq _0804844C
	adds r0, #1
	cmp r2, r0
	beq _08048470
	b _08048494
	.align 2, 0
_08048410: .4byte 0x0000FFA2
_08048414:
	ldr r0, _08048428
	ldr r1, _0804842C
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08054FE0
	adds r4, r0, #2
	movs r0, #6
	b _0804845E
	.align 2, 0
_08048428: .4byte gSomeBlend
_0804842C: .4byte 0x000044EC
_08048430:
	ldr r0, _08048444
	ldr r2, _08048448
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r0, #2
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #2
	b _0804845E
	.align 2, 0
_08048444: .4byte gSomeBlend
_08048448: .4byte 0x000044EE
_0804844C:
	ldr r0, _08048468
	ldr r1, _0804846C
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #8
	bl get_misctext_msg
	adds r4, r0, #0
	movs r0, #8
_0804845E:
	bl get_misctext_len
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08048498
	.align 2, 0
_08048468: .4byte gSomeBlend
_0804846C: .4byte 0x000044EE
_08048470:
	ldr r0, _08048488
	ldr r2, _0804848C
	adds r1, r0, r2
	ldrh r1, [r1]
	ldr r2, _08048490
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r5, #0
	movs r3, #0xa
	bl sub_08048550
	b _080484A0
	.align 2, 0
_08048488: .4byte gSomeBlend
_0804848C: .4byte 0x000044F0
_08048490: .4byte 0x0000C59A
_08048494:
	adds r0, r5, #0
	b _080484A0
_08048498:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080484FC
_080484A0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
