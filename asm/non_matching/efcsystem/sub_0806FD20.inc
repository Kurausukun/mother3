	.syntax unified
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r0, #0x3c]
	movs r2, #0
	cmp r2, r5
	bge _0806FD52
_0806FD2C:
	adds r3, r1, #0
	adds r3, #0x10
	ldrh r0, [r1, #0xa]
	adds r4, r2, #1
	cmp r0, #0
	beq _0806FD44
	adds r2, r0, #0
_0806FD3A:
	ldrh r0, [r3]
	adds r3, r3, r0
	subs r2, #1
	cmp r2, #0
	bne _0806FD3A
_0806FD44:
	subs r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r1, r0
	adds r2, r4, #0
	cmp r2, r5
	blt _0806FD2C
_0806FD52:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
