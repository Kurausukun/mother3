	.syntax unified
	push {r4, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _08070146
	cmp r1, #0
	bgt _08070130
	ldr r0, [r2, #0x24]
	ldr r0, [r0]
	bl m4aMPlayContinue
	b _08070146
_08070130:
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	adds r0, r2, #0
	bl sub_080702A8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl m4aMPlayFadeIn
_08070146:
	pop {r4}
	pop {r0}
	bx r0
	.syntax divided
