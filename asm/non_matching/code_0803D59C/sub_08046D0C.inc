	.syntax unified
	push {r4, lr}
	ldr r4, _08046D28
	ldrh r0, [r4, #0x10]
	bl sub_08050E64
	adds r1, r0, #0
	ldr r0, [r4, #0x1c]
	ldrh r2, [r4, #0x10]
	lsls r2, r2, #3
	bl sub_08001B18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08046D28: .4byte gUnknown_02005090
	.syntax divided
