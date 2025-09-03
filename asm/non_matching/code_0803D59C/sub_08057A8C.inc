	.syntax unified
	push {lr}
	sub sp, #0x10
	adds r3, r0, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #3
	beq _08057ACC
	cmp r0, #3
	bgt _08057AA4
	cmp r0, #0
	beq _08057AAE
	b _08057B02
_08057AA4:
	cmp r0, #6
	beq _08057AE0
	cmp r0, #9
	beq _08057AF4
	b _08057B02
_08057AAE:
	ldr r2, _08057AC4
	ldr r0, _08057AC8
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	b _08057B02
	.align 2, 0
_08057AC4: .4byte gSomeBlend
_08057AC8: .4byte 0x00002CB0
_08057ACC:
	ldr r0, _08057AD8
	ldr r1, _08057ADC
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #8
	b _08057AFE
	.align 2, 0
_08057AD8: .4byte gSomeBlend
_08057ADC: .4byte 0x00002CB0
_08057AE0:
	ldr r0, _08057AEC
	ldr r1, _08057AF0
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x10
	b _08057AFE
	.align 2, 0
_08057AEC: .4byte gSomeBlend
_08057AF0: .4byte 0x00002CB0
_08057AF4:
	ldr r0, _08057B20
	ldr r1, _08057B24
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
_08057AFE:
	orrs r1, r2
	strb r1, [r0]
_08057B02:
	ldr r1, _08057B28
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r3, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_080031F0
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_08057B20: .4byte gSomeBlend
_08057B24: .4byte 0x00002CB0
_08057B28: .4byte gUnknown_02018D24
	.syntax divided
