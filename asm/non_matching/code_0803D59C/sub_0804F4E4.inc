	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0804F4F4
	cmp r0, #1
	beq _0804F504
	b _0804F514
_0804F4F4:
	movs r0, #0xdc
	bl play_sound
	movs r0, #1
	strh r0, [r4, #0xa]
	bl sub_08054108
	b _0804F514
_0804F504:
	movs r0, #0xdd
	bl play_sound
	movs r0, #2
	strh r0, [r4, #0xa]
	movs r0, #5
	bl sub_080506CC
_0804F514:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
