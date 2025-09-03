	.syntax unified
	push {r4, lr}
	ldr r2, _08037B34
	ldr r0, _08037B38
	ldr r3, _08037B3C
	adds r1, r0, r3
	ldrb r1, [r1]
	movs r4, #0
	strb r1, [r2]
	ldr r1, _08037B40
	adds r3, r0, r1
	ldrb r2, [r3]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	ldr r2, _08037B44
	adds r1, r0, r2
	strb r4, [r1]
	ldr r3, _08037B48
	adds r2, r0, r3
	movs r1, #2
	strb r1, [r2]
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_080012BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037B34: .4byte gGame
_08037B38: .4byte gSomeBlend
_08037B3C: .4byte 0x00003532
_08037B40: .4byte 0x000035BA
_08037B44: .4byte 0x00003530
_08037B48: .4byte 0x00003531
	.syntax divided
