	.syntax unified
sub_08060DC0:
	push {lr}
	cmp r1, #0
	blt _08060DD6
	ldr r2, [r0, #0x24]
	ldr r0, [r2, #0xc]
	ldr r3, _08060DDC
	adds r0, r0, r1
	cmp r0, r3
	bls _08060DD4
	adds r0, r3, #0
_08060DD4:
	str r0, [r2, #0xc]
_08060DD6:
	pop {r0}
	bx r0
	.align 2, 0
_08060DDC: .4byte 0x000F423F
	.syntax divided
