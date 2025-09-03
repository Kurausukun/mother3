	.syntax unified
	push {r4, lr}
	adds r4, r1, #0
	movs r3, #0
	ldr r2, [r0, #0x24]
	cmp r3, r2
	bge _080876C8
	adds r1, r2, #0
	adds r2, r0, #0
	adds r2, #0x28
_080876B6:
	ldr r0, [r2]
	cmp r0, r4
	bne _080876C0
	movs r0, #1
	b _080876CA
_080876C0:
	adds r2, #4
	adds r3, #1
	cmp r3, r1
	blt _080876B6
_080876C8:
	movs r0, #0
_080876CA:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
