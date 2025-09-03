	.syntax unified
sub_080262F0:
	ldr r0, _08026304
	ldr r1, _08026308
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08026304: .4byte gSomeBlend
_08026308: .4byte 0x0001ED10
	.syntax divided
