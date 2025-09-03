	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, _0804D140
	ldr r3, _0804D144
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0804D17C
	ldrh r2, [r2]
	cmp r2, #1
	beq _0804D138
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0804D148
_0804D138:
	adds r0, r1, #0
	bl sub_0804EF38
	b _0804D17C
	.align 2, 0
_0804D140: .4byte gSomeBlend
_0804D144: .4byte 0x000044F2
_0804D148:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0804D17C
	movs r0, #0xd3
	bl play_sound
	bl sub_0804BFCC
	adds r0, r4, #0
	adds r0, #0x50
	ldr r2, _0804D184
	adds r1, r4, r2
	movs r2, #1
	movs r3, #1
	bl sub_080012BC
	bl sub_08046D90
	ldr r3, _0804D188
	adds r2, r4, r3
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0804D17C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804D184: .4byte 0x0000424C
_0804D188: .4byte 0x000041E6
	.syntax divided
