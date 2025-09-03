	.syntax unified
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r3, #0
	ldr r2, [r0, #0x24]
	cmp r3, r2
	bge _08066406
	adds r1, r2, #0
	adds r2, r0, #0
	adds r2, #0x28
_080663F4:
	ldrh r0, [r2]
	cmp r0, r4
	bne _080663FE
	movs r0, #1
	b _08066408
_080663FE:
	adds r2, #2
	adds r3, #1
	cmp r3, r1
	blt _080663F4
_08066406:
	movs r0, #0
_08066408:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
