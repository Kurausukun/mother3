	.syntax unified
	push {r4, lr}
	movs r2, #0
	ldr r4, _08003EC4
	ldr r3, _08003EC8
_08003EA8:
	lsls r0, r2, #1
	adds r1, r0, r4
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #9
	bls _08003EA8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003EC4: .4byte gUnknown_02015F08
_08003EC8: .4byte gUnknown_02015EF0
	.syntax divided
