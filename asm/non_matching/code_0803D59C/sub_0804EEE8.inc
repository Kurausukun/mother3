	.syntax unified
	push {r4, lr}
	ldrh r0, [r0, #4]
	lsls r0, r0, #2
	ldr r4, _0804EF2C
	adds r0, r0, r4
	ldr r1, _0804EF30
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #1
	bl set_event_flag
	movs r0, #0xd2
	bl play_sound
	bl sub_0804C004
	ldr r1, _0804EF34
	adds r0, r4, r1
	movs r1, #0xca
	lsls r1, r1, #3
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08046D90
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804EF2C: .4byte gUnknown_02019C24
_0804EF30: .4byte gUnknown_080C70A8
_0804EF34: .4byte 0xFFFFC454
	.syntax divided
