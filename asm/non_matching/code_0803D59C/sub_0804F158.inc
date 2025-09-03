	.syntax unified
	push {lr}
	ldrh r0, [r0, #4]
	cmp r0, #0
	blt _0804F184
	cmp r0, #1
	ble _0804F16A
	cmp r0, #2
	beq _0804F176
	b _0804F184
_0804F16A:
	movs r0, #0xd2
	bl play_sound
	bl sub_0804C330
	b _0804F184
_0804F176:
	movs r0, #0xd3
	bl play_sound
	movs r0, #0
	bl sub_080506CC
	b _0804F18C
_0804F184:
	bl sub_08049DC4
	bl sub_08046D90
_0804F18C:
	pop {r0}
	bx r0
	.syntax divided
