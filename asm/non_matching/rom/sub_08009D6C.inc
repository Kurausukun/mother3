	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _08009D8C
	ldr r1, _08009D90
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	cmp r0, #1
	beq _08009DAC
	cmp r0, #1
	bgt _08009D94
	cmp r0, #0
	beq _08009D9A
	b _08009DD4
	.align 2, 0
_08009D8C: .4byte gSomeBlend
_08009D90: .4byte 0x00011C92
_08009D94:
	cmp r0, #2
	beq _08009DC4
	b _08009DD4
_08009D9A:
	ldr r0, _08009DA8
	adds r2, r2, r0
	movs r0, #0x16
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2]
	b _08009DB8
	.align 2, 0
_08009DA8: .4byte 0x00011C84
_08009DAC:
	ldr r1, _08009DC0
	adds r0, r2, r1
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #1
	ldr r0, [r0]
_08009DB8:
	adds r0, r0, r1
	adds r0, #2
	b _08009DD6
	.align 2, 0
_08009DC0: .4byte 0x00011C84
_08009DC4:
	ldr r1, _08009DD0
	adds r0, r2, r1
	lsls r1, r3, #5
	ldr r0, [r0]
	adds r0, r0, r1
	b _08009DD6
	.align 2, 0
_08009DD0: .4byte 0x00011C84
_08009DD4:
	movs r0, #0
_08009DD6:
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
