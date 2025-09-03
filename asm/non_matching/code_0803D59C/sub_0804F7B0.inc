	.syntax unified
sub_0804F7B0:
	push {lr}
	ldr r1, _0804F7D8
	ldr r0, _0804F7DC
	adds r3, r1, r0
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldr r2, _0804F7E0
	adds r1, r1, r2
	ldrh r0, [r1]
	cmp r0, #4
	bhi _0804F87A
	lsls r0, r0, #2
	ldr r1, _0804F7E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804F7D8: .4byte gSomeBlend
_0804F7DC: .4byte 0x000041DA
_0804F7E0: .4byte 0x000041CA
_0804F7E4: .4byte _0804F7E8
_0804F7E8:
	.4byte _0804F7FC
	.4byte _0804F810
	.4byte _0804F828
	.4byte _0804F84C
	.4byte _0804F85C
_0804F7FC:
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0804F80C
	bl sub_0804F3EC
	b _0804F87A
	.align 2, 0
_0804F80C: .4byte gUnknown_02019028
_0804F810:
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0804F820
	ldr r1, _0804F824
	adds r0, r0, r1
	movs r1, #0x1c
	b _0804F836
	.align 2, 0
_0804F820: .4byte gSomeBlend
_0804F824: .4byte 0x000041CC
_0804F828:
	movs r0, #0xd2
	bl play_sound
	ldr r0, _0804F844
	ldr r2, _0804F848
	adds r0, r0, r2
	movs r1, #0x1e
_0804F836:
	strh r1, [r0]
	movs r0, #0
	movs r1, #5
	bl sub_08053EEC
	b _0804F87A
	.align 2, 0
_0804F844: .4byte gSomeBlend
_0804F848: .4byte 0x000041CC
_0804F84C:
	movs r0, #0xd2
	bl play_sound
	movs r0, #0
	movs r1, #1
	bl sub_08053EEC
	b _0804F87A
_0804F85C:
	movs r0, #0xd2
	bl play_sound
	movs r0, #0
	movs r1, #2
	bl sub_08053EEC
	ldr r0, _0804F880
	ldr r1, _0804F884
	ldr r2, _0804F888
	adds r1, r1, r2
	ldrb r1, [r1]
	ldr r2, _0804F88C
	adds r0, r0, r2
	strb r1, [r0]
_0804F87A:
	pop {r0}
	bx r0
	.align 2, 0
_0804F880: .4byte gSomeBlend
_0804F884: .4byte gSave
_0804F888: .4byte 0x0000081E
_0804F88C: .4byte 0x000041D3
	.syntax divided
