	.syntax unified
	push {r4, lr}
	ldr r0, _08009404
	ldrb r0, [r0]
	cmp r0, #4
	beq _0800941C
	cmp r0, #4
	bgt _08009408
	cmp r0, #3
	beq _0800940E
	b _0800942E
	.align 2, 0
_08009404: .4byte gGame
_08009408:
	cmp r0, #5
	beq _08009428
	b _0800942E
_0800940E:
	ldr r0, _08009418
	bl sub_0800946C
	b _0800942E
	.align 2, 0
_08009418: .4byte gUnknown_0201B7A0
_0800941C:
	ldr r0, _08009424
	bl sub_08009568
	b _0800942E
	.align 2, 0
_08009424: .4byte gUnknown_0201B7A0
_08009428:
	ldr r0, _08009458
	bl sub_080096EC
_0800942E:
	ldr r4, _0800945C
	ldr r1, _08009460
	adds r0, r4, r1
	ldrb r0, [r0]
	ldr r2, _08009464
	adds r1, r4, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08009452
	ldr r0, _08009468
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08009828
	adds r0, r4, #0
	bl sub_08009A48
_08009452:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009458: .4byte gUnknown_0201B7A0
_0800945C: .4byte gSomeBlend
_08009460: .4byte 0x00011C8C
_08009464: .4byte 0x00011C8B
_08009468: .4byte 0x00005778
	.syntax divided
