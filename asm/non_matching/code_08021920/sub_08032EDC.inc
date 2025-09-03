	.syntax unified
	push {r4, r5, lr}
	ldr r4, _08032F40
	ldr r0, _08032F44
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xfe
	bl sub_08036DF4
	ldr r2, _08032F48
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #0xa6
	bl sub_08036DF4
	adds r5, r0, #0
	bl sub_08002C4C
	movs r1, #2
	bl sub_08002ABC
	ldr r2, _08032F4C
	adds r1, r4, r2
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08002C4C
	movs r1, #1
	bl sub_08002ABC
	ldr r2, _08032F50
	adds r1, r4, r2
	str r0, [r1]
	ldr r0, _08032F54
	movs r1, #0x21
	bl sub_0800289C
	ldr r1, _08032F58
	adds r4, r4, r1
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032F40: .4byte gSomeBlend
_08032F44: .4byte 0x000121B6
_08032F48: .4byte 0x000121A0
_08032F4C: .4byte 0x000121A8
_08032F50: .4byte 0x000121AC
_08032F54: .4byte gUnknown_09AF3790
_08032F58: .4byte 0x000121A4
	.syntax divided
