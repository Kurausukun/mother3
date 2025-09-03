	.syntax unified
sub_080379C0:
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	strh r0, [r1]
	ldr r0, _080379E4
	ldr r1, _080379E8
	adds r4, r0, r1
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080379EC
	movs r0, #0xd9
	bl play_sound
	bl sub_0803793C
	b _08037A04
	.align 2, 0
_080379E4: .4byte gSomeBlend
_080379E8: .4byte 0x000035BA
_080379EC:
	movs r0, #0xd8
	bl play_sound
	mov r0, sp
	ldrh r0, [r0]
	bl sub_0803788C
	ldrb r1, [r4]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_08037A04:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
