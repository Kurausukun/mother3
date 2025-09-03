	.syntax unified
	push {lr}
	ldr r2, _08056B14
	movs r1, #0xc4
	lsls r1, r1, #6
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08056B0E
	subs r1, #4
	adds r0, r2, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	ldrh r1, [r2, #8]
	strh r0, [r2, #8]
_08056B0E:
	pop {r0}
	bx r0
	.align 2, 0
_08056B14: .4byte gSomeBlend
	.syntax divided
