	.syntax unified
sub_080505D8:
	push {lr}
	ldr r1, _080505F0
	ldr r2, _080505F4
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _080505FC
	ldr r2, _080505F8
	adds r0, r1, r2
	ldr r0, [r0]
	movs r1, #0x10
	b _08050604
	.align 2, 0
_080505F0: .4byte gSomeBlend
_080505F4: .4byte 0x00004A30
_080505F8: .4byte 0x00004DF4
_080505FC:
	ldr r2, _08050618
	adds r0, r1, r2
	ldr r0, [r0]
	movs r1, #9
_08050604:
	bl sub_08048748
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0805061C
	bl sub_0804C68C
	b _08050622
	.align 2, 0
_08050618: .4byte 0x00004DF4
_0805061C:
	movs r0, #0xd6
	bl play_sound
_08050622:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
