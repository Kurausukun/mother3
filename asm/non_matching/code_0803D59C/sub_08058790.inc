	.syntax unified
sub_08058790:
	push {r4, r5, r6, lr}
	ldr r6, _080587F0
	ldr r0, [r6, #8]
	adds r0, #1
	str r0, [r6, #8]
	ldr r4, _080587F4
	ldr r0, _080587F8
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080587FC
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #0
	bl sub_08058804
	bl sub_08058810
	adds r5, r4, #0
	adds r5, #0x50
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08058884
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08058A48
	ldrb r1, [r6, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080587DE
	movs r0, #1
	bl sub_08058804
_080587DE:
	ldr r0, _08058800
	ldrh r0, [r0]
	cmp r0, #0
	bne _080587EA
	bl snd_main
_080587EA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080587F0: .4byte gUnknown_02015DC0
_080587F4: .4byte gSomeBlend
_080587F8: .4byte 0x00002D0C
_080587FC: .4byte 0x00002D10
_08058800: .4byte gUnknown_03004B00
	.syntax divided
