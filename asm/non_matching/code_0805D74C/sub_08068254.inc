	.syntax unified
	push {lr}
	adds r1, r0, #0
	movs r2, #0x88
	lsls r2, r2, #3
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08068278
	ldr r0, _0806827C
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	cmp r0, #9
	bgt _08068278
	strh r0, [r2]
	adds r0, r1, #0
	bl sub_08068408
_08068278:
	pop {r0}
	bx r0
	.align 2, 0
_0806827C: .4byte 0x0000043C
	.syntax divided
