	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xd2
	bl play_sound
	ldrh r0, [r4, #4]
	bl sub_08053E98
	ldr r1, _0804F1B8
	ldr r3, _0804F1BC
	adds r2, r1, r3
	strb r0, [r2]
	ldr r0, _0804F1C0
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _0804F1C4
	bl sub_0804C35C
	b _0804F1C8
	.align 2, 0
_0804F1B8: .4byte gSomeBlend
_0804F1BC: .4byte 0x00004264
_0804F1C0: .4byte 0x00002F84
_0804F1C4:
	bl sub_0804C398
_0804F1C8:
	bl sub_08049DC4
	bl sub_08046D90
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
