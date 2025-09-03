	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08020134
	ldr r1, _08020138
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802012A
	ldr r2, _0802013C
	adds r0, r5, r2
	ldr r1, _08020140
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001B18
	ldrb r4, [r5]
	ldr r0, _08020144
	ldrh r1, [r0]
	movs r1, #0
	strh r1, [r0]
	ldrh r2, [r0, #2]
	strh r1, [r0, #2]
	ldrh r2, [r0, #4]
	strh r1, [r0, #4]
	ldr r2, _08020148
	adds r1, r5, r2
	ldrh r1, [r1]
	ldrh r2, [r0]
	strh r1, [r0]
	ldr r2, _0802014C
	adds r1, r5, r2
	ldrh r1, [r1]
	ldrh r2, [r0, #2]
	strh r1, [r0, #2]
	ldr r2, _08020150
	adds r1, r5, r2
	ldrh r1, [r1]
	ldrh r2, [r0, #4]
	strh r1, [r0, #4]
	movs r0, #6
	strb r0, [r5]
	adds r0, r6, #0
	movs r1, #0
	bl scriptstack_peek
	ldr r2, _08020154
	adds r1, r5, r2
	strh r0, [r1]
	bl sub_08013D38
	strb r4, [r5]
_0802012A:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08020134: .4byte gGame
_08020138: .4byte 0x0000595B
_0802013C: .4byte 0x00009488
_08020140: .4byte gUnknown_03005314
_08020144: .4byte gSomeBlend
_08020148: .4byte 0x0000679C
_0802014C: .4byte 0x0000679E
_08020150: .4byte 0x000067A0
_08020154: .4byte 0x00005960
	.syntax divided
