	.syntax unified
sub_08051058:
	push {lr}
	adds r2, r0, #0
	adds r2, #0x30
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805107A
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	adds r1, #2
	ands r0, r1
	strb r0, [r2]
_0805107A:
	pop {r0}
	bx r0
	.align 2, 0
	.syntax divided
