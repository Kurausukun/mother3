	.syntax unified
	push {lr}
	ldr r0, _08016CF0
	ldr r1, _08016CF4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _08016CEC
	ldr r0, _08016CF8
	ldr r2, _08016CFC
	adds r1, r0, r2
	ldrb r2, [r1]
	strb r3, [r1]
	ldr r2, _08016D00
	adds r1, r0, r2
	ldrb r2, [r1]
	strb r3, [r1]
	ldr r1, _08016D04
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r3, [r0]
_08016CEC:
	pop {r0}
	bx r0
	.align 2, 0
_08016CF0: .4byte gGame
_08016CF4: .4byte 0x0000598C
_08016CF8: .4byte gSomeBlend
_08016CFC: .4byte 0x00002C9C
_08016D00: .4byte 0x00002C9D
_08016D04: .4byte 0x00002C9E
	.syntax divided
