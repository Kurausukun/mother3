	.syntax unified
	push {lr}
	movs r1, #0
	bl scriptstack_peek
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r3, #0
	cmp r3, #0x10
	bls _080209A0
	movs r0, #0x10
_080209A0:
	adds r3, r0, #0
	ldr r1, _080209BC
	ldr r0, _080209C0
	ldr r2, _080209C4
	adds r0, r0, r2
	ldrh r2, [r0]
	strh r3, [r0]
	ldrh r0, [r0]
	ldrh r2, [r1, #4]
	strh r0, [r1, #4]
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080209BC: .4byte gSomeBlend
_080209C0: .4byte gGame
_080209C4: .4byte 0x000067A0
	.syntax divided
