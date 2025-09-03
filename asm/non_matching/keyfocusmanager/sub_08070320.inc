	.syntax unified
sub_08070320:
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _08070352
	adds r1, r2, #0
	adds r1, #0x30
	strb r3, [r1]
	ldr r0, [r2, #0x24]
	ldr r4, [r0]
	ldr r5, _08070358
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	movs r1, #0x64
	bl Div
	adds r2, r0, #0
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl m4aMPlayPanpotControl
_08070352:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08070358: .4byte 0x0000FFFF
	.syntax divided
