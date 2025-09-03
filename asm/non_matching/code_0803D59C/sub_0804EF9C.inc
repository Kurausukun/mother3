	.syntax unified
sub_0804EF9C:
	push {lr}
	ldrh r0, [r0, #4]
	cmp r0, #0
	blt _0804EFC8
	cmp r0, #1
	ble _0804EFAE
	cmp r0, #2
	beq _0804EFBA
	b _0804EFC8
_0804EFAE:
	movs r0, #0xd2
	bl play_sound
	bl sub_0804C228
	b _0804EFC8
_0804EFBA:
	movs r0, #0xd3
	bl play_sound
	movs r0, #0
	bl sub_080506CC
	b _0804EFD0
_0804EFC8:
	bl sub_08049DC4
	bl sub_08046D90
_0804EFD0:
	pop {r0}
	bx r0
	.syntax divided
