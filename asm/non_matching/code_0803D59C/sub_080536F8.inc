	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0805374C
	ldrh r0, [r5, #6]
	cmp r3, r0
	blo _0805374C
	ldrh r2, [r2, #2]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0805372A
	ldrh r0, [r4]
	cmp r0, #0
	beq _0805374C
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r4]
	subs r0, #1
	b _08053746
_0805372A:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0805374C
	ldrh r1, [r4]
	ldrh r0, [r5, #6]
	subs r0, r3, r0
	cmp r1, r0
	bge _0805374C
	movs r0, #0xd0
	bl play_sound
	ldrh r0, [r4]
	adds r0, #1
_08053746:
	strh r0, [r4]
	movs r0, #2
	b _0805374E
_0805374C:
	movs r0, #0
_0805374E:
	pop {r4, r5}
	pop {r1}
	bx r1
	.syntax divided
