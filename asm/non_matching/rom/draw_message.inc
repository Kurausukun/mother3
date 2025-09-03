	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r4, _0800893C
	ldr r1, _08008940
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08008944
	bl sub_080089E0
	b _080089D8
	.align 2, 0
_0800893C: .4byte gSomeBlend
_08008940: .4byte 0x0000566C
_08008944:
	ldr r0, _080089B8
	ldrb r0, [r0]
	cmp r0, #5
	bgt _08008950
	cmp r0, #3
	bge _080089D8
_08008950:
	mov r2, sp
	movs r3, #0
	ldr r0, _080089BC
	adds r6, r4, r0
	ldrb r1, [r6]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #4
	bne _08008964
	movs r3, #1
_08008964:
	strh r3, [r2]
	ldr r1, _080089C0
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0800897C
	ldr r1, _080089C4
	adds r0, r4, r1
	bl sub_08008F0C
_0800897C:
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800898E
	ldr r1, _080089C4
	adds r0, r4, r1
	movs r1, #2
	bl sub_0800A0A4
_0800898E:
	ldr r1, _080089C8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080089A8
	ldr r0, _080089C4
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_080089F0
	adds r0, r4, #0
	bl sub_08008BAC
_080089A8:
	ldrb r1, [r6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080089CC
	bl sub_0800A07C
	b _080089D8
	.align 2, 0
_080089B8: .4byte gGame
_080089BC: .4byte 0x00011C92
_080089C0: .4byte 0x000121B6
_080089C4: .4byte 0x00005778
_080089C8: .4byte 0x00011C8B
_080089CC:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080089D8
	bl sub_0800A090
_080089D8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.syntax divided
