	.syntax unified
sub_08066410:
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	adds r5, r0, #0
	adds r5, #0x24
	movs r3, #0
	ldr r2, [r0, #0x24]
	cmp r3, r2
	bge _0806643A
	adds r1, r2, #0
	adds r2, r0, #0
	adds r2, #0x28
_08066428:
	ldrh r0, [r2]
	cmp r0, r4
	bne _08066432
	adds r0, r3, #0
	b _0806643C
_08066432:
	adds r2, #2
	adds r3, #1
	cmp r3, r1
	blt _08066428
_0806643A:
	ldr r0, [r5]
_0806643C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
