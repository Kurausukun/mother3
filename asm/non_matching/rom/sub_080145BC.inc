	.syntax unified
sub_080145BC:
	push {lr}
	ldr r2, _080145E8
	ldrb r1, [r2, #2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r1, _080145EC
	ldr r0, _080145F0
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #4
	orrs r0, r2
	strb r0, [r1]
	movs r0, #0
	bl sub_08005BB4
	pop {r0}
	bx r0
	.align 2, 0
_080145E8: .4byte gGame
_080145EC: .4byte gSomeBlend
_080145F0: .4byte 0x000121BB
	.syntax divided
