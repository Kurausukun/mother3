	.syntax unified
	push {r4, r5, r6, lr}
	ldr r2, _0805BA0C
	ldrb r1, [r2]
	adds r3, r2, #0
	cmp r1, #1
	beq _0805BA58
	cmp r1, #1
	bgt _0805BA10
	cmp r1, #0
	beq _0805BA14
	b _0805BA8C
	.align 2, 0
_0805BA0C: .4byte gEncounter
_0805BA10:
	cmp r1, #3
	bne _0805BA8C
_0805BA14:
	adds r1, r3, #0
	ldrb r0, [r1, #5]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bls _0805BA26
	movs r0, #1
	strb r0, [r1, #5]
_0805BA26:
	movs r2, #0
	ldrb r0, [r3, #5]
	cmp r2, r0
	bge _0805BA8C
	ldr r6, _0805BA54
	adds r5, r6, #0
	movs r4, #0x81
	lsls r4, r4, #1
	adds r1, r3, #0
	adds r1, #0xc
_0805BA3A:
	ldrh r6, [r1]
	adds r0, r5, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xff
	bls _0805BA48
	strh r4, [r1]
_0805BA48:
	adds r1, #2
	adds r2, #1
	ldrb r0, [r3, #5]
	cmp r2, r0
	blt _0805BA3A
	b _0805BA8C
	.align 2, 0
_0805BA54: .4byte 0xFFFFFF00
_0805BA58:
	ldrh r0, [r2, #0xa]
	cmp r0, #0x41
	bls _0805BA60
	strh r1, [r2, #0xa]
_0805BA60:
	ldr r4, _0805BA94
	ldrh r0, [r2, #0xa]
	lsls r0, r0, #4
	adds r3, r0, r4
	ldrb r0, [r3, #1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0805BA76
	strb r1, [r2, #5]
_0805BA76:
	movs r1, #0
	ldrb r3, [r3, #1]
	cmp r1, r3
	bge _0805BA8C
	ldrh r0, [r2, #0xa]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrb r0, [r0, #1]
_0805BA86:
	adds r1, #1
	cmp r1, r0
	blt _0805BA86
_0805BA8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BA94: .4byte gBattleGroupTable
	.syntax divided
