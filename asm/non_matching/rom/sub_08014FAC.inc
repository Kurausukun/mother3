	.syntax unified
sub_08014FAC:
	push {lr}
	bl sub_080030A4
	ldr r1, _08014FD0
	movs r2, #7
	ands r0, r2
	ldr r2, _08014FD4
	adds r1, r1, r2
	strb r0, [r1]
	ldr r1, _08014FD8
	ldr r0, _08014FDC
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08014FD0: .4byte gGame
_08014FD4: .4byte 0x0000595E
_08014FD8: .4byte gSomeBlend
_08014FDC: .4byte 0x000121BA
	.syntax divided
