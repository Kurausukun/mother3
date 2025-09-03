	.syntax unified
	push {lr}
	bl sub_08016E44
	ldr r0, _08016A78
	ldr r1, _08016A7C
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08016A78: .4byte gSomeBlend
_08016A7C: .4byte 0x000121BB
	.syntax divided
