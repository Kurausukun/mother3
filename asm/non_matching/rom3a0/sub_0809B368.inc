	.syntax unified
sub_0809B368:
	push {r4, lr}
	adds r4, r0, #0
	b _0809B388
_0809B36E:
	adds r0, r4, #0
	bl battle_98__6Battle
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0809B388
	bl sub_08072A88__Fv
	cmp r0, #0
	bgt _0809B388
	movs r0, #0
	b _0809B392
_0809B388:
	bl sub_08072DFC__Fv
	cmp r0, #0
	bgt _0809B36E
	movs r0, #1
_0809B392:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
