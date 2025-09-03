	.syntax unified
	push {lr}
	ldr r0, _08058D8C
	ldr r1, _08058D90
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bl sub_08058A80
	pop {r0}
	bx r0
	.align 2, 0
_08058D8C: .4byte gSomeBlend
_08058D90: .4byte 0x0000328C
	.syntax divided
