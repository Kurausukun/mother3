	.syntax unified
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r2, #0
	adds r3, #0x24
	movs r4, #0
	ldr r0, [r2, #0x24]
	cmp r4, r0
	bge _08066382
	adds r2, #0x28
	adds r5, r2, #0
_0806634C:
	ldrh r0, [r2]
	cmp r0, r1
	bne _08066378
	adds r1, r4, #1
	ldr r0, [r3]
	cmp r1, r0
	bge _0806636E
	adds r2, r1, #0
	lsls r0, r4, #1
	adds r1, r0, r5
_08066360:
	ldrh r0, [r1, #2]
	strh r0, [r1]
	adds r2, #1
	adds r1, #2
	ldr r0, [r3]
	cmp r2, r0
	blt _08066360
_0806636E:
	ldr r0, [r3]
	subs r0, #1
	str r0, [r3]
	movs r0, #1
	b _08066384
_08066378:
	adds r2, #2
	adds r4, #1
	ldr r0, [r3]
	cmp r4, r0
	blt _0806634C
_08066382:
	movs r0, #0
_08066384:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	.syntax divided
