	.syntax unified
sub_08029054:
	push {lr}
	ldr r2, _08029070
	adds r1, r0, r2
	movs r2, #0
	strb r2, [r1]
	ldr r3, _08029074
	adds r1, r0, r3
	strb r2, [r1]
	bl sub_08029078
	bl sub_0802B4D8
	pop {r0}
	bx r0
	.align 2, 0
_08029070: .4byte 0x00000681
_08029074: .4byte 0x00000682
	.syntax divided
