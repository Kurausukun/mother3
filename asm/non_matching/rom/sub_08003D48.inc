	.syntax unified
	push {lr}
	lsls r0, r0, #0x10
	ldr r1, _08003D60
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_08003E5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_08003D60: .4byte gUnknown_02015EF0
	.syntax divided
