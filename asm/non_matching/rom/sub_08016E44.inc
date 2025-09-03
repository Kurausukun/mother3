	.syntax unified
	ldr r2, _08016E5C
	ldrh r0, [r2, #0x22]
	movs r0, #0
	strh r0, [r2, #0x22]
	ldr r0, _08016E60
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08016E5C: .4byte gSomeBlend
_08016E60: .4byte 0x000121BB
	.syntax divided
