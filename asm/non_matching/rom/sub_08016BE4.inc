	.syntax unified
sub_08016BE4:
	push {lr}
	bl sub_08016E64
	ldr r0, _08016BFC
	ldr r1, _08016C00
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08016BFC: .4byte gSomeBlend
_08016C00: .4byte 0x000121BB
	.syntax divided
