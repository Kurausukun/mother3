	.syntax unified
sub_08037A7C:
	push {r4, lr}
	ldr r0, _08037AD8
	ldr r3, _08037ADC
	ldrb r2, [r3]
	ldr r4, _08037AE0
	adds r1, r0, r4
	strb r2, [r1]
	movs r1, #0xe
	strb r1, [r3]
	ldr r1, _08037AE4
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r4, #0x10
	orrs r1, r4
	strb r1, [r2]
	ldr r1, _08037AE8
	adds r3, r0, r1
	ldrb r1, [r3]
	movs r2, #1
	orrs r1, r2
	movs r2, #0x21
	rsbs r2, r2, #0
	ands r1, r2
	subs r2, #0x20
	ands r1, r2
	strb r1, [r3]
	ldr r1, _08037AEC
	adds r2, r0, r1
	movs r1, #3
	strb r1, [r2]
	ldr r1, _08037AF0
	adds r2, r0, r1
	ldrb r1, [r2]
	orrs r1, r4
	strb r1, [r2]
	adds r0, #0x50
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080012BC
	bl sub_08037B4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037AD8: .4byte gSomeBlend
_08037ADC: .4byte gGame
_08037AE0: .4byte 0x00003532
_08037AE4: .4byte 0x000121BB
_08037AE8: .4byte 0x000035BA
_08037AEC: .4byte 0x00003530
_08037AF0: .4byte 0x000121B9
	.syntax divided
