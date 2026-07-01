	.syntax unified
isResisted__16MonsterPkFreezeGP4Unit:
	push {lr}
	bl sub_08072DFC__Fv
	movs r1, #0
	cmp r0, #2
	ble _080B1DB6
	movs r1, #1
_080B1DB6:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.syntax divided
