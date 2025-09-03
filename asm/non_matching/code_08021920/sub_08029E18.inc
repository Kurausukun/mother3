	.syntax unified
sub_08029E18:
	push {r4, r5, lr}
	ldr r0, _08029E44
	ldr r1, _08029E48
	adds r5, r0, r1
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldr r1, _08029E4C
	ldr r2, _08029E50
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029E54
	adds r2, #0x1a
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029EDA
	b _08029E8E
	.align 2, 0
_08029E44: .4byte gGame
_08029E48: .4byte 0x000082B9
_08029E4C: .4byte gSave
_08029E50: .4byte 0x0000071B
_08029E54:
	movs r0, #2
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08029E8E
	adds r0, r2, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #8
	bl sub_08033578
	adds r2, r4, #0
	adds r2, #0x50
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
_08029E8E:
	ldr r0, _08029EE0
	ldr r1, _08029EE4
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029EDA
	movs r0, #4
	bl sub_0802B8C4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08029EDA
	adds r0, r2, #0
	bl get_obj_direct
	adds r4, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	movs r1, #8
	bl sub_08033578
	adds r2, r4, #0
	adds r2, #0x50
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _08029EE8
	ldr r2, _08029EEC
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r2, #1
	orrs r0, r2
	strb r0, [r1]
_08029EDA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029EE0: .4byte gSave
_08029EE4: .4byte 0x00000735
_08029EE8: .4byte gGame
_08029EEC: .4byte 0x000082B9
	.syntax divided
