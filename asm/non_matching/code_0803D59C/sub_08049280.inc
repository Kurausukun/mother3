	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	subs r5, r4, r0
	adds r0, r5, #0
	movs r1, #4
	bl Divide
	adds r5, r0, #0
	movs r1, #0x22
	bl sub_08002FD4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	strh r1, [r6]
	adds r0, r5, #0
	movs r1, #0x22
	bl Divide
	ldr r1, _080492C8
	ldr r2, _080492CC
	adds r1, r1, r2
	ldrb r1, [r1]
	muls r1, r0, r1
	strh r1, [r6, #2]
	ldr r0, [r4]
	lsls r0, r0, #0xd
	cmp r0, #0
	bge _080492C2
	adds r0, r1, #0
	adds r0, #8
	strh r0, [r6, #2]
_080492C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080492C8: .4byte gSomeBlend
_080492CC: .4byte 0x0000C5A1
	.syntax divided
