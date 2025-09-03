	.syntax unified
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x24
	ldr r3, [r0, #0x24]
	cmp r1, r3
	bge _080663C2
	adds r2, r1, #1
	cmp r2, r3
	bge _080663B8
	adds r3, r0, #0
	adds r3, #0x28
_080663A2:
	lsls r1, r1, #1
	adds r1, r3, r1
	lsls r0, r2, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, r2, #0
	adds r2, #1
	ldr r0, [r4]
	cmp r2, r0
	blt _080663A2
_080663B8:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	movs r0, #1
	b _080663C4
_080663C2:
	movs r0, #0
_080663C4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
