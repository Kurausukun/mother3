	.syntax unified
sub_080702EC:
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _08070314
	str r1, [r2, #0x2c]
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	ldr r5, _0807031C
	lsls r0, r1, #8
	movs r1, #0x64
	bl Div
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayVolumeControl
_08070314:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0807031C: .4byte 0x0000FFFF
	.syntax divided
