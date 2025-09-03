	.syntax unified
sub_08016A28:
	push {lr}
	bl sub_08016E44
	ldr r0, _08016A40
	ldr r1, _08016A44
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08016A40: .4byte gSomeBlend
_08016A44: .4byte 0x000121BB
	.syntax divided
