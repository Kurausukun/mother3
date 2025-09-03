	.syntax unified
	push {lr}
	ldr r1, _08033290
	ldr r0, _08033294
	ldr r2, _08033298
	adds r0, r0, r2
	ldrh r0, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08033290: .4byte gUnknown_03004C15
_08033294: .4byte gSomeBlend
_08033298: .4byte 0x000121B0
	.syntax divided
