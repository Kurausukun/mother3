	.syntax unified
	push {lr}
	ldr r3, _080379A4
	ldr r0, _080379A8
	adds r2, r3, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	strb r0, [r2]
	ldr r1, _080379AC
	adds r0, r3, r1
	movs r2, #0
	strb r2, [r0]
	ldr r0, _080379B0
	adds r1, r3, r0
	movs r0, #2
	strb r0, [r1]
	ldr r1, _080379B4
	adds r0, r3, r1
	strh r2, [r0]
	ldr r0, _080379B8
	ldrb r0, [r0]
	cmp r0, #7
	beq _0803799E
	ldr r1, _080379BC
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
_0803799E:
	pop {r0}
	bx r0
	.align 2, 0
_080379A4: .4byte gSomeBlend
_080379A8: .4byte 0x000035BA
_080379AC: .4byte 0x00003530
_080379B0: .4byte 0x00003531
_080379B4: .4byte 0x000035B6
_080379B8: .4byte gGame
_080379BC: .4byte 0x000121B8
	.syntax divided
