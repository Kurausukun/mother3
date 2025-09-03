	.syntax unified
sub_0801059C:
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0801A5EC
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_0801A604
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080105F0
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _080105CC
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r0, #0xf0
	cmp r0, r5
	blt _080105CC
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, #0xf0
	strh r0, [r4]
_080105CC:
	ldr r0, _080105F0
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _080105E8
	movs r2, #2
	ldrsh r0, [r4, r2]
	adds r0, #0xa0
	cmp r0, r1
	blt _080105E8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #0xa0
	strh r0, [r4, #2]
_080105E8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080105F0: .4byte gGame
	.syntax divided
