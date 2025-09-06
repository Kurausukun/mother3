	.syntax unified
isPlaying__5Sound:
	push {r4, lr}
	ldrh r4, [r0, #0x20]
	cmp r4, #0
	beq _080701DA
	ldr r2, _080701E0
	ldr r3, [r0, #0x24]
	ldr r1, _080701E4
	subs r1, r3, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, r4
	beq _080701E8
_080701DA:
	movs r0, #0
	b _080701F2
	.align 2, 0
_080701E0: .4byte gUnknown_02001F28
_080701E4: .4byte gMPlayTable
_080701E8:
	ldr r0, [r3]
	ldr r0, [r0, #4]
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
_080701F2:
	pop {r4}
	pop {r1}
	bx r1
	.syntax divided
