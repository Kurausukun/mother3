	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r6, _080240B8
	ldr r1, _080240BC
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _08024126
	ldr r2, _080240C0
	ldr r0, _080240C4
	adds r3, r2, r0
	ldrb r0, [r3]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3]
	ldrh r1, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	ldrh r3, [r2, #8]
	orrs r0, r1
	strh r0, [r2, #8]
	ldrb r1, [r6, #1]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080240CC
	ldrb r0, [r6]
	cmp r0, #1
	beq _08024126
	ldr r1, _080240C8
	adds r0, r6, r1
	movs r1, #0x90
	movs r2, #0x60
	bl sub_080195B0
	b _08024126
	.align 2, 0
_080240B8: .4byte gGame
_080240BC: .4byte 0x00009D14
_080240C0: .4byte gSomeBlend
_080240C4: .4byte 0x0001ED10
_080240C8: .4byte 0x00005964
_080240CC:
	ldr r2, _08024130
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _08024126
	ldr r3, _08024134
	adds r0, r6, r3
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08024116
	mov r5, sp
	mov r0, sp
	bl sub_0801A530
	ldr r1, _08024138
	adds r0, r6, r1
	ldrb r0, [r0]
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_08036C00
	ldrh r1, [r4]
	mov r0, sp
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r2, _0802413C
	adds r0, r6, r2
	strh r1, [r0]
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	subs r0, #0x10
	ldr r3, _08024140
	adds r1, r6, r3
	strh r0, [r1]
_08024116:
	ldr r1, _0802413C
	adds r0, r6, r1
	ldr r2, _08024144
	adds r1, r6, r2
	ldrh r1, [r1]
	movs r2, #1
	bl sub_08019408
_08024126:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024130: .4byte 0x0000595B
_08024134: .4byte 0x0000598C
_08024138: .4byte 0x0000595D
_0802413C: .4byte 0x00005964
_08024140: .4byte 0x00005966
_08024144: .4byte 0x00005968
	.syntax divided
