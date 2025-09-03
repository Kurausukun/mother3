	.syntax unified
sub_0804EF38:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xd2
	bl play_sound
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	cmp r0, r1
	blo _0804EF5E
	movs r0, #0xd3
	bl play_sound
	bl sub_0804BFCC
	b _0804EF66
_0804EF5E:
	ldrh r0, [r4, #0xa]
	ldrh r1, [r4, #4]
	bl sub_08048074
_0804EF66:
	ldr r4, _0804EF90
	ldr r0, _0804EF94
	adds r1, r4, r0
	adds r0, r4, #0
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08046D90
	ldr r1, _0804EF98
	adds r4, r4, r1
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804EF90: .4byte gUnknown_02016078
_0804EF94: .4byte 0x000041FC
_0804EF98: .4byte 0x00004196
	.syntax divided
