	.syntax unified
sub_08060DA0:
	push {lr}
	cmp r1, #0
	blt _08060DB6
	ldr r2, [r0, #0x24]
	ldr r0, [r2, #8]
	ldr r3, _08060DBC
	adds r0, r0, r1
	cmp r0, r3
	bls _08060DB4
	adds r0, r3, #0
_08060DB4:
	str r0, [r2, #8]
_08060DB6:
	pop {r0}
	bx r0
	.align 2, 0
_08060DBC: .4byte 0x000F423F
	.syntax divided
