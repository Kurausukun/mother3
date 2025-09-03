	.syntax unified
sub_08016D08:
	push {lr}
	ldr r0, _08016D3C
	ldr r1, _08016D40
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _08016D38
	ldr r0, _08016D44
	ldr r2, _08016D48
	adds r1, r0, r2
	ldrb r2, [r1]
	strb r3, [r1]
	ldr r2, _08016D4C
	adds r1, r0, r2
	ldrb r2, [r1]
	strb r3, [r1]
	ldr r1, _08016D50
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r3, [r0]
_08016D38:
	pop {r0}
	bx r0
	.align 2, 0
_08016D3C: .4byte gGame
_08016D40: .4byte 0x0000598C
_08016D44: .4byte gSomeBlend
_08016D48: .4byte 0x00002C9C
_08016D4C: .4byte 0x00002C9D
_08016D50: .4byte 0x00002C9E
	.syntax divided
