	.syntax unified
	push {lr}
	ldr r1, _080051CC
	ldrb r2, [r1, #1]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #1]
	ldr r0, _080051D0
	adds r2, r1, r0
	movs r3, #0
	movs r0, #0
	strh r0, [r2]
	ldr r2, _080051D4
	adds r1, r1, r2
	strh r0, [r1]
	ldr r0, _080051D8
	ldr r1, _080051DC
	adds r0, r0, r1
	strb r3, [r0]
	bl sub_08032F8C
	pop {r0}
	bx r0
	.align 2, 0
_080051CC: .4byte gGame
_080051D0: .4byte 0x0000844C
_080051D4: .4byte 0x0000844E
_080051D8: .4byte gSomeBlend
_080051DC: .4byte 0x00011C8B
	.syntax divided
